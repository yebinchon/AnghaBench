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
struct ucs1002_info {int /*<<< orphan*/  present; } ;
struct power_supply {int dummy; } ;
typedef  enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;

/* Variables and functions */
 int EINVAL ; 
#define  POWER_SUPPLY_PROP_CHARGE_NOW 135 
#define  POWER_SUPPLY_PROP_CURRENT_MAX 134 
#define  POWER_SUPPLY_PROP_CURRENT_NOW 133 
#define  POWER_SUPPLY_PROP_HEALTH 132 
#define  POWER_SUPPLY_PROP_MANUFACTURER 131 
#define  POWER_SUPPLY_PROP_ONLINE 130 
#define  POWER_SUPPLY_PROP_PRESENT 129 
#define  POWER_SUPPLY_PROP_USB_TYPE 128 
 int /*<<< orphan*/  UCS1002_MANUFACTURER ; 
 struct ucs1002_info* FUNC0 (struct power_supply*) ; 
 int FUNC1 (struct ucs1002_info*,union power_supply_propval*) ; 
 int FUNC2 (struct ucs1002_info*,union power_supply_propval*) ; 
 int FUNC3 (struct ucs1002_info*,union power_supply_propval*) ; 
 int FUNC4 (struct ucs1002_info*,union power_supply_propval*) ; 
 int FUNC5 (struct ucs1002_info*,union power_supply_propval*) ; 
 int FUNC6 (struct ucs1002_info*,union power_supply_propval*) ; 

__attribute__((used)) static int FUNC7(struct power_supply *psy,
				enum power_supply_property psp,
				union power_supply_propval *val)
{
	struct ucs1002_info *info = FUNC0(psy);

	switch (psp) {
	case POWER_SUPPLY_PROP_ONLINE:
		return FUNC5(info, val);
	case POWER_SUPPLY_PROP_CHARGE_NOW:
		return FUNC1(info, val);
	case POWER_SUPPLY_PROP_CURRENT_NOW:
		return FUNC2(info, val);
	case POWER_SUPPLY_PROP_CURRENT_MAX:
		return FUNC4(info, val);
	case POWER_SUPPLY_PROP_USB_TYPE:
		return FUNC6(info, val);
	case POWER_SUPPLY_PROP_HEALTH:
		return FUNC3(info, val);
	case POWER_SUPPLY_PROP_PRESENT:
		val->intval = info->present;
		return 0;
	case POWER_SUPPLY_PROP_MANUFACTURER:
		val->strval = UCS1002_MANUFACTURER;
		return 0;
	default:
		return -EINVAL;
	}
}