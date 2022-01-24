#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct wm97xx_batt_pdata {scalar_t__ charge_gpio; scalar_t__ batt_tech; scalar_t__ temp_aux; scalar_t__ batt_aux; scalar_t__ max_voltage; scalar_t__ min_voltage; char* batt_name; } ;
struct power_supply_config {struct wm97xx_batt_pdata* drv_data; } ;
struct TYPE_6__ {struct wm97xx_batt_pdata* platform_data; } ;
struct platform_device {int id; TYPE_1__ dev; } ;
struct TYPE_7__ {char* name; int num_properties; int /*<<< orphan*/ * properties; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  POWER_SUPPLY_PROP_PRESENT ; 
 int /*<<< orphan*/  POWER_SUPPLY_PROP_STATUS ; 
 int /*<<< orphan*/  POWER_SUPPLY_PROP_TECHNOLOGY ; 
 int /*<<< orphan*/  POWER_SUPPLY_PROP_TEMP ; 
 int /*<<< orphan*/  POWER_SUPPLY_PROP_VOLTAGE_MAX ; 
 int /*<<< orphan*/  POWER_SUPPLY_PROP_VOLTAGE_MIN ; 
 int /*<<< orphan*/  POWER_SUPPLY_PROP_VOLTAGE_NOW ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bat_psy ; 
 TYPE_2__ bat_psy_desc ; 
 int /*<<< orphan*/  bat_work ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct platform_device*) ; 
 int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int FUNC9 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC11 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,TYPE_2__*,struct power_supply_config*) ; 
 int /*<<< orphan*/ * prop ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct platform_device*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wm97xx_bat_work ; 
 int /*<<< orphan*/  wm97xx_chrg_irq ; 

__attribute__((used)) static int FUNC16(struct platform_device *dev)
{
	int ret = 0;
	int props = 1;	/* POWER_SUPPLY_PROP_PRESENT */
	int i = 0;
	struct wm97xx_batt_pdata *pdata = dev->dev.platform_data;
	struct power_supply_config cfg = {};

	if (!pdata) {
		FUNC3(&dev->dev, "No platform data supplied\n");
		return -EINVAL;
	}

	cfg.drv_data = pdata;

	if (dev->id != -1)
		return -EINVAL;

	if (FUNC8(pdata->charge_gpio)) {
		ret = FUNC9(pdata->charge_gpio, "BATT CHRG");
		if (ret)
			goto err;
		ret = FUNC6(pdata->charge_gpio);
		if (ret)
			goto err2;
		ret = FUNC14(FUNC10(pdata->charge_gpio),
				wm97xx_chrg_irq, 0,
				"AC Detect", dev);
		if (ret)
			goto err2;
		props++;	/* POWER_SUPPLY_PROP_STATUS */
	}

	if (pdata->batt_tech >= 0)
		props++;	/* POWER_SUPPLY_PROP_TECHNOLOGY */
	if (pdata->temp_aux >= 0)
		props++;	/* POWER_SUPPLY_PROP_TEMP */
	if (pdata->batt_aux >= 0)
		props++;	/* POWER_SUPPLY_PROP_VOLTAGE_NOW */
	if (pdata->max_voltage >= 0)
		props++;	/* POWER_SUPPLY_PROP_VOLTAGE_MAX */
	if (pdata->min_voltage >= 0)
		props++;	/* POWER_SUPPLY_PROP_VOLTAGE_MIN */

	prop = FUNC11(props, sizeof(*prop), GFP_KERNEL);
	if (!prop) {
		ret = -ENOMEM;
		goto err3;
	}

	prop[i++] = POWER_SUPPLY_PROP_PRESENT;
	if (pdata->charge_gpio >= 0)
		prop[i++] = POWER_SUPPLY_PROP_STATUS;
	if (pdata->batt_tech >= 0)
		prop[i++] = POWER_SUPPLY_PROP_TECHNOLOGY;
	if (pdata->temp_aux >= 0)
		prop[i++] = POWER_SUPPLY_PROP_TEMP;
	if (pdata->batt_aux >= 0)
		prop[i++] = POWER_SUPPLY_PROP_VOLTAGE_NOW;
	if (pdata->max_voltage >= 0)
		prop[i++] = POWER_SUPPLY_PROP_VOLTAGE_MAX;
	if (pdata->min_voltage >= 0)
		prop[i++] = POWER_SUPPLY_PROP_VOLTAGE_MIN;

	FUNC0(&bat_work, wm97xx_bat_work);

	if (!pdata->batt_name) {
		FUNC4(&dev->dev, "Please consider setting proper battery "
				"name in platform definition file, falling "
				"back to name \"wm97xx-batt\"\n");
		bat_psy_desc.name = "wm97xx-batt";
	} else
		bat_psy_desc.name = pdata->batt_name;

	bat_psy_desc.properties = prop;
	bat_psy_desc.num_properties = props;

	bat_psy = FUNC13(&dev->dev, &bat_psy_desc, &cfg);
	if (!FUNC1(bat_psy)) {
		FUNC15(&bat_work);
	} else {
		ret = FUNC2(bat_psy);
		goto err4;
	}

	return 0;
err4:
	FUNC12(prop);
err3:
	if (FUNC8(pdata->charge_gpio))
		FUNC5(FUNC10(pdata->charge_gpio), dev);
err2:
	if (FUNC8(pdata->charge_gpio))
		FUNC7(pdata->charge_gpio);
err:
	return ret;
}