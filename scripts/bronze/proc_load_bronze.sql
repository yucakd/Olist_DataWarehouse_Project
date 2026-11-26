/*
===============================================================================
Stored Procedure: Load Bronze Layer (Source -> Bronze)
===============================================================================
Script Purpose:
    This stored procedure loads data into the 'bronze' schema from external CSV files. 
    It performs the following actions:
    - Truncates the bronze tables before loading data.
    - Uses the `BULK INSERT` command to load data from csv Files to bronze tables.

Parameters:
    None. 
	  This stored procedure does not accept any parameters or return any values.

Usage Example:
    EXEC bronze.load_bronze;
===============================================================================
*/

CREATE OR ALTER PROCEDURE bronze.load_bronze AS 
BEGIN
    TRUNCATE TABLE bronze.category_name_translation;
    BULK INSERT bronze.category_name_translation
    FROM 'C:\Users\dogukan\Downloads\Olist\product_category_name_translation.csv'
    WITH (
        FORMAT          = 'CSV',
        FIELDQUOTE      = '"',
        FIRSTROW        = 2,
        FIELDTERMINATOR = ',',
        CODEPAGE        = '65001',
        TABLOCK
    );

    TRUNCATE TABLE bronze.customers;
    BULK INSERT bronze.customers
    FROM 'C:\Users\dogukan\Downloads\Olist\olist_customers_dataset.csv'
    WITH (
        FORMAT          = 'CSV',
        FIELDQUOTE      = '"',
        FIRSTROW        = 2,
        FIELDTERMINATOR = ',',
        CODEPAGE        = '65001',
        ROWTERMINATOR   = '0x0a',
        TABLOCK
    );

    TRUNCATE TABLE bronze.geolocation;
    BULK INSERT bronze.geolocation
    FROM 'C:\Users\dogukan\Downloads\Olist\olist_geolocation_dataset.csv'
    WITH (
        FORMAT          = 'CSV',
        FIELDQUOTE      = '"',
        FIRSTROW        = 2,
        FIELDTERMINATOR = ',',
        CODEPAGE        = '65001',
        ROWTERMINATOR   = '0x0a',
        TABLOCK
    );

    TRUNCATE TABLE bronze.order_items;
    BULK INSERT bronze.order_items
    FROM 'C:\Users\dogukan\Downloads\Olist\olist_order_items_dataset.csv'
    WITH (
        FORMAT          = 'CSV',
        FIELDQUOTE      = '"',
        FIRSTROW        = 2,
        FIELDTERMINATOR = ',',
        CODEPAGE        = '65001',
        ROWTERMINATOR   = '0x0a',
        TABLOCK
    );

    TRUNCATE TABLE bronze.order_payments;
    BULK INSERT bronze.order_payments
    FROM 'C:\Users\dogukan\Downloads\Olist\olist_order_payments_dataset.csv'
    WITH (
        FORMAT          = 'CSV',
        FIELDQUOTE      = '"',
        FIRSTROW        = 2,
        FIELDTERMINATOR = ',',
        CODEPAGE        = '65001',
        ROWTERMINATOR   = '0x0a',
        TABLOCK
    );

    TRUNCATE TABLE bronze.order_reviews;
    BULK INSERT bronze.order_reviews
    FROM 'C:\Users\dogukan\Downloads\Olist\olist_order_reviews_dataset.csv'
    WITH (
        FORMAT          = 'CSV',
        FIELDQUOTE      = '"',
        FIRSTROW        = 2,
        FIELDTERMINATOR = ',',
        CODEPAGE        = '65001',
        TABLOCK
    );

    TRUNCATE TABLE bronze.orders;
    BULK INSERT bronze.orders
    FROM 'C:\Users\dogukan\Downloads\Olist\olist_orders_dataset.csv'
    WITH (
        FORMAT          = 'CSV',
        FIELDQUOTE      = '"',
        FIRSTROW        = 2,
        FIELDTERMINATOR = ',',
        CODEPAGE        = '65001',
        ROWTERMINATOR   = '0x0a',
        TABLOCK
    );

    TRUNCATE TABLE bronze.products;
    BULK INSERT bronze.products
    FROM 'C:\Users\dogukan\Downloads\Olist\olist_products_dataset.csv'
    WITH (
        FORMAT          = 'CSV',
        FIELDQUOTE      = '"',
        FIRSTROW        = 2,
        FIELDTERMINATOR = ',',
        CODEPAGE        = '65001',
        ROWTERMINATOR   = '0x0a',
        TABLOCK
    );
 
    TRUNCATE TABLE bronze.sellers;
    BULK INSERT bronze.sellers
    FROM 'C:\Users\dogukan\Downloads\Olist\olist_sellers_dataset.csv'
    WITH (
        FORMAT          = 'CSV',
        FIELDQUOTE      = '"',
        FIRSTROW        = 2,
        FIELDTERMINATOR = ',',
        CODEPAGE        = '65001',
        ROWTERMINATOR   = '0x0a',
        TABLOCK
    );
END
