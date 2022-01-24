#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct regmap {int dummy; } ;
struct platform_device {int dummy; } ;
struct imx_thermal_data {int /*<<< orphan*/  policy; int /*<<< orphan*/  cdev; int /*<<< orphan*/  tz; int /*<<< orphan*/  thermal_clk; TYPE_1__* socdata; struct regmap* tempmon; } ;
struct TYPE_2__ {int /*<<< orphan*/  power_down_mask; scalar_t__ sensor_ctrl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ REG_SET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct imx_thermal_data* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct regmap*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct imx_thermal_data *data = FUNC4(pdev);
	struct regmap *map = data->tempmon;

	/* Disable measurements */
	FUNC5(map, data->socdata->sensor_ctrl + REG_SET,
		     data->socdata->power_down_mask);
	if (!FUNC0(data->thermal_clk))
		FUNC1(data->thermal_clk);

	FUNC6(data->tz);
	FUNC2(data->cdev);
	FUNC3(data->policy);

	return 0;
}