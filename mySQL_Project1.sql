use cars;
-- 	Q1 READ CARS DATA--
SELECT * FROM cars.car_dekho;
-- Q2 Total Records :- To Get a Count Of Total Records--
select count(*) from car_dekho;
-- Q3 The Manager Ask The Employee How Many Cars Will Be Available in 2023?
select count(*) from car_dekho where year = 2023;
-- Q4 The manager ask the employee how many cars is available in 2020,2021,2022?--
select year,count(*) as total_cars from car_dekho where year in (2020,2021,2022) group by year;
-- Q5 Client asked me to print the total of all cars by year. i don't see all the details--
select year,count(*) as total_cars from car_dekho group by year;
-- Q6 Client asked to car dealer agent how many diesel cars will be their in 2020--
select count(*) as total_diesel_cars from car_dekho where year = 2020 AND fuel = 'diesel';
-- Q7 Client requested a car dealer agent how many petrol cars will there be in 2020?--
select  count(*) as total_petrol_cars from car_dekho where year = 2020 and fuel = 'petrol';
-- Q8 The manager told the employee to give a print all the fuel cars(petrol,diesel and CNG) come by all year--
select year, count(*) as all_fuel_cars_by_all_years from car_dekho where fuel in ('petrol','diesel','CNG') group by year;
-- Q9 Manager said there were morethan 100 cars in a given year, which year had more than 100 cars?--
select year, count(*) from car_dekho group by year having count(*) > 100;
-- Q10 The manager said to the employee all cars count details betweeen 2015 and 2023 ; we need a complete list.--
select count(*) from car_dekho where year between 2015 and 2023;
-- Q11 The manager said to the employee all cars details between 2015 to 2023 we need complete list--
select * from car_dekho where year between 2015 and 2023;