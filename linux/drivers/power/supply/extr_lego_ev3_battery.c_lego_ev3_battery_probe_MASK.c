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
struct power_supply_config {struct lego_ev3_battery* drv_data; int /*<<< orphan*/  of_node; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct lego_ev3_battery {int v_max; int v_min; void* psy; int /*<<< orphan*/  technology; void* rechargeable_gpio; void* iio_i; void* iio_v; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_IN ; 
 int /*<<< orphan*/  POWER_SUPPLY_TECHNOLOGY_LION ; 
 int /*<<< orphan*/  POWER_SUPPLY_TECHNOLOGY_UNKNOWN ; 
 int FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 void* FUNC2 (struct device*,char*,int /*<<< orphan*/ ) ; 
 void* FUNC3 (struct device*,char*) ; 
 struct lego_ev3_battery* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 void* FUNC5 (struct device*,int /*<<< orphan*/ *,struct power_supply_config*) ; 
 scalar_t__ FUNC6 (void*) ; 
 int /*<<< orphan*/  lego_ev3_battery_desc ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,struct lego_ev3_battery*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct lego_ev3_battery *batt;
	struct power_supply_config psy_cfg = {};
	int err;

	batt = FUNC4(dev, sizeof(*batt), GFP_KERNEL);
	if (!batt)
		return -ENOMEM;

	FUNC7(pdev, batt);

	batt->iio_v = FUNC3(dev, "voltage");
	err = FUNC0(batt->iio_v);
	if (err) {
		if (err != -EPROBE_DEFER)
			FUNC1(dev, "Failed to get voltage iio channel\n");
		return err;
	}

	batt->iio_i = FUNC3(dev, "current");
	err = FUNC0(batt->iio_i);
	if (err) {
		if (err != -EPROBE_DEFER)
			FUNC1(dev, "Failed to get current iio channel\n");
		return err;
	}

	batt->rechargeable_gpio = FUNC2(dev, "rechargeable", GPIOD_IN);
	err = FUNC0(batt->rechargeable_gpio);
	if (err) {
		if (err != -EPROBE_DEFER)
			FUNC1(dev, "Failed to get rechargeable gpio\n");
		return err;
	}

	/*
	 * The rechargeable battery indication switch cannot be changed without
	 * removing the battery, so we only need to read it once.
	 */
	if (FUNC6(batt->rechargeable_gpio)) {
		/* 2-cell Li-ion, 7.4V nominal */
		batt->technology = POWER_SUPPLY_TECHNOLOGY_LION;
		batt->v_max = 84000000;
		batt->v_min = 60000000;
	} else {
		/* 6x AA Alkaline, 9V nominal */
		batt->technology = POWER_SUPPLY_TECHNOLOGY_UNKNOWN;
		batt->v_max = 90000000;
		batt->v_min = 48000000;
	}

	psy_cfg.of_node = pdev->dev.of_node;
	psy_cfg.drv_data = batt;

	batt->psy = FUNC5(dev, &lego_ev3_battery_desc,
					       &psy_cfg);
	err = FUNC0(batt->psy);
	if (err) {
		FUNC1(dev, "failed to register power supply\n");
		return err;
	}

	return 0;
}