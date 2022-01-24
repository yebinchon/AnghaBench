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
struct lego_ev3_battery {int technology; int v_max; int v_min; int /*<<< orphan*/  iio_i; int /*<<< orphan*/  iio_v; } ;
typedef  enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;

/* Variables and functions */
 int EINVAL ; 
#define  POWER_SUPPLY_PROP_CURRENT_NOW 133 
#define  POWER_SUPPLY_PROP_SCOPE 132 
#define  POWER_SUPPLY_PROP_TECHNOLOGY 131 
#define  POWER_SUPPLY_PROP_VOLTAGE_MAX_DESIGN 130 
#define  POWER_SUPPLY_PROP_VOLTAGE_MIN_DESIGN 129 
#define  POWER_SUPPLY_PROP_VOLTAGE_NOW 128 
 int POWER_SUPPLY_SCOPE_SYSTEM ; 
 int FUNC0 (int /*<<< orphan*/ ,int*) ; 
 struct lego_ev3_battery* FUNC1 (struct power_supply*) ; 

__attribute__((used)) static int FUNC2(struct power_supply *psy,
					 enum power_supply_property psp,
					 union power_supply_propval *val)
{
	struct lego_ev3_battery *batt = FUNC1(psy);
	int ret, val2;

	switch (psp) {
	case POWER_SUPPLY_PROP_TECHNOLOGY:
		val->intval = batt->technology;
		break;
	case POWER_SUPPLY_PROP_VOLTAGE_NOW:
		/* battery voltage is iio channel * 2 + Vce of transistor */
		ret = FUNC0(batt->iio_v, &val->intval);
		if (ret)
			return ret;

		val->intval *= 2000;
		val->intval += 50000;

		/* plus adjust for shunt resistor drop */
		ret = FUNC0(batt->iio_i, &val2);
		if (ret)
			return ret;

		val2 *= 1000;
		val2 /= 15;
		val->intval += val2;
		break;
	case POWER_SUPPLY_PROP_VOLTAGE_MAX_DESIGN:
		val->intval = batt->v_max;
		break;
	case POWER_SUPPLY_PROP_VOLTAGE_MIN_DESIGN:
		val->intval = batt->v_min;
		break;
	case POWER_SUPPLY_PROP_CURRENT_NOW:
		/* battery current is iio channel / 15 / 0.05 ohms */
		ret = FUNC0(batt->iio_i, &val->intval);
		if (ret)
			return ret;

		val->intval *= 20000;
		val->intval /= 15;
		break;
	case POWER_SUPPLY_PROP_SCOPE:
		val->intval = POWER_SUPPLY_SCOPE_SYSTEM;
		break;
	default:
		return -EINVAL;
	}

	return 0;
}