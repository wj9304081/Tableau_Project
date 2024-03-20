/* Question 2. 
 * 
 * List all of the regions and the total number of countries in each region.  
 * Order by country count in descending order and capitalize the region name.
 * 
 */

SELECT 
	-- initcap() capitalizes the first letter of every word in a string.
	initcap(region) AS region,
	count(*) AS country_count
FROM
	cleaned_data.countries
GROUP BY
	-- Aggregate functions 'count()' require you to group all column fields.
	region
ORDER BY 
	country_count DESC;
