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
struct lp8788_charger {int dummy; } ;
typedef  enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;

/* Variables and functions */
 int EINVAL ; 
#define  POWER_SUPPLY_PROP_CAPACITY 135 
#define  POWER_SUPPLY_PROP_CONSTANT_CHARGE_CURRENT 134 
#define  POWER_SUPPLY_PROP_CONSTANT_CHARGE_VOLTAGE_MAX 133 
#define  POWER_SUPPLY_PROP_HEALTH 132 
#define  POWER_SUPPLY_PROP_PRESENT 131 
#define  POWER_SUPPLY_PROP_STATUS 130 
#define  POWER_SUPPLY_PROP_TEMP 129 
#define  POWER_SUPPLY_PROP_VOLTAGE_NOW 128 
 struct lp8788_charger* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct lp8788_charger*,union power_supply_propval*) ; 
 int FUNC2 (struct lp8788_charger*,union power_supply_propval*) ; 
 int FUNC3 (struct lp8788_charger*,union power_supply_propval*) ; 
 int FUNC4 (struct lp8788_charger*,union power_supply_propval*) ; 
 int FUNC5 (struct lp8788_charger*,union power_supply_propval*) ; 
 int FUNC6 (struct lp8788_charger*,union power_supply_propval*) ; 
 int FUNC7 (struct lp8788_charger*,union power_supply_propval*) ; 
 int FUNC8 (struct lp8788_charger*,union power_supply_propval*) ; 

__attribute__((used)) static int FUNC9(struct power_supply *psy,
					enum power_supply_property psp,
					union power_supply_propval *val)
{
	struct lp8788_charger *pchg = FUNC0(psy->dev.parent);

	switch (psp) {
	case POWER_SUPPLY_PROP_STATUS:
		return FUNC5(pchg, val);
	case POWER_SUPPLY_PROP_HEALTH:
		return FUNC3(pchg, val);
	case POWER_SUPPLY_PROP_PRESENT:
		return FUNC4(pchg, val);
	case POWER_SUPPLY_PROP_VOLTAGE_NOW:
		return FUNC7(pchg, val);
	case POWER_SUPPLY_PROP_CAPACITY:
		return FUNC1(pchg, val);
	case POWER_SUPPLY_PROP_TEMP:
		return FUNC6(pchg, val);
	case POWER_SUPPLY_PROP_CONSTANT_CHARGE_CURRENT:
		return FUNC2(pchg, val);
	case POWER_SUPPLY_PROP_CONSTANT_CHARGE_VOLTAGE_MAX:
		return FUNC8(pchg, val);
	default:
		return -EINVAL;
	}
}