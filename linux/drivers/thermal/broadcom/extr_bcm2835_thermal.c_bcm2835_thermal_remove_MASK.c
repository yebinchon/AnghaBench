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
struct thermal_zone_device {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct bcm2835_thermal_data {int /*<<< orphan*/  clk; int /*<<< orphan*/  debugfsdir; struct thermal_zone_device* tz; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct bcm2835_thermal_data* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct thermal_zone_device*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct bcm2835_thermal_data *data = FUNC2(pdev);
	struct thermal_zone_device *tz = data->tz;

	FUNC1(data->debugfsdir);
	FUNC3(&pdev->dev, tz);
	FUNC0(data->clk);

	return 0;
}