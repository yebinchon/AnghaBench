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
struct power_supply {int dummy; } ;
struct axp20x_usb_power {int /*<<< orphan*/  axp20x_id; } ;
typedef  enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;

/* Variables and functions */
 int /*<<< orphan*/  AXP813_ID ; 
 int EINVAL ; 
#define  POWER_SUPPLY_PROP_CURRENT_MAX 129 
#define  POWER_SUPPLY_PROP_VOLTAGE_MIN 128 
 int FUNC0 (struct axp20x_usb_power*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct axp20x_usb_power*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct axp20x_usb_power*,int /*<<< orphan*/ ) ; 
 struct axp20x_usb_power* FUNC3 (struct power_supply*) ; 

__attribute__((used)) static int FUNC4(struct power_supply *psy,
					 enum power_supply_property psp,
					 const union power_supply_propval *val)
{
	struct axp20x_usb_power *power = FUNC3(psy);

	switch (psp) {
	case POWER_SUPPLY_PROP_VOLTAGE_MIN:
		return FUNC1(power, val->intval);

	case POWER_SUPPLY_PROP_CURRENT_MAX:
		if (power->axp20x_id == AXP813_ID)
			return FUNC2(power,
								val->intval);
		return FUNC0(power, val->intval);

	default:
		return -EINVAL;
	}

	return -EINVAL;
}