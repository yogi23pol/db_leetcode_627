# NOTE :- In this context, it's important to note that the table names used in the examples include underscores and numbers, 
# which differ from the naming conventions used in the LeetCode problem.

Create table If Not Exists Salary_17
(
id int, 
name varchar(100), 
sex char(1), 
salary int
);

Truncate table Salary_17;
insert into Salary_17 (id, name, sex, salary) values ('1', 'A', 'm', '2500');
insert into Salary_17 (id, name, sex, salary) values ('2', 'B', 'f', '1500');
insert into Salary_17 (id, name, sex, salary) values ('3', 'C', 'm', '5500');
insert into Salary_17 (id, name, sex, salary) values ('4', 'D', 'f', '500');

/*
Q. Write an SQL query to swap all 'f' and 'm' values (i.e., change all 'f' values to 'm' and vice versa) with a single update statement 
and no intermediate temporary tables. Note that you must write a single update statement, do not write any select statement for this problem.

Input: 
Salary table:
+----+------+-----+--------+
| id | name | sex | salary |
+----+------+-----+--------+
| 1  | A    | m   | 2500   |
| 2  | B    | f   | 1500   |
| 3  | C    | m   | 5500   |
| 4  | D    | f   | 500    |
+----+------+-----+--------+
Output: 
+----+------+-----+--------+
| id | name | sex | salary |
+----+------+-----+--------+
| 1  | A    | f   | 2500   |
| 2  | B    | m   | 1500   |
| 3  | C    | f   | 5500   |
| 4  | D    | m   | 500    |
+----+------+-----+--------+
Explanation: 
(1, A) and (3, C) were changed from 'm' to 'f'.
(2, B) and (4, D) were changed from 'f' to 'm'.
*/

SELECT * FROM Salary_17;

# TYPE 1 :- 
UPDATE Salary_17
SET sex = 
CASE
WHEN sex='f' THEN 'm'
WHEN sex='m' THEN 'f'
END;

# TYPE 2 :- 
UPDATE Salary_17
SET sex = 
CASE
WHEN sex='f' THEN 'm'
ELSE 'f'
END;
