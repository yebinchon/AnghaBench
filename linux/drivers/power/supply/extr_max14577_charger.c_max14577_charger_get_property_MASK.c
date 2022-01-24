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
union power_supply_propval {int /*<<< orphan*/  strval; int /*<<< orphan*/  intval; } ;
struct power_supply {int dummy; } ;
struct max14577_charger {TYPE_1__* max14577; } ;
typedef  enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;
struct TYPE_2__ {size_t dev_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  MAXIM_DEVICE_TYPE_NUM ; 
#define  POWER_SUPPLY_PROP_CHARGE_TYPE 134 
#define  POWER_SUPPLY_PROP_HEALTH 133 
#define  POWER_SUPPLY_PROP_MANUFACTURER 132 
#define  POWER_SUPPLY_PROP_MODEL_NAME 131 
#define  POWER_SUPPLY_PROP_ONLINE 130 
#define  POWER_SUPPLY_PROP_PRESENT 129 
#define  POWER_SUPPLY_PROP_STATUS 128 
 int /*<<< orphan*/  manufacturer ; 
 int FUNC2 (struct max14577_charger*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct max14577_charger*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct max14577_charger*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct max14577_charger*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct max14577_charger*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * model_names ; 
 struct max14577_charger* FUNC7 (struct power_supply*) ; 

__attribute__((used)) static int FUNC8(struct power_supply *psy,
			    enum power_supply_property psp,
			    union power_supply_propval *val)
{
	struct max14577_charger *chg = FUNC7(psy);
	int ret = 0;

	switch (psp) {
	case POWER_SUPPLY_PROP_STATUS:
		ret = FUNC4(chg, &val->intval);
		break;
	case POWER_SUPPLY_PROP_CHARGE_TYPE:
		ret = FUNC3(chg, &val->intval);
		break;
	case POWER_SUPPLY_PROP_HEALTH:
		ret = FUNC2(chg, &val->intval);
		break;
	case POWER_SUPPLY_PROP_PRESENT:
		ret = FUNC6(chg, &val->intval);
		break;
	case POWER_SUPPLY_PROP_ONLINE:
		ret = FUNC5(chg, &val->intval);
		break;
	case POWER_SUPPLY_PROP_MODEL_NAME:
		FUNC1(FUNC0(model_names) != MAXIM_DEVICE_TYPE_NUM);
		val->strval = model_names[chg->max14577->dev_type];
		break;
	case POWER_SUPPLY_PROP_MANUFACTURER:
		val->strval = manufacturer;
		break;
	default:
		return -EINVAL;
	}

	return ret;
}