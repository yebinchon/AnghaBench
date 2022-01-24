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
union power_supply_propval {int /*<<< orphan*/  strval; int /*<<< orphan*/  intval; } ;
struct regmap {int dummy; } ;
struct power_supply {int dummy; } ;
struct act8945a_charger {struct regmap* regmap; } ;
typedef  enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;

/* Variables and functions */
 int EINVAL ; 
#define  POWER_SUPPLY_PROP_CAPACITY_LEVEL 135 
#define  POWER_SUPPLY_PROP_CHARGE_TYPE 134 
#define  POWER_SUPPLY_PROP_CURRENT_MAX 133 
#define  POWER_SUPPLY_PROP_HEALTH 132 
#define  POWER_SUPPLY_PROP_MANUFACTURER 131 
#define  POWER_SUPPLY_PROP_MODEL_NAME 130 
#define  POWER_SUPPLY_PROP_STATUS 129 
#define  POWER_SUPPLY_PROP_TECHNOLOGY 128 
 int /*<<< orphan*/  POWER_SUPPLY_TECHNOLOGY_LION ; 
 int /*<<< orphan*/  act8945a_charger_manufacturer ; 
 int /*<<< orphan*/  act8945a_charger_model ; 
 int FUNC0 (struct regmap*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct act8945a_charger*,struct regmap*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct regmap*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct regmap*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct act8945a_charger*,struct regmap*,int /*<<< orphan*/ *) ; 
 struct act8945a_charger* FUNC5 (struct power_supply*) ; 

__attribute__((used)) static int FUNC6(struct power_supply *psy,
					 enum power_supply_property prop,
					 union power_supply_propval *val)
{
	struct act8945a_charger *charger = FUNC5(psy);
	struct regmap *regmap = charger->regmap;
	int ret = 0;

	switch (prop) {
	case POWER_SUPPLY_PROP_STATUS:
		ret = FUNC3(regmap, &val->intval);
		break;
	case POWER_SUPPLY_PROP_CHARGE_TYPE:
		ret = FUNC2(regmap, &val->intval);
		break;
	case POWER_SUPPLY_PROP_TECHNOLOGY:
		val->intval = POWER_SUPPLY_TECHNOLOGY_LION;
		break;
	case POWER_SUPPLY_PROP_HEALTH:
		ret = FUNC0(regmap, &val->intval);
		break;
	case POWER_SUPPLY_PROP_CAPACITY_LEVEL:
		ret = FUNC1(charger,
						  regmap, &val->intval);
		break;
	case POWER_SUPPLY_PROP_CURRENT_MAX:
		ret = FUNC4(charger,
					       regmap, &val->intval);
		break;
	case POWER_SUPPLY_PROP_MODEL_NAME:
		val->strval = act8945a_charger_model;
		break;
	case POWER_SUPPLY_PROP_MANUFACTURER:
		val->strval = act8945a_charger_manufacturer;
		break;
	default:
		return -EINVAL;
	}

	return ret;
}