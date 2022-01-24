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
union power_supply_propval {int intval; int /*<<< orphan*/  strval; } ;
struct power_supply_info {int technology; int voltage_min_design; int voltage_max_design; int charge_full_design; int /*<<< orphan*/  name; } ;
struct power_supply {int /*<<< orphan*/  dev; } ;
struct gab_platform_data {int (* cal_charge ) (int) ;struct power_supply_info battery_info; } ;
struct gab {struct gab_platform_data* pdata; } ;
typedef  enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;

/* Variables and functions */
 int EINVAL ; 
#define  POWER_SUPPLY_PROP_CHARGE_EMPTY_DESIGN 138 
#define  POWER_SUPPLY_PROP_CHARGE_FULL_DESIGN 137 
#define  POWER_SUPPLY_PROP_CHARGE_NOW 136 
#define  POWER_SUPPLY_PROP_CURRENT_NOW 135 
#define  POWER_SUPPLY_PROP_MODEL_NAME 134 
#define  POWER_SUPPLY_PROP_POWER_NOW 133 
#define  POWER_SUPPLY_PROP_STATUS 132 
#define  POWER_SUPPLY_PROP_TECHNOLOGY 131 
#define  POWER_SUPPLY_PROP_VOLTAGE_MAX_DESIGN 130 
#define  POWER_SUPPLY_PROP_VOLTAGE_MIN_DESIGN 129 
#define  POWER_SUPPLY_PROP_VOLTAGE_NOW 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct gab*) ; 
 int FUNC2 (struct gab*,int,int*) ; 
 int FUNC3 (int) ; 
 struct gab* FUNC4 (struct power_supply*) ; 

__attribute__((used)) static int FUNC5(struct power_supply *psy,
		enum power_supply_property psp, union power_supply_propval *val)
{
	struct gab *adc_bat;
	struct gab_platform_data *pdata;
	struct power_supply_info *bat_info;
	int result = 0;
	int ret = 0;

	adc_bat = FUNC4(psy);
	if (!adc_bat) {
		FUNC0(&psy->dev, "no battery infos ?!\n");
		return -EINVAL;
	}
	pdata = adc_bat->pdata;
	bat_info = &pdata->battery_info;

	switch (psp) {
	case POWER_SUPPLY_PROP_STATUS:
		val->intval = FUNC1(adc_bat);
		break;
	case POWER_SUPPLY_PROP_CHARGE_EMPTY_DESIGN:
		val->intval = 0;
		break;
	case POWER_SUPPLY_PROP_CHARGE_NOW:
		val->intval = pdata->cal_charge(result);
		break;
	case POWER_SUPPLY_PROP_VOLTAGE_NOW:
	case POWER_SUPPLY_PROP_CURRENT_NOW:
	case POWER_SUPPLY_PROP_POWER_NOW:
		ret = FUNC2(adc_bat, psp, &result);
		if (ret < 0)
			goto err;
		val->intval = result;
		break;
	case POWER_SUPPLY_PROP_TECHNOLOGY:
		val->intval = bat_info->technology;
		break;
	case POWER_SUPPLY_PROP_VOLTAGE_MIN_DESIGN:
		val->intval = bat_info->voltage_min_design;
		break;
	case POWER_SUPPLY_PROP_VOLTAGE_MAX_DESIGN:
		val->intval = bat_info->voltage_max_design;
		break;
	case POWER_SUPPLY_PROP_CHARGE_FULL_DESIGN:
		val->intval = bat_info->charge_full_design;
		break;
	case POWER_SUPPLY_PROP_MODEL_NAME:
		val->strval = bat_info->name;
		break;
	default:
		return -EINVAL;
	}
err:
	return ret;
}