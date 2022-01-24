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
struct sc2731_charger_info {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; int /*<<< orphan*/  charging; } ;
struct power_supply {int dummy; } ;
typedef  enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
#define  POWER_SUPPLY_PROP_CONSTANT_CHARGE_CURRENT 129 
#define  POWER_SUPPLY_PROP_INPUT_CURRENT_LIMIT 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct sc2731_charger_info* FUNC3 (struct power_supply*) ; 
 int FUNC4 (struct sc2731_charger_info*,int) ; 
 int FUNC5 (struct sc2731_charger_info*,int) ; 

__attribute__((used)) static int
FUNC6(struct power_supply *psy,
				enum power_supply_property psp,
				const union power_supply_propval *val)
{
	struct sc2731_charger_info *info = FUNC3(psy);
	int ret;

	FUNC1(&info->lock);

	if (!info->charging) {
		FUNC2(&info->lock);
		return -ENODEV;
	}

	switch (psp) {
	case POWER_SUPPLY_PROP_CONSTANT_CHARGE_CURRENT:
		ret = FUNC4(info, val->intval / 1000);
		if (ret < 0)
			FUNC0(info->dev, "set charge current failed\n");
		break;

	case POWER_SUPPLY_PROP_INPUT_CURRENT_LIMIT:
		ret = FUNC5(info,
						       val->intval / 1000);
		if (ret < 0)
			FUNC0(info->dev, "set input current limit failed\n");
		break;

	default:
		ret = -EINVAL;
	}

	FUNC2(&info->lock);
	return ret;
}