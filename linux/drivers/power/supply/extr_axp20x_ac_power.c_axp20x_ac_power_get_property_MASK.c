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
struct axp20x_ac_power {int /*<<< orphan*/  regmap; int /*<<< orphan*/  acin_i; int /*<<< orphan*/  acin_v; } ;
typedef  enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;

/* Variables and functions */
 int /*<<< orphan*/  AXP20X_PWR_INPUT_STATUS ; 
 int AXP20X_PWR_STATUS_ACIN_AVAIL ; 
 int AXP20X_PWR_STATUS_ACIN_PRESENT ; 
 int /*<<< orphan*/  AXP813_ACIN_PATH_CTRL ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int EINVAL ; 
 int POWER_SUPPLY_HEALTH_GOOD ; 
 int POWER_SUPPLY_HEALTH_UNKNOWN ; 
#define  POWER_SUPPLY_PROP_CURRENT_NOW 134 
#define  POWER_SUPPLY_PROP_HEALTH 133 
#define  POWER_SUPPLY_PROP_INPUT_CURRENT_LIMIT 132 
#define  POWER_SUPPLY_PROP_ONLINE 131 
#define  POWER_SUPPLY_PROP_PRESENT 130 
#define  POWER_SUPPLY_PROP_VOLTAGE_MIN 129 
#define  POWER_SUPPLY_PROP_VOLTAGE_NOW 128 
 int FUNC2 (int /*<<< orphan*/ ,int*) ; 
 struct axp20x_ac_power* FUNC3 (struct power_supply*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC5(struct power_supply *psy,
					enum power_supply_property psp,
					union power_supply_propval *val)
{
	struct axp20x_ac_power *power = FUNC3(psy);
	int ret, reg;

	switch (psp) {
	case POWER_SUPPLY_PROP_HEALTH:
		ret = FUNC4(power->regmap, AXP20X_PWR_INPUT_STATUS, &reg);
		if (ret)
			return ret;

		if (reg & AXP20X_PWR_STATUS_ACIN_PRESENT) {
			val->intval = POWER_SUPPLY_HEALTH_GOOD;
			return 0;
		}

		val->intval = POWER_SUPPLY_HEALTH_UNKNOWN;
		return 0;

	case POWER_SUPPLY_PROP_PRESENT:
		ret = FUNC4(power->regmap, AXP20X_PWR_INPUT_STATUS, &reg);
		if (ret)
			return ret;

		val->intval = !!(reg & AXP20X_PWR_STATUS_ACIN_PRESENT);
		return 0;

	case POWER_SUPPLY_PROP_ONLINE:
		ret = FUNC4(power->regmap, AXP20X_PWR_INPUT_STATUS, &reg);
		if (ret)
			return ret;

		val->intval = !!(reg & AXP20X_PWR_STATUS_ACIN_AVAIL);
		return 0;

	case POWER_SUPPLY_PROP_VOLTAGE_NOW:
		ret = FUNC2(power->acin_v, &val->intval);
		if (ret)
			return ret;

		/* IIO framework gives mV but Power Supply framework gives uV */
		val->intval *= 1000;

		return 0;

	case POWER_SUPPLY_PROP_CURRENT_NOW:
		ret = FUNC2(power->acin_i, &val->intval);
		if (ret)
			return ret;

		/* IIO framework gives mA but Power Supply framework gives uA */
		val->intval *= 1000;

		return 0;

	case POWER_SUPPLY_PROP_VOLTAGE_MIN:
		ret = FUNC4(power->regmap, AXP813_ACIN_PATH_CTRL, &reg);
		if (ret)
			return ret;

		val->intval = FUNC1(reg);

		return 0;

	case POWER_SUPPLY_PROP_INPUT_CURRENT_LIMIT:
		ret = FUNC4(power->regmap, AXP813_ACIN_PATH_CTRL, &reg);
		if (ret)
			return ret;

		val->intval = FUNC0(reg);
		/* AXP813 datasheet defines values 11x as 4000mA */
		if (val->intval > 4000000)
			val->intval = 4000000;

		return 0;

	default:
		return -EINVAL;
	}

	return -EINVAL;
}