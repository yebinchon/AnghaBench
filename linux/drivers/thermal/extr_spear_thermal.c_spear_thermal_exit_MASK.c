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
struct thermal_zone_device {struct spear_thermal_dev* devdata; } ;
struct spear_thermal_dev {unsigned int flags; int /*<<< orphan*/  clk; int /*<<< orphan*/  thermal_base; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct thermal_zone_device* FUNC1 (struct platform_device*) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct thermal_zone_device*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	unsigned int actual_mask = 0;
	struct thermal_zone_device *spear_thermal = FUNC1(pdev);
	struct spear_thermal_dev *stdev = spear_thermal->devdata;

	FUNC3(spear_thermal);

	/* Disable SPEAr Thermal Sensor */
	actual_mask = FUNC2(stdev->thermal_base);
	FUNC4(actual_mask & ~stdev->flags, stdev->thermal_base);

	FUNC0(stdev->clk);

	return 0;
}