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
typedef  int u32 ;
struct sc2731_charger_info {int /*<<< orphan*/  lock; int /*<<< orphan*/  charging; } ;
struct power_supply {int dummy; } ;
typedef  enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;

/* Variables and functions */
 int EINVAL ; 
#define  POWER_SUPPLY_PROP_CONSTANT_CHARGE_CURRENT 130 
#define  POWER_SUPPLY_PROP_INPUT_CURRENT_LIMIT 129 
#define  POWER_SUPPLY_PROP_STATUS 128 
 int POWER_SUPPLY_STATUS_NOT_CHARGING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct sc2731_charger_info* FUNC2 (struct power_supply*) ; 
 int FUNC3 (struct sc2731_charger_info*,int*) ; 
 int FUNC4 (struct sc2731_charger_info*,int*) ; 
 int FUNC5 (struct sc2731_charger_info*) ; 

__attribute__((used)) static int FUNC6(struct power_supply *psy,
					   enum power_supply_property psp,
					   union power_supply_propval *val)
{
	struct sc2731_charger_info *info = FUNC2(psy);
	int ret = 0;
	u32 cur;

	FUNC0(&info->lock);

	switch (psp) {
	case POWER_SUPPLY_PROP_STATUS:
		if (info->charging)
			val->intval = FUNC5(info);
		else
			val->intval = POWER_SUPPLY_STATUS_NOT_CHARGING;
		break;

	case POWER_SUPPLY_PROP_CONSTANT_CHARGE_CURRENT:
		if (!info->charging) {
			val->intval = 0;
		} else {
			ret = FUNC3(info, &cur);
			if (ret)
				goto out;

			val->intval = cur * 1000;
		}
		break;

	case POWER_SUPPLY_PROP_INPUT_CURRENT_LIMIT:
		if (!info->charging) {
			val->intval = 0;
		} else {
			ret = FUNC4(info, &cur);
			if (ret)
				goto out;

			val->intval = cur * 1000;
		}
		break;

	default:
		ret = -EINVAL;
	}

out:
	FUNC1(&info->lock);
	return ret;
}