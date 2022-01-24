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
union power_supply_propval {int intval; } ;
struct power_supply {int dummy; } ;
struct charger_manager {struct charger_desc* desc; int /*<<< orphan*/  emergency_stop; } ;
struct charger_desc {int fullbatt_uV; int /*<<< orphan*/  psy_fuel_gauge; } ;
typedef  enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int POWER_SUPPLY_HEALTH_COLD ; 
 int POWER_SUPPLY_HEALTH_GOOD ; 
 int POWER_SUPPLY_HEALTH_OVERHEAT ; 
#define  POWER_SUPPLY_PROP_CAPACITY 138 
#define  POWER_SUPPLY_PROP_CHARGE_FULL 137 
#define  POWER_SUPPLY_PROP_CHARGE_NOW 136 
#define  POWER_SUPPLY_PROP_CURRENT_NOW 135 
#define  POWER_SUPPLY_PROP_HEALTH 134 
#define  POWER_SUPPLY_PROP_ONLINE 133 
#define  POWER_SUPPLY_PROP_PRESENT 132 
#define  POWER_SUPPLY_PROP_STATUS 131 
#define  POWER_SUPPLY_PROP_TEMP 130 
#define  POWER_SUPPLY_PROP_TEMP_AMBIENT 129 
#define  POWER_SUPPLY_PROP_VOLTAGE_NOW 128 
 int POWER_SUPPLY_STATUS_CHARGING ; 
 int POWER_SUPPLY_STATUS_DISCHARGING ; 
 int POWER_SUPPLY_STATUS_NOT_CHARGING ; 
 int FUNC0 (struct charger_manager*,int*) ; 
 int FUNC1 (struct charger_manager*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct charger_manager*) ; 
 int /*<<< orphan*/  FUNC3 (struct charger_manager*) ; 
 int /*<<< orphan*/  FUNC4 (struct charger_manager*) ; 
 int /*<<< orphan*/  FUNC5 (struct charger_manager*) ; 
 struct power_supply* FUNC6 (int /*<<< orphan*/ ) ; 
 struct charger_manager* FUNC7 (struct power_supply*) ; 
 int FUNC8 (struct power_supply*,int const,union power_supply_propval*) ; 
 int /*<<< orphan*/  FUNC9 (struct power_supply*) ; 

__attribute__((used)) static int FUNC10(struct power_supply *psy,
		enum power_supply_property psp,
		union power_supply_propval *val)
{
	struct charger_manager *cm = FUNC7(psy);
	struct charger_desc *desc = cm->desc;
	struct power_supply *fuel_gauge = NULL;
	int ret = 0;
	int uV;

	switch (psp) {
	case POWER_SUPPLY_PROP_STATUS:
		if (FUNC3(cm))
			val->intval = POWER_SUPPLY_STATUS_CHARGING;
		else if (FUNC4(cm))
			val->intval = POWER_SUPPLY_STATUS_NOT_CHARGING;
		else
			val->intval = POWER_SUPPLY_STATUS_DISCHARGING;
		break;
	case POWER_SUPPLY_PROP_HEALTH:
		if (cm->emergency_stop > 0)
			val->intval = POWER_SUPPLY_HEALTH_OVERHEAT;
		else if (cm->emergency_stop < 0)
			val->intval = POWER_SUPPLY_HEALTH_COLD;
		else
			val->intval = POWER_SUPPLY_HEALTH_GOOD;
		break;
	case POWER_SUPPLY_PROP_PRESENT:
		if (FUNC2(cm))
			val->intval = 1;
		else
			val->intval = 0;
		break;
	case POWER_SUPPLY_PROP_VOLTAGE_NOW:
		ret = FUNC1(cm, &val->intval);
		break;
	case POWER_SUPPLY_PROP_CURRENT_NOW:
		fuel_gauge = FUNC6(cm->desc->psy_fuel_gauge);
		if (!fuel_gauge) {
			ret = -ENODEV;
			break;
		}
		ret = FUNC8(fuel_gauge,
				POWER_SUPPLY_PROP_CURRENT_NOW, val);
		break;
	case POWER_SUPPLY_PROP_TEMP:
	case POWER_SUPPLY_PROP_TEMP_AMBIENT:
		return FUNC0(cm, &val->intval);
	case POWER_SUPPLY_PROP_CAPACITY:
		if (!FUNC2(cm)) {
			/* There is no battery. Assume 100% */
			val->intval = 100;
			break;
		}

		fuel_gauge = FUNC6(cm->desc->psy_fuel_gauge);
		if (!fuel_gauge) {
			ret = -ENODEV;
			break;
		}

		ret = FUNC8(fuel_gauge,
					POWER_SUPPLY_PROP_CAPACITY, val);
		if (ret)
			break;

		if (val->intval > 100) {
			val->intval = 100;
			break;
		}
		if (val->intval < 0)
			val->intval = 0;

		/* Do not adjust SOC when charging: voltage is overrated */
		if (FUNC3(cm))
			break;

		/*
		 * If the capacity value is inconsistent, calibrate it base on
		 * the battery voltage values and the thresholds given as desc
		 */
		ret = FUNC1(cm, &uV);
		if (ret) {
			/* Voltage information not available. No calibration */
			ret = 0;
			break;
		}

		if (desc->fullbatt_uV > 0 && uV >= desc->fullbatt_uV &&
		    !FUNC3(cm)) {
			val->intval = 100;
			break;
		}

		break;
	case POWER_SUPPLY_PROP_ONLINE:
		if (FUNC4(cm))
			val->intval = 1;
		else
			val->intval = 0;
		break;
	case POWER_SUPPLY_PROP_CHARGE_FULL:
		if (FUNC5(cm))
			val->intval = 1;
		else
			val->intval = 0;
		ret = 0;
		break;
	case POWER_SUPPLY_PROP_CHARGE_NOW:
		if (FUNC3(cm)) {
			fuel_gauge = FUNC6(
					cm->desc->psy_fuel_gauge);
			if (!fuel_gauge) {
				ret = -ENODEV;
				break;
			}

			ret = FUNC8(fuel_gauge,
						POWER_SUPPLY_PROP_CHARGE_NOW,
						val);
			if (ret) {
				val->intval = 1;
				ret = 0;
			} else {
				/* If CHARGE_NOW is supplied, use it */
				val->intval = (val->intval > 0) ?
						val->intval : 1;
			}
		} else {
			val->intval = 0;
		}
		break;
	default:
		return -EINVAL;
	}
	if (fuel_gauge)
		FUNC9(fuel_gauge);
	return ret;
}