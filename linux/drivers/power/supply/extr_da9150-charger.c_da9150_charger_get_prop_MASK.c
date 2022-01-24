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
typedef  union power_supply_propval {int dummy; } power_supply_propval ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct power_supply {TYPE_1__ dev; } ;
struct da9150_charger {int dummy; } ;
typedef  enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;

/* Variables and functions */
 int EINVAL ; 
#define  POWER_SUPPLY_PROP_CURRENT_AVG 131 
#define  POWER_SUPPLY_PROP_ONLINE 130 
#define  POWER_SUPPLY_PROP_TEMP 129 
#define  POWER_SUPPLY_PROP_VOLTAGE_NOW 128 
 int FUNC0 (struct da9150_charger*,union power_supply_propval*) ; 
 int FUNC1 (struct da9150_charger*,struct power_supply*,union power_supply_propval*) ; 
 int FUNC2 (struct da9150_charger*,union power_supply_propval*) ; 
 int FUNC3 (struct da9150_charger*,union power_supply_propval*) ; 
 struct da9150_charger* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct power_supply *psy,
				   enum power_supply_property psp,
				   union power_supply_propval *val)
{
	struct da9150_charger *charger = FUNC4(psy->dev.parent);
	int ret;

	switch (psp) {
	case POWER_SUPPLY_PROP_ONLINE:
		ret = FUNC1(charger, psy, val);
		break;
	case POWER_SUPPLY_PROP_VOLTAGE_NOW:
		ret = FUNC3(charger, val);
		break;
	case POWER_SUPPLY_PROP_CURRENT_AVG:
		ret = FUNC0(charger, val);
		break;
	case POWER_SUPPLY_PROP_TEMP:
		ret = FUNC2(charger, val);
		break;
	default:
		ret = -EINVAL;
		break;
	}

	return ret;
}