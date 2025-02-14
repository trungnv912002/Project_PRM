USE [master]
GO
/****** Object:  Database [Assigment2]    Script Date: 9/21/2024 7:54:11 PM ******/
CREATE DATABASE [Assigment2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Assigment2', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Assigment2.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Assigment2_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Assigment2_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Assigment2] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Assigment2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Assigment2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Assigment2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Assigment2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Assigment2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Assigment2] SET ARITHABORT OFF 
GO
ALTER DATABASE [Assigment2] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Assigment2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Assigment2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Assigment2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Assigment2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Assigment2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Assigment2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Assigment2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Assigment2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Assigment2] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Assigment2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Assigment2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Assigment2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Assigment2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Assigment2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Assigment2] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [Assigment2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Assigment2] SET RECOVERY FULL 
GO
ALTER DATABASE [Assigment2] SET  MULTI_USER 
GO
ALTER DATABASE [Assigment2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Assigment2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Assigment2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Assigment2] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Assigment2] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Assigment2] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Assigment2', N'ON'
GO
ALTER DATABASE [Assigment2] SET QUERY_STORE = OFF
GO
USE [Assigment2]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 9/21/2024 7:54:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 9/21/2024 7:54:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[AccountID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[FullName] [nvarchar](max) NOT NULL,
	[Type] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Accounts] PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CartItems]    Script Date: 9/21/2024 7:54:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CartItems](
	[CartItemID] [int] IDENTITY(1,1) NOT NULL,
	[CartID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_CartItems] PRIMARY KEY CLUSTERED 
(
	[CartItemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Carts]    Script Date: 9/21/2024 7:54:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carts](
	[CartID] [int] IDENTITY(1,1) NOT NULL,
	[AccountID] [int] NOT NULL,
	[Status] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Carts] PRIMARY KEY CLUSTERED 
(
	[CartID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 9/21/2024 7:54:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 9/21/2024 7:54:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[ContactName] [nvarchar](max) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[Phone] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 9/21/2024 7:54:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[UnitPrice] [decimal](18, 2) NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 9/21/2024 7:54:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[AccountID] [int] NOT NULL,
	[OrderDate] [datetime2](7) NOT NULL,
	[RequiredDate] [datetime2](7) NOT NULL,
	[ShippedDate] [datetime2](7) NULL,
	[Freight] [decimal](18, 2) NOT NULL,
	[ShipAddress] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 9/21/2024 7:54:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](max) NOT NULL,
	[SupplierID] [int] NOT NULL,
	[CategoryID] [int] NOT NULL,
	[QuantityPerUnit] [nvarchar](max) NOT NULL,
	[UnitPrice] [decimal](18, 2) NOT NULL,
	[ProductImage] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 9/21/2024 7:54:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suppliers](
	[SupplierID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [nvarchar](max) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[Phone] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Suppliers] PRIMARY KEY CLUSTERED 
(
	[SupplierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240722065929_AddStatusToCart', N'6.0.32')
GO
SET IDENTITY_INSERT [dbo].[Accounts] ON 

INSERT [dbo].[Accounts] ([AccountID], [UserName], [Password], [FullName], [Type]) VALUES (1, N'admin', N'adminpassword', N'Admin User', N'1')
INSERT [dbo].[Accounts] ([AccountID], [UserName], [Password], [FullName], [Type]) VALUES (2, N'member1', N'password1', N'Member One', N'0')
INSERT [dbo].[Accounts] ([AccountID], [UserName], [Password], [FullName], [Type]) VALUES (3, N'staff1', N'password2', N'Staff One', N'1')
INSERT [dbo].[Accounts] ([AccountID], [UserName], [Password], [FullName], [Type]) VALUES (4, N'member2', N'password3', N'Member Two', N'0')
SET IDENTITY_INSERT [dbo].[Accounts] OFF
GO
SET IDENTITY_INSERT [dbo].[CartItems] ON 

INSERT [dbo].[CartItems] ([CartItemID], [CartID], [ProductID], [Quantity]) VALUES (16, 8, 1, 16)
INSERT [dbo].[CartItems] ([CartItemID], [CartID], [ProductID], [Quantity]) VALUES (17, 8, 2, 13)
INSERT [dbo].[CartItems] ([CartItemID], [CartID], [ProductID], [Quantity]) VALUES (18, 8, 3, 1)
INSERT [dbo].[CartItems] ([CartItemID], [CartID], [ProductID], [Quantity]) VALUES (19, 15, 1, 3)
INSERT [dbo].[CartItems] ([CartItemID], [CartID], [ProductID], [Quantity]) VALUES (20, 15, 2, 3)
INSERT [dbo].[CartItems] ([CartItemID], [CartID], [ProductID], [Quantity]) VALUES (21, 16, 2, 4)
INSERT [dbo].[CartItems] ([CartItemID], [CartID], [ProductID], [Quantity]) VALUES (22, 16, 3, 4)
INSERT [dbo].[CartItems] ([CartItemID], [CartID], [ProductID], [Quantity]) VALUES (23, 17, 1, 4)
INSERT [dbo].[CartItems] ([CartItemID], [CartID], [ProductID], [Quantity]) VALUES (24, 18, 2, 4)
INSERT [dbo].[CartItems] ([CartItemID], [CartID], [ProductID], [Quantity]) VALUES (25, 19, 1, 3)
INSERT [dbo].[CartItems] ([CartItemID], [CartID], [ProductID], [Quantity]) VALUES (26, 19, 2, 3)
INSERT [dbo].[CartItems] ([CartItemID], [CartID], [ProductID], [Quantity]) VALUES (27, 20, 1, 2)
INSERT [dbo].[CartItems] ([CartItemID], [CartID], [ProductID], [Quantity]) VALUES (28, 21, 2, 3)
INSERT [dbo].[CartItems] ([CartItemID], [CartID], [ProductID], [Quantity]) VALUES (29, 22, 2, 5)
INSERT [dbo].[CartItems] ([CartItemID], [CartID], [ProductID], [Quantity]) VALUES (30, 23, 1, 3)
INSERT [dbo].[CartItems] ([CartItemID], [CartID], [ProductID], [Quantity]) VALUES (31, 24, 1, 3)
INSERT [dbo].[CartItems] ([CartItemID], [CartID], [ProductID], [Quantity]) VALUES (32, 24, 2, 3)
INSERT [dbo].[CartItems] ([CartItemID], [CartID], [ProductID], [Quantity]) VALUES (33, 25, 4, 3)
INSERT [dbo].[CartItems] ([CartItemID], [CartID], [ProductID], [Quantity]) VALUES (34, 26, 1, 6)
INSERT [dbo].[CartItems] ([CartItemID], [CartID], [ProductID], [Quantity]) VALUES (36, 27, 1, 4)
INSERT [dbo].[CartItems] ([CartItemID], [CartID], [ProductID], [Quantity]) VALUES (37, 28, 1, 6)
INSERT [dbo].[CartItems] ([CartItemID], [CartID], [ProductID], [Quantity]) VALUES (38, 29, 2, 1)
INSERT [dbo].[CartItems] ([CartItemID], [CartID], [ProductID], [Quantity]) VALUES (39, 30, 2, 3)
INSERT [dbo].[CartItems] ([CartItemID], [CartID], [ProductID], [Quantity]) VALUES (40, 31, 2, 4)
INSERT [dbo].[CartItems] ([CartItemID], [CartID], [ProductID], [Quantity]) VALUES (41, 32, 1, 7)
INSERT [dbo].[CartItems] ([CartItemID], [CartID], [ProductID], [Quantity]) VALUES (42, 33, 1, 3)
INSERT [dbo].[CartItems] ([CartItemID], [CartID], [ProductID], [Quantity]) VALUES (43, 34, 1, 8)
INSERT [dbo].[CartItems] ([CartItemID], [CartID], [ProductID], [Quantity]) VALUES (44, 35, 1, 4)
INSERT [dbo].[CartItems] ([CartItemID], [CartID], [ProductID], [Quantity]) VALUES (45, 35, 2, 4)
INSERT [dbo].[CartItems] ([CartItemID], [CartID], [ProductID], [Quantity]) VALUES (46, 36, 1, 5)
INSERT [dbo].[CartItems] ([CartItemID], [CartID], [ProductID], [Quantity]) VALUES (47, 37, 2, 7)
INSERT [dbo].[CartItems] ([CartItemID], [CartID], [ProductID], [Quantity]) VALUES (48, 37, 3, 5)
INSERT [dbo].[CartItems] ([CartItemID], [CartID], [ProductID], [Quantity]) VALUES (49, 39, 1, 3)
INSERT [dbo].[CartItems] ([CartItemID], [CartID], [ProductID], [Quantity]) VALUES (50, 40, 1, 6)
INSERT [dbo].[CartItems] ([CartItemID], [CartID], [ProductID], [Quantity]) VALUES (51, 38, 1, 2)
INSERT [dbo].[CartItems] ([CartItemID], [CartID], [ProductID], [Quantity]) VALUES (52, 38, 2, 3)
INSERT [dbo].[CartItems] ([CartItemID], [CartID], [ProductID], [Quantity]) VALUES (53, 41, 1, 3)
INSERT [dbo].[CartItems] ([CartItemID], [CartID], [ProductID], [Quantity]) VALUES (54, 43, 1, 3)
SET IDENTITY_INSERT [dbo].[CartItems] OFF
GO
SET IDENTITY_INSERT [dbo].[Carts] ON 

INSERT [dbo].[Carts] ([CartID], [AccountID], [Status]) VALUES (8, 1, N'Rejected')
INSERT [dbo].[Carts] ([CartID], [AccountID], [Status]) VALUES (9, 1, N'Active')
INSERT [dbo].[Carts] ([CartID], [AccountID], [Status]) VALUES (10, 1, N'Active')
INSERT [dbo].[Carts] ([CartID], [AccountID], [Status]) VALUES (11, 1, N'Active')
INSERT [dbo].[Carts] ([CartID], [AccountID], [Status]) VALUES (12, 1, N'Active')
INSERT [dbo].[Carts] ([CartID], [AccountID], [Status]) VALUES (13, 1, N'Active')
INSERT [dbo].[Carts] ([CartID], [AccountID], [Status]) VALUES (14, 1, N'New')
INSERT [dbo].[Carts] ([CartID], [AccountID], [Status]) VALUES (15, 1, N'New')
INSERT [dbo].[Carts] ([CartID], [AccountID], [Status]) VALUES (16, 1, N'Completed')
INSERT [dbo].[Carts] ([CartID], [AccountID], [Status]) VALUES (17, 1, N'Completed')
INSERT [dbo].[Carts] ([CartID], [AccountID], [Status]) VALUES (18, 1, N'Rejected')
INSERT [dbo].[Carts] ([CartID], [AccountID], [Status]) VALUES (19, 1, N'Completed')
INSERT [dbo].[Carts] ([CartID], [AccountID], [Status]) VALUES (20, 1, N'Completed')
INSERT [dbo].[Carts] ([CartID], [AccountID], [Status]) VALUES (21, 1, N'Rejected')
INSERT [dbo].[Carts] ([CartID], [AccountID], [Status]) VALUES (22, 1, N'Rejected')
INSERT [dbo].[Carts] ([CartID], [AccountID], [Status]) VALUES (23, 1, N'Rejected')
INSERT [dbo].[Carts] ([CartID], [AccountID], [Status]) VALUES (24, 1, N'Rejected')
INSERT [dbo].[Carts] ([CartID], [AccountID], [Status]) VALUES (25, 1, N'Rejected')
INSERT [dbo].[Carts] ([CartID], [AccountID], [Status]) VALUES (26, 1, N'Rejected')
INSERT [dbo].[Carts] ([CartID], [AccountID], [Status]) VALUES (27, 1, N'Rejected')
INSERT [dbo].[Carts] ([CartID], [AccountID], [Status]) VALUES (28, 1, N'Rejected')
INSERT [dbo].[Carts] ([CartID], [AccountID], [Status]) VALUES (29, 1, N'Rejected')
INSERT [dbo].[Carts] ([CartID], [AccountID], [Status]) VALUES (30, 1, N'Rejected')
INSERT [dbo].[Carts] ([CartID], [AccountID], [Status]) VALUES (31, 1, N'Rejected')
INSERT [dbo].[Carts] ([CartID], [AccountID], [Status]) VALUES (32, 1, N'Rejected')
INSERT [dbo].[Carts] ([CartID], [AccountID], [Status]) VALUES (33, 1, N'Rejected')
INSERT [dbo].[Carts] ([CartID], [AccountID], [Status]) VALUES (34, 1, N'New')
INSERT [dbo].[Carts] ([CartID], [AccountID], [Status]) VALUES (35, 1, N'New')
INSERT [dbo].[Carts] ([CartID], [AccountID], [Status]) VALUES (36, 1, N'Completed')
INSERT [dbo].[Carts] ([CartID], [AccountID], [Status]) VALUES (37, 1, N'Completed')
INSERT [dbo].[Carts] ([CartID], [AccountID], [Status]) VALUES (38, 1, N'Completed')
INSERT [dbo].[Carts] ([CartID], [AccountID], [Status]) VALUES (39, 2, N'Completed')
INSERT [dbo].[Carts] ([CartID], [AccountID], [Status]) VALUES (40, 2, N'Completed')
INSERT [dbo].[Carts] ([CartID], [AccountID], [Status]) VALUES (41, 2, N'Processing')
INSERT [dbo].[Carts] ([CartID], [AccountID], [Status]) VALUES (42, 1, N'New')
INSERT [dbo].[Carts] ([CartID], [AccountID], [Status]) VALUES (43, 2, N'New')
SET IDENTITY_INSERT [dbo].[Carts] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (1, N'Beverages', N'Soft drinks, coffees, teas, beers, and ales')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (2, N'Condiments', N'Sweet and savory sauces, relishes, spreads, and seasonings')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Customers] ON 

INSERT [dbo].[Customers] ([CustomerID], [Password], [ContactName], [Address], [Phone]) VALUES (1, N'custpassword1', N'John Doe', N'123 Main St', N'123-456-7890')
INSERT [dbo].[Customers] ([CustomerID], [Password], [ContactName], [Address], [Phone]) VALUES (2, N'custpassword2', N'Jane Smith', N'456 Elm St', N'987-654-3210')
SET IDENTITY_INSERT [dbo].[Customers] OFF
GO
INSERT [dbo].[OrderDetails] ([OrderID], [ProductID], [UnitPrice], [Quantity]) VALUES (1, 1, CAST(18.00 AS Decimal(18, 2)), 5)
INSERT [dbo].[OrderDetails] ([OrderID], [ProductID], [UnitPrice], [Quantity]) VALUES (2, 2, CAST(19.00 AS Decimal(18, 2)), 10)
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([OrderID], [AccountID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipAddress]) VALUES (1, 1, CAST(N'2023-07-01T00:00:00.0000000' AS DateTime2), CAST(N'2023-07-10T00:00:00.0000000' AS DateTime2), CAST(N'2023-07-05T00:00:00.0000000' AS DateTime2), CAST(15.50 AS Decimal(18, 2)), N'123 Main St')
INSERT [dbo].[Orders] ([OrderID], [AccountID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipAddress]) VALUES (2, 2, CAST(N'2023-07-03T00:00:00.0000000' AS DateTime2), CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), CAST(N'2023-07-08T00:00:00.0000000' AS DateTime2), CAST(20.75 AS Decimal(18, 2)), N'456 Elm St')
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [ProductImage]) VALUES (1, N'Pizza Beef', 1, 1, N'1 large pizza', CAST(18.00 AS Decimal(18, 2)), N'https://file.hstatic.net/1000389344/file/_5_beefy_42507a208610490e8f4582b3f90f2332_grande.jpg')
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [ProductImage]) VALUES (2, N'Pizza Chicken', 1, 1, N'1 large pizza', CAST(19.00 AS Decimal(18, 2)), N'https://file.hstatic.net/1000389344/file/pizza_ga_9ca9c67798fd4edd8093ffb00ad74b39_grande.jpg')
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [ProductImage]) VALUES (3, N'Pizza Sausage', 2, 1, N'1 large pizza', CAST(20.00 AS Decimal(18, 2)), N'https://file.hstatic.net/1000389344/file/_9-pizza-pepperoni__3__71fbdad67d464d0a9a54fcee2d74563c_grande.jpg')
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [ProductImage]) VALUES (4, N'Pizza Seafood', 2, 1, N'1 large pizza', CAST(22.00 AS Decimal(18, 2)), N'https://file.hstatic.net/1000389344/file/hai_san_d85e63b59c784f2d84eb40cdeaba186d_grande.jpg')
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [ProductImage]) VALUES (5, N'Pizza Hawaiian', 3, 2, N'1 large pizza', CAST(21.00 AS Decimal(18, 2)), N'https://file.hstatic.net/1000389344/file/_2-pizza-hawaii__3__44ce0f70809e4cb3a312e4b07673b66b_grande.jpg')
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [ProductImage]) VALUES (6, N'Pizza Vegetarian', 3, 2, N'1 large pizza', CAST(17.00 AS Decimal(18, 2)), N'https://file.hstatic.net/1000389344/file/sot_pesto_bd33950bd55d4807a1d860d1d7f4445e_grande.jpg')
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Suppliers] ON 

INSERT [dbo].[Suppliers] ([SupplierID], [CompanyName], [Address], [Phone]) VALUES (1, N'Exotic Liquids', N'49 Gilbert St.', N'123-456-7890')
INSERT [dbo].[Suppliers] ([SupplierID], [CompanyName], [Address], [Phone]) VALUES (2, N'New Orleans Cajun Delights', N'P.O. Box 78934', N'987-654-3210')
INSERT [dbo].[Suppliers] ([SupplierID], [CompanyName], [Address], [Phone]) VALUES (3, N'Pizza Hut', N'123 Pizza Ave', N'555-555-5555')
SET IDENTITY_INSERT [dbo].[Suppliers] OFF
GO
/****** Object:  Index [IX_CartItems_CartID]    Script Date: 9/21/2024 7:54:12 PM ******/
CREATE NONCLUSTERED INDEX [IX_CartItems_CartID] ON [dbo].[CartItems]
(
	[CartID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CartItems_ProductID]    Script Date: 9/21/2024 7:54:12 PM ******/
CREATE NONCLUSTERED INDEX [IX_CartItems_ProductID] ON [dbo].[CartItems]
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Carts_AccountID]    Script Date: 9/21/2024 7:54:12 PM ******/
CREATE NONCLUSTERED INDEX [IX_Carts_AccountID] ON [dbo].[Carts]
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderDetails_ProductID]    Script Date: 9/21/2024 7:54:12 PM ******/
CREATE NONCLUSTERED INDEX [IX_OrderDetails_ProductID] ON [dbo].[OrderDetails]
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Orders_AccountID]    Script Date: 9/21/2024 7:54:12 PM ******/
CREATE NONCLUSTERED INDEX [IX_Orders_AccountID] ON [dbo].[Orders]
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_CategoryID]    Script Date: 9/21/2024 7:54:12 PM ******/
CREATE NONCLUSTERED INDEX [IX_Products_CategoryID] ON [dbo].[Products]
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_SupplierID]    Script Date: 9/21/2024 7:54:12 PM ******/
CREATE NONCLUSTERED INDEX [IX_Products_SupplierID] ON [dbo].[Products]
(
	[SupplierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CartItems]  WITH CHECK ADD  CONSTRAINT [FK_CartItems_Carts_CartID] FOREIGN KEY([CartID])
REFERENCES [dbo].[Carts] ([CartID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CartItems] CHECK CONSTRAINT [FK_CartItems_Carts_CartID]
GO
ALTER TABLE [dbo].[CartItems]  WITH CHECK ADD  CONSTRAINT [FK_CartItems_Products_ProductID] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CartItems] CHECK CONSTRAINT [FK_CartItems_Products_ProductID]
GO
ALTER TABLE [dbo].[Carts]  WITH CHECK ADD  CONSTRAINT [FK_Carts_Accounts_AccountID] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Accounts] ([AccountID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Carts] CHECK CONSTRAINT [FK_Carts_Accounts_AccountID]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders_OrderID] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([OrderID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders_OrderID]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products_ProductID] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products_ProductID]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Accounts_AccountID] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Accounts] ([AccountID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Accounts_AccountID]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories_CategoryID] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([CategoryID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories_CategoryID]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Suppliers_SupplierID] FOREIGN KEY([SupplierID])
REFERENCES [dbo].[Suppliers] ([SupplierID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Suppliers_SupplierID]
GO
USE [master]
GO
ALTER DATABASE [Assigment2] SET  READ_WRITE 
GO
