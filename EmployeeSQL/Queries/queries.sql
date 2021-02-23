-- List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees AS e
INNER JOIN salaries AS s
ON e.emp_no=s.emp_no;

SELECT * FROM dept_manager;
-- List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees 
WHERE hire_date LIKE '%86';

-- List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name.
SELECT d.dept_no, d.dept_name , m.emp_no, e.last_name, e.first_name
FROM departments AS d
INNER JOIN dept_manager AS m
ON d.dept_no=m.dept_no
INNER JOIN employees AS e
ON e.emp_no=m.emp_no;
-- List the department of each employee with the following information: 
--employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM departments AS d
INNER JOIN dept_emp AS de
ON de.dept_no=d.dept_no
INNER JOIN employees AS e
ON e.emp_no=de.emp_no;

-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT e.first_name, e.last_name, e.sex
FROM employees AS e
WHERE e.first_name='Hercules'
AND e.last_name LIKE 'B%';

-- List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS de
ON de.emp_no=e.emp_no
INNER JOIN departments AS d
ON d.dept_no=de.dept_no
WHERE d.dept_name='Sales';

-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.


-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.