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
union power_supply_propval {scalar_t__ intval; } ;
struct power_supply {int dummy; } ;
struct charger_manager {struct charger_desc* desc; } ;
struct charger_desc {scalar_t__ fullbatt_full_capacity; int fullbatt_uV; scalar_t__ fullbatt_soc; int /*<<< orphan*/  psy_fuel_gauge; } ;

/* Variables and functions */
 int /*<<< orphan*/  POWER_SUPPLY_PROP_CAPACITY ; 
 int /*<<< orphan*/  POWER_SUPPLY_PROP_CHARGE_FULL ; 
 int FUNC0 (struct charger_manager*,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct charger_manager*) ; 
 struct power_supply* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct power_supply*,int /*<<< orphan*/ ,union power_supply_propval*) ; 
 int /*<<< orphan*/  FUNC4 (struct power_supply*) ; 

__attribute__((used)) static bool FUNC5(struct charger_manager *cm)
{
	struct charger_desc *desc = cm->desc;
	union power_supply_propval val;
	struct power_supply *fuel_gauge;
	bool is_full = false;
	int ret = 0;
	int uV;

	/* If there is no battery, it cannot be charged */
	if (!FUNC1(cm))
		return false;

	fuel_gauge = FUNC2(cm->desc->psy_fuel_gauge);
	if (!fuel_gauge)
		return false;

	if (desc->fullbatt_full_capacity > 0) {
		val.intval = 0;

		/* Not full if capacity of fuel gauge isn't full */
		ret = FUNC3(fuel_gauge,
				POWER_SUPPLY_PROP_CHARGE_FULL, &val);
		if (!ret && val.intval > desc->fullbatt_full_capacity) {
			is_full = true;
			goto out;
		}
	}

	/* Full, if it's over the fullbatt voltage */
	if (desc->fullbatt_uV > 0) {
		ret = FUNC0(cm, &uV);
		if (!ret && uV >= desc->fullbatt_uV) {
			is_full = true;
			goto out;
		}
	}

	/* Full, if the capacity is more than fullbatt_soc */
	if (desc->fullbatt_soc > 0) {
		val.intval = 0;

		ret = FUNC3(fuel_gauge,
				POWER_SUPPLY_PROP_CAPACITY, &val);
		if (!ret && val.intval >= desc->fullbatt_soc) {
			is_full = true;
			goto out;
		}
	}

out:
	FUNC4(fuel_gauge);
	return is_full;
}