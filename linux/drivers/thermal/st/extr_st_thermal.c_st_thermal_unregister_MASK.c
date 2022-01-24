#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct st_thermal_sensor {int /*<<< orphan*/  thermal_dev; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 struct st_thermal_sensor* FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct st_thermal_sensor*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(struct platform_device *pdev)
{
	struct st_thermal_sensor *sensor = FUNC0(pdev);

	FUNC1(sensor);
	FUNC2(sensor->thermal_dev);

	return 0;
}