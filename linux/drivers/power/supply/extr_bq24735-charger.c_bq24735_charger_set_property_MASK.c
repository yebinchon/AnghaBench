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
union power_supply_propval {int /*<<< orphan*/  intval; } ;
struct power_supply {int dummy; } ;
struct bq24735 {int charging; int /*<<< orphan*/  lock; } ;
typedef  enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
#define  POWER_SUPPLY_PROP_STATUS 131 
#define  POWER_SUPPLY_STATUS_CHARGING 130 
#define  POWER_SUPPLY_STATUS_DISCHARGING 129 
#define  POWER_SUPPLY_STATUS_NOT_CHARGING 128 
 int FUNC0 (struct bq24735*) ; 
 int FUNC1 (struct bq24735*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct power_supply*) ; 
 struct bq24735* FUNC5 (struct power_supply*) ; 

__attribute__((used)) static int FUNC6(struct power_supply *psy,
					enum power_supply_property psp,
					const union power_supply_propval *val)
{
	struct bq24735 *charger = FUNC5(psy);
	int ret;

	switch (psp) {
	case POWER_SUPPLY_PROP_STATUS:
		switch (val->intval) {
		case POWER_SUPPLY_STATUS_CHARGING:
			FUNC2(&charger->lock);
			charger->charging = true;
			ret = FUNC1(charger);
			FUNC3(&charger->lock);
			if (ret)
				return ret;
			break;
		case POWER_SUPPLY_STATUS_DISCHARGING:
		case POWER_SUPPLY_STATUS_NOT_CHARGING:
			FUNC2(&charger->lock);
			charger->charging = false;
			ret = FUNC0(charger);
			FUNC3(&charger->lock);
			if (ret)
				return ret;
			break;
		default:
			return -EINVAL;
		}
		FUNC4(psy);
		break;
	default:
		return -EPERM;
	}

	return 0;
}