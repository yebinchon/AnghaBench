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
typedef  int /*<<< orphan*/  u32 ;
struct palmas_reg_init {int roof_floor; int /*<<< orphan*/  vsel; int /*<<< orphan*/  mode_sleep; void* warm_reset; } ;
struct palmas_pmic_platform_data {void* ldo6_vibrator; void* enable_ldo8_tracking; struct palmas_reg_init** reg_init; scalar_t__* reg_data; } ;
struct palmas_pmic_driver_data {int max_reg; struct of_regulator_match* palmas_matches; } ;
struct of_regulator_match {int /*<<< orphan*/  name; scalar_t__ init_data; struct device_node* of_node; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PALMAS_EXT_CONTROL_ENABLE1 ; 
 int PALMAS_EXT_CONTROL_ENABLE2 ; 
 int PALMAS_EXT_CONTROL_NSLEEP ; 
 int PALMAS_REG_LDO8 ; 
 int /*<<< orphan*/  PALMAS_SMPS12_VOLTAGE_RANGE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct palmas_reg_init* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct device_node* FUNC5 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct device_node*) ; 
 void* FUNC7 (struct device_node*,char*) ; 
 int FUNC8 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct device*,struct device_node*,struct of_regulator_match*,int) ; 

__attribute__((used)) static int FUNC10(struct device *dev,
			      struct device_node *node,
			      struct palmas_pmic_platform_data *pdata,
			      struct palmas_pmic_driver_data *ddata)
{
	struct device_node *regulators;
	u32 prop;
	int idx, ret;

	regulators = FUNC5(node, "regulators");
	if (!regulators) {
		FUNC2(dev, "regulator node not found\n");
		return 0;
	}

	ret = FUNC9(dev, regulators, ddata->palmas_matches,
				 ddata->max_reg);
	FUNC6(regulators);
	if (ret < 0) {
		FUNC1(dev, "Error parsing regulator init data: %d\n", ret);
		return 0;
	}

	for (idx = 0; idx < ddata->max_reg; idx++) {
		struct of_regulator_match *match;
		struct palmas_reg_init *rinit;
		struct device_node *np;

		match = &ddata->palmas_matches[idx];
		np = match->of_node;

		if (!match->init_data || !np)
			continue;

		rinit = FUNC4(dev, sizeof(*rinit), GFP_KERNEL);
		if (!rinit)
			return -ENOMEM;

		pdata->reg_data[idx] = match->init_data;
		pdata->reg_init[idx] = rinit;

		rinit->warm_reset = FUNC7(np, "ti,warm-reset");
		ret = FUNC8(np, "ti,roof-floor", &prop);
		/* EINVAL: Property not found */
		if (ret != -EINVAL) {
			int econtrol;

			/* use default value, when no value is specified */
			econtrol = PALMAS_EXT_CONTROL_NSLEEP;
			if (!ret) {
				switch (prop) {
				case 1:
					econtrol = PALMAS_EXT_CONTROL_ENABLE1;
					break;
				case 2:
					econtrol = PALMAS_EXT_CONTROL_ENABLE2;
					break;
				case 3:
					econtrol = PALMAS_EXT_CONTROL_NSLEEP;
					break;
				default:
					FUNC0(1);
					FUNC3(dev,
						 "%s: Invalid roof-floor option: %u\n",
						 match->name, prop);
					break;
				}
			}
			rinit->roof_floor = econtrol;
		}

		ret = FUNC8(np, "ti,mode-sleep", &prop);
		if (!ret)
			rinit->mode_sleep = prop;

		ret = FUNC7(np, "ti,smps-range");
		if (ret)
			rinit->vsel = PALMAS_SMPS12_VOLTAGE_RANGE;

		if (idx == PALMAS_REG_LDO8)
			pdata->enable_ldo8_tracking = FUNC7(
						np, "ti,enable-ldo8-tracking");
	}

	pdata->ldo6_vibrator = FUNC7(node, "ti,ldo6-vibrator");

	return 0;
}