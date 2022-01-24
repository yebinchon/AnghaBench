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
struct power_supply_config {int /*<<< orphan*/  of_node; struct axp20x_batt_ps* drv_data; } ;
struct power_supply_battery_info {int voltage_min_design_uv; int constant_charge_current_max_ua; } ;
struct device {int /*<<< orphan*/  of_node; int /*<<< orphan*/  parent; } ;
struct platform_device {struct device dev; } ;
struct axp_data {int dummy; } ;
struct axp20x_batt_ps {int max_ccc; void* batt; struct axp_data* data; int /*<<< orphan*/  regmap; void* batt_dischrg_i; void* batt_chrg_i; void* batt_v; struct device* dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  axp20x_batt_ps_desc ; 
 int /*<<< orphan*/  FUNC2 (struct axp20x_batt_ps*,int*) ; 
 scalar_t__ FUNC3 (struct axp20x_batt_ps*,int) ; 
 scalar_t__ FUNC4 (struct axp20x_batt_ps*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC7 (struct device*,char*) ; 
 struct axp20x_batt_ps* FUNC8 (struct device*,int,int /*<<< orphan*/ ) ; 
 void* FUNC9 (struct device*,int /*<<< orphan*/ *,struct power_supply_config*) ; 
 scalar_t__ FUNC10 (struct device*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct axp20x_batt_ps*) ; 
 int /*<<< orphan*/  FUNC13 (void*,struct power_supply_battery_info*) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct axp20x_batt_ps *axp20x_batt;
	struct power_supply_config psy_cfg = {};
	struct power_supply_battery_info info;
	struct device *dev = &pdev->dev;

	if (!FUNC11(pdev->dev.of_node))
		return -ENODEV;

	axp20x_batt = FUNC8(&pdev->dev, sizeof(*axp20x_batt),
				   GFP_KERNEL);
	if (!axp20x_batt)
		return -ENOMEM;

	axp20x_batt->dev = &pdev->dev;

	axp20x_batt->batt_v = FUNC7(&pdev->dev, "batt_v");
	if (FUNC0(axp20x_batt->batt_v)) {
		if (FUNC1(axp20x_batt->batt_v) == -ENODEV)
			return -EPROBE_DEFER;
		return FUNC1(axp20x_batt->batt_v);
	}

	axp20x_batt->batt_chrg_i = FUNC7(&pdev->dev,
							"batt_chrg_i");
	if (FUNC0(axp20x_batt->batt_chrg_i)) {
		if (FUNC1(axp20x_batt->batt_chrg_i) == -ENODEV)
			return -EPROBE_DEFER;
		return FUNC1(axp20x_batt->batt_chrg_i);
	}

	axp20x_batt->batt_dischrg_i = FUNC7(&pdev->dev,
							   "batt_dischrg_i");
	if (FUNC0(axp20x_batt->batt_dischrg_i)) {
		if (FUNC1(axp20x_batt->batt_dischrg_i) == -ENODEV)
			return -EPROBE_DEFER;
		return FUNC1(axp20x_batt->batt_dischrg_i);
	}

	axp20x_batt->regmap = FUNC6(pdev->dev.parent, NULL);
	FUNC12(pdev, axp20x_batt);

	psy_cfg.drv_data = axp20x_batt;
	psy_cfg.of_node = pdev->dev.of_node;

	axp20x_batt->data = (struct axp_data *)FUNC10(dev);

	axp20x_batt->batt = FUNC9(&pdev->dev,
						       &axp20x_batt_ps_desc,
						       &psy_cfg);
	if (FUNC0(axp20x_batt->batt)) {
		FUNC5(&pdev->dev, "failed to register power supply: %ld\n",
			FUNC1(axp20x_batt->batt));
		return FUNC1(axp20x_batt->batt);
	}

	if (!FUNC13(axp20x_batt->batt, &info)) {
		int vmin = info.voltage_min_design_uv;
		int ccc = info.constant_charge_current_max_ua;

		if (vmin > 0 && FUNC4(axp20x_batt,
							      vmin))
			FUNC5(&pdev->dev,
				"couldn't set voltage_min_design\n");

		/* Set max to unverified value to be able to set CCC */
		axp20x_batt->max_ccc = ccc;

		if (ccc <= 0 || FUNC3(axp20x_batt,
								   ccc)) {
			FUNC5(&pdev->dev,
				"couldn't set constant charge current from DT: fallback to minimum value\n");
			ccc = 300000;
			axp20x_batt->max_ccc = ccc;
			FUNC3(axp20x_batt, ccc);
		}
	}

	/*
	 * Update max CCC to a valid value if battery info is present or set it
	 * to current register value by default.
	 */
	FUNC2(axp20x_batt,
					   &axp20x_batt->max_ccc);

	return 0;
}