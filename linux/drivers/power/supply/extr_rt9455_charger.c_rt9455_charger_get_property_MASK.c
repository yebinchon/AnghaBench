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
struct rt9455_info {int dummy; } ;
struct power_supply {int dummy; } ;
typedef  enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;

/* Variables and functions */
 int ENODATA ; 
#define  POWER_SUPPLY_PROP_CHARGE_TERM_CURRENT 139 
#define  POWER_SUPPLY_PROP_CONSTANT_CHARGE_CURRENT 138 
#define  POWER_SUPPLY_PROP_CONSTANT_CHARGE_CURRENT_MAX 137 
#define  POWER_SUPPLY_PROP_CONSTANT_CHARGE_VOLTAGE 136 
#define  POWER_SUPPLY_PROP_CONSTANT_CHARGE_VOLTAGE_MAX 135 
#define  POWER_SUPPLY_PROP_HEALTH 134 
#define  POWER_SUPPLY_PROP_MANUFACTURER 133 
#define  POWER_SUPPLY_PROP_MODEL_NAME 132 
#define  POWER_SUPPLY_PROP_ONLINE 131 
#define  POWER_SUPPLY_PROP_PRESENT 130 
#define  POWER_SUPPLY_PROP_SCOPE 129 
#define  POWER_SUPPLY_PROP_STATUS 128 
 int /*<<< orphan*/  POWER_SUPPLY_SCOPE_SYSTEM ; 
 int /*<<< orphan*/  RT9455_MANUFACTURER ; 
 int /*<<< orphan*/  RT9455_MODEL_NAME ; 
 struct rt9455_info* FUNC0 (struct power_supply*) ; 
 int FUNC1 (struct rt9455_info*,union power_supply_propval*) ; 
 int FUNC2 (struct rt9455_info*,union power_supply_propval*) ; 
 int FUNC3 (struct rt9455_info*,union power_supply_propval*) ; 
 int FUNC4 (struct rt9455_info*,union power_supply_propval*) ; 
 int FUNC5 (struct rt9455_info*,union power_supply_propval*) ; 
 int FUNC6 (struct rt9455_info*,union power_supply_propval*) ; 
 int FUNC7 (struct rt9455_info*,union power_supply_propval*) ; 
 int FUNC8 (struct rt9455_info*,union power_supply_propval*) ; 
 int FUNC9 (struct rt9455_info*,union power_supply_propval*) ; 

__attribute__((used)) static int FUNC10(struct power_supply *psy,
				       enum power_supply_property psp,
				       union power_supply_propval *val)
{
	struct rt9455_info *info = FUNC0(psy);

	switch (psp) {
	case POWER_SUPPLY_PROP_STATUS:
		return FUNC6(info, val);
	case POWER_SUPPLY_PROP_HEALTH:
		return FUNC4(info, val);
	case POWER_SUPPLY_PROP_PRESENT:
		return FUNC1(info, val);
	case POWER_SUPPLY_PROP_ONLINE:
		return FUNC5(info, val);
	case POWER_SUPPLY_PROP_CONSTANT_CHARGE_CURRENT:
		return FUNC2(info, val);
	case POWER_SUPPLY_PROP_CONSTANT_CHARGE_CURRENT_MAX:
		return FUNC3(info, val);
	case POWER_SUPPLY_PROP_CONSTANT_CHARGE_VOLTAGE:
		return FUNC8(info, val);
	case POWER_SUPPLY_PROP_CONSTANT_CHARGE_VOLTAGE_MAX:
		return FUNC9(info, val);
	case POWER_SUPPLY_PROP_SCOPE:
		val->intval = POWER_SUPPLY_SCOPE_SYSTEM;
		return 0;
	case POWER_SUPPLY_PROP_CHARGE_TERM_CURRENT:
		return FUNC7(info, val);
	case POWER_SUPPLY_PROP_MODEL_NAME:
		val->strval = RT9455_MODEL_NAME;
		return 0;
	case POWER_SUPPLY_PROP_MANUFACTURER:
		val->strval = RT9455_MANUFACTURER;
		return 0;
	default:
		return -ENODATA;
	}
}