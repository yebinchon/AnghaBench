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
union power_supply_propval {int intval; int /*<<< orphan*/  strval; } ;
struct power_supply {int dummy; } ;
struct bd70528_psy {int dummy; } ;
typedef  enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;

/* Variables and functions */
 int EINVAL ; 
#define  POWER_SUPPLY_PROP_CHARGE_TYPE 136 
#define  POWER_SUPPLY_PROP_CONSTANT_CHARGE_CURRENT 135 
#define  POWER_SUPPLY_PROP_HEALTH 134 
#define  POWER_SUPPLY_PROP_INPUT_CURRENT_LIMIT 133 
#define  POWER_SUPPLY_PROP_MANUFACTURER 132 
#define  POWER_SUPPLY_PROP_MODEL_NAME 131 
#define  POWER_SUPPLY_PROP_ONLINE 130 
#define  POWER_SUPPLY_PROP_PRESENT 129 
#define  POWER_SUPPLY_PROP_STATUS 128 
 int /*<<< orphan*/  bd70528_charger_manufacturer ; 
 int /*<<< orphan*/  bd70528_charger_model ; 
 int FUNC0 (struct bd70528_psy*,int*) ; 
 int FUNC1 (struct bd70528_psy*,int*) ; 
 int FUNC2 (struct bd70528_psy*,int*) ; 
 int FUNC3 (struct bd70528_psy*,int*) ; 
 int FUNC4 (struct bd70528_psy*,int*) ; 
 int FUNC5 (struct bd70528_psy*,int*) ; 
 int FUNC6 (struct bd70528_psy*,int*) ; 
 struct bd70528_psy* FUNC7 (struct power_supply*) ; 

__attribute__((used)) static int FUNC8(struct power_supply *psy,
					enum power_supply_property psp,
					union power_supply_propval *val)
{
	struct bd70528_psy *bdpsy = FUNC7(psy);
	int ret = 0;

	switch (psp) {
	case POWER_SUPPLY_PROP_STATUS:
		return FUNC2(bdpsy, &val->intval);
	case POWER_SUPPLY_PROP_CHARGE_TYPE:
		return FUNC1(bdpsy, &val->intval);
	case POWER_SUPPLY_PROP_HEALTH:
		return FUNC0(bdpsy, &val->intval);
	case POWER_SUPPLY_PROP_PRESENT:
		return FUNC4(bdpsy, &val->intval);
	case POWER_SUPPLY_PROP_INPUT_CURRENT_LIMIT:
		ret = FUNC6(bdpsy, &val->intval);
		val->intval *= 1000;
		return ret;
	case POWER_SUPPLY_PROP_CONSTANT_CHARGE_CURRENT:
		ret = FUNC5(bdpsy, &val->intval);
		val->intval *= 1000;
		return ret;
	case POWER_SUPPLY_PROP_ONLINE:
		return FUNC3(bdpsy, &val->intval);
	case POWER_SUPPLY_PROP_MODEL_NAME:
		val->strval = bd70528_charger_model;
		return 0;
	case POWER_SUPPLY_PROP_MANUFACTURER:
		val->strval = bd70528_charger_manufacturer;
		return 0;
	default:
		break;
	}

	return -EINVAL;
}