Select e.first_name, e.last_name, e.emp_no, e.Sex, s.salary
From "employees" As e
JOIN "salaries" as s on
e.emp_no=s.emp_no;

Select first_name, last_name, hire_date 
FROM employees
where hire_date >= '1986-01-01' and hire_date <= '1986-12-31';

Select departments.dept_name, departments.dept_no, e.first_name, e.last_name, e.emp_no 
from employees as e
Join "Dept_manager" 
	join departments 
	on "Dept_manager".dept_no = departments.dept_no
on e.emp_no = "Dept_manager".emp_no;

Select e.first_name, e.last_name, e.emp_no, departments.dept_name 
from employees as e
Join dept_emp 
	join departments 
	on dept_emp.dept_no = departments.dept_no
on e.emp_no = dept_emp.emp_no;

Select first_name, last_name
From employees
Where first_name = 'Hercules' and last_name Like 'B%';

Select e.emp_no, e.last_name, e.first_name, departments.dept_name
from employees as e
Join dept_emp 
	join departments 
	on dept_emp.dept_no = departments.dept_no
on e.emp_no = dept_emp.emp_no
WHERE departments.dept_name = 'Sales';

Select e.emp_no, e.last_name, e.first_name, departments.dept_name
from employees as e
Join dept_emp 
	join departments 
	on dept_emp.dept_no = departments.dept_no
on e.emp_no = dept_emp.emp_no
WHERE departments.dept_name = 'Sales' or departments.dept_name ='Development';

select last_name, COUNT(last_name) as "Number of people wiht the same last name"
FROM employees
GROUP BY last_name
ORDER BY "Number of people wiht the same last name" DESC;