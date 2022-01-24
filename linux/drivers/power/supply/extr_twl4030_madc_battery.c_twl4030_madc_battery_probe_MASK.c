#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct twl4030_madc_battery {void* channel_temp; void* channel_ichg; void* channel_vbat; void* psy; struct twl4030_madc_bat_platform_data* pdata; } ;
struct twl4030_madc_bat_platform_data {int /*<<< orphan*/  discharging_size; int /*<<< orphan*/  discharging; int /*<<< orphan*/  charging_size; int /*<<< orphan*/  charging; } ;
struct twl4030_madc_bat_calibration {int dummy; } ;
struct power_supply_config {struct twl4030_madc_battery* drv_data; } ;
struct TYPE_4__ {struct twl4030_madc_bat_platform_data* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 struct twl4030_madc_battery* FUNC2 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 void* FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,struct twl4030_madc_battery*) ; 
 void* FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,struct power_supply_config*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  twl4030_cmp ; 
 int /*<<< orphan*/  twl4030_madc_bat_desc ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct twl4030_madc_battery *twl4030_madc_bat;
	struct twl4030_madc_bat_platform_data *pdata = pdev->dev.platform_data;
	struct power_supply_config psy_cfg = {};
	int ret = 0;

	twl4030_madc_bat = FUNC2(&pdev->dev, sizeof(*twl4030_madc_bat),
				GFP_KERNEL);
	if (!twl4030_madc_bat)
		return -ENOMEM;

	twl4030_madc_bat->channel_temp = FUNC3(&pdev->dev, "temp");
	if (FUNC0(twl4030_madc_bat->channel_temp)) {
		ret = FUNC1(twl4030_madc_bat->channel_temp);
		goto err;
	}

	twl4030_madc_bat->channel_ichg = FUNC3(&pdev->dev, "ichg");
	if (FUNC0(twl4030_madc_bat->channel_ichg)) {
		ret = FUNC1(twl4030_madc_bat->channel_ichg);
		goto err_temp;
	}

	twl4030_madc_bat->channel_vbat = FUNC3(&pdev->dev, "vbat");
	if (FUNC0(twl4030_madc_bat->channel_vbat)) {
		ret = FUNC1(twl4030_madc_bat->channel_vbat);
		goto err_ichg;
	}

	/* sort charging and discharging calibration data */
	FUNC7(pdata->charging, pdata->charging_size,
		sizeof(struct twl4030_madc_bat_calibration),
		twl4030_cmp, NULL);
	FUNC7(pdata->discharging, pdata->discharging_size,
		sizeof(struct twl4030_madc_bat_calibration),
		twl4030_cmp, NULL);

	twl4030_madc_bat->pdata = pdata;
	FUNC5(pdev, twl4030_madc_bat);
	psy_cfg.drv_data = twl4030_madc_bat;
	twl4030_madc_bat->psy = FUNC6(&pdev->dev,
						      &twl4030_madc_bat_desc,
						      &psy_cfg);
	if (FUNC0(twl4030_madc_bat->psy)) {
		ret = FUNC1(twl4030_madc_bat->psy);
		goto err_vbat;
	}

	return 0;

err_vbat:
	FUNC4(twl4030_madc_bat->channel_vbat);
err_ichg:
	FUNC4(twl4030_madc_bat->channel_ichg);
err_temp:
	FUNC4(twl4030_madc_bat->channel_temp);
err:
	return ret;
}