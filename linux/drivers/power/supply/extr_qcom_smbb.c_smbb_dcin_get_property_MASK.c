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
struct smbb_charger {int status; int* attr; int /*<<< orphan*/  statlock; } ;
struct power_supply {int dummy; } ;
typedef  enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;

/* Variables and functions */
 size_t ATTR_DCIN_IMAX ; 
 int EINVAL ; 
#define  POWER_SUPPLY_PROP_CHARGE_CONTROL_LIMIT 130 
#define  POWER_SUPPLY_PROP_CHARGE_CONTROL_LIMIT_MAX 129 
#define  POWER_SUPPLY_PROP_ONLINE 128 
 int STATUS_CHG_GONE ; 
 int STATUS_DCIN_VALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct smbb_charger* FUNC2 (struct power_supply*) ; 

__attribute__((used)) static int FUNC3(struct power_supply *psy,
		enum power_supply_property psp,
		union power_supply_propval *val)
{
	struct smbb_charger *chg = FUNC2(psy);
	int rc = 0;

	switch (psp) {
	case POWER_SUPPLY_PROP_ONLINE:
		FUNC0(&chg->statlock);
		val->intval = !(chg->status & STATUS_CHG_GONE) &&
				(chg->status & STATUS_DCIN_VALID);
		FUNC1(&chg->statlock);
		break;
	case POWER_SUPPLY_PROP_CHARGE_CONTROL_LIMIT:
		val->intval = chg->attr[ATTR_DCIN_IMAX];
		break;
	case POWER_SUPPLY_PROP_CHARGE_CONTROL_LIMIT_MAX:
		val->intval = 2500000;
		break;
	default:
		rc = -EINVAL;
		break;
	}

	return rc;
}