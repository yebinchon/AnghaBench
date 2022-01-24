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
union power_supply_propval {int intval; } ;
struct power_supply {int dummy; } ;
struct bd70528_psy {int dummy; } ;
typedef  enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;

/* Variables and functions */
 int EINVAL ; 
#define  POWER_SUPPLY_PROP_CONSTANT_CHARGE_CURRENT 129 
#define  POWER_SUPPLY_PROP_INPUT_CURRENT_LIMIT 128 
 struct bd70528_psy* FUNC0 (struct power_supply*) ; 
 int FUNC1 (struct bd70528_psy*,int) ; 
 int FUNC2 (struct bd70528_psy*,int) ; 

__attribute__((used)) static int FUNC3(struct power_supply *psy,
					enum power_supply_property psp,
					const union power_supply_propval *val)
{
	struct bd70528_psy *bdpsy = FUNC0(psy);

	switch (psp) {
	case POWER_SUPPLY_PROP_INPUT_CURRENT_LIMIT:
		return FUNC2(bdpsy, val->intval / 1000);
	case POWER_SUPPLY_PROP_CONSTANT_CHARGE_CURRENT:
		return FUNC1(bdpsy, val->intval / 1000);
	default:
		break;
	}
	return -EINVAL;
}