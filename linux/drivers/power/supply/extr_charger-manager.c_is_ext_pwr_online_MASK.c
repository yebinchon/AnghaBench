#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
union power_supply_propval {scalar_t__ intval; } ;
struct power_supply {int dummy; } ;
struct charger_manager {TYPE_1__* desc; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {scalar_t__* psy_charger_stat; } ;

/* Variables and functions */
 int /*<<< orphan*/  POWER_SUPPLY_PROP_ONLINE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 struct power_supply* FUNC1 (scalar_t__) ; 
 int FUNC2 (struct power_supply*,int /*<<< orphan*/ ,union power_supply_propval*) ; 
 int /*<<< orphan*/  FUNC3 (struct power_supply*) ; 

__attribute__((used)) static bool FUNC4(struct charger_manager *cm)
{
	union power_supply_propval val;
	struct power_supply *psy;
	bool online = false;
	int i, ret;

	/* If at least one of them has one, it's yes. */
	for (i = 0; cm->desc->psy_charger_stat[i]; i++) {
		psy = FUNC1(cm->desc->psy_charger_stat[i]);
		if (!psy) {
			FUNC0(cm->dev, "Cannot find power supply \"%s\"\n",
					cm->desc->psy_charger_stat[i]);
			continue;
		}

		ret = FUNC2(psy, POWER_SUPPLY_PROP_ONLINE,
				&val);
		FUNC3(psy);
		if (ret == 0 && val.intval) {
			online = true;
			break;
		}
	}

	return online;
}