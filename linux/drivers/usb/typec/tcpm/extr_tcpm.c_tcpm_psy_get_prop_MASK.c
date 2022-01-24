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
union power_supply_propval {int /*<<< orphan*/  intval; } ;
struct tcpm_port {int /*<<< orphan*/  usb_type; } ;
struct power_supply {int dummy; } ;
typedef  enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;

/* Variables and functions */
 int EINVAL ; 
#define  POWER_SUPPLY_PROP_CURRENT_MAX 134 
#define  POWER_SUPPLY_PROP_CURRENT_NOW 133 
#define  POWER_SUPPLY_PROP_ONLINE 132 
#define  POWER_SUPPLY_PROP_USB_TYPE 131 
#define  POWER_SUPPLY_PROP_VOLTAGE_MAX 130 
#define  POWER_SUPPLY_PROP_VOLTAGE_MIN 129 
#define  POWER_SUPPLY_PROP_VOLTAGE_NOW 128 
 struct tcpm_port* FUNC0 (struct power_supply*) ; 
 int FUNC1 (struct tcpm_port*,union power_supply_propval*) ; 
 int FUNC2 (struct tcpm_port*,union power_supply_propval*) ; 
 int FUNC3 (struct tcpm_port*,union power_supply_propval*) ; 
 int FUNC4 (struct tcpm_port*,union power_supply_propval*) ; 
 int FUNC5 (struct tcpm_port*,union power_supply_propval*) ; 
 int FUNC6 (struct tcpm_port*,union power_supply_propval*) ; 

__attribute__((used)) static int FUNC7(struct power_supply *psy,
			     enum power_supply_property psp,
			     union power_supply_propval *val)
{
	struct tcpm_port *port = FUNC0(psy);
	int ret = 0;

	switch (psp) {
	case POWER_SUPPLY_PROP_USB_TYPE:
		val->intval = port->usb_type;
		break;
	case POWER_SUPPLY_PROP_ONLINE:
		ret = FUNC3(port, val);
		break;
	case POWER_SUPPLY_PROP_VOLTAGE_MIN:
		ret = FUNC5(port, val);
		break;
	case POWER_SUPPLY_PROP_VOLTAGE_MAX:
		ret = FUNC4(port, val);
		break;
	case POWER_SUPPLY_PROP_VOLTAGE_NOW:
		ret = FUNC6(port, val);
		break;
	case POWER_SUPPLY_PROP_CURRENT_MAX:
		ret = FUNC1(port, val);
		break;
	case POWER_SUPPLY_PROP_CURRENT_NOW:
		ret = FUNC2(port, val);
		break;
	default:
		ret = -EINVAL;
		break;
	}

	return ret;
}