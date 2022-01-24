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
struct axp20x_ac_power {int /*<<< orphan*/  regmap; } ;
typedef  enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;

/* Variables and functions */
 int /*<<< orphan*/  AXP813_ACIN_PATH_CTRL ; 
 int /*<<< orphan*/  AXP813_CURR_LIMIT_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  AXP813_VHOLD_MASK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int EINVAL ; 
#define  POWER_SUPPLY_PROP_INPUT_CURRENT_LIMIT 129 
#define  POWER_SUPPLY_PROP_VOLTAGE_MIN 128 
 struct axp20x_ac_power* FUNC2 (struct power_supply*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct power_supply *psy,
					enum power_supply_property psp,
					const union power_supply_propval *val)
{
	struct axp20x_ac_power *power = FUNC2(psy);

	switch (psp) {
	case POWER_SUPPLY_PROP_VOLTAGE_MIN:
		if (val->intval < 4000000 || val->intval > 4700000)
			return -EINVAL;

		return FUNC3(power->regmap, AXP813_ACIN_PATH_CTRL,
					  AXP813_VHOLD_MASK,
					  FUNC1(val->intval));

	case POWER_SUPPLY_PROP_INPUT_CURRENT_LIMIT:
		if (val->intval < 1500000 || val->intval > 4000000)
			return -EINVAL;

		return FUNC3(power->regmap, AXP813_ACIN_PATH_CTRL,
					  AXP813_CURR_LIMIT_MASK,
					  FUNC0(val->intval));

	default:
		return -EINVAL;
	}

	return -EINVAL;
}