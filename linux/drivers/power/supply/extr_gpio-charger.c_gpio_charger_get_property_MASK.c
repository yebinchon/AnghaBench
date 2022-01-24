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
struct gpio_charger {int /*<<< orphan*/  charge_status; int /*<<< orphan*/  gpiod; } ;
typedef  enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;

/* Variables and functions */
 int EINVAL ; 
#define  POWER_SUPPLY_PROP_ONLINE 129 
#define  POWER_SUPPLY_PROP_STATUS 128 
 int /*<<< orphan*/  POWER_SUPPLY_STATUS_CHARGING ; 
 int /*<<< orphan*/  POWER_SUPPLY_STATUS_NOT_CHARGING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct gpio_charger* FUNC1 (struct power_supply*) ; 

__attribute__((used)) static int FUNC2(struct power_supply *psy,
		enum power_supply_property psp, union power_supply_propval *val)
{
	struct gpio_charger *gpio_charger = FUNC1(psy);

	switch (psp) {
	case POWER_SUPPLY_PROP_ONLINE:
		val->intval = FUNC0(gpio_charger->gpiod);
		break;
	case POWER_SUPPLY_PROP_STATUS:
		if (FUNC0(gpio_charger->charge_status))
			val->intval = POWER_SUPPLY_STATUS_CHARGING;
		else
			val->intval = POWER_SUPPLY_STATUS_NOT_CHARGING;
		break;
	default:
		return -EINVAL;
	}

	return 0;
}