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
struct ucs1002_info {int dummy; } ;
struct power_supply {int dummy; } ;
typedef  enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;

/* Variables and functions */
 int EINVAL ; 
#define  POWER_SUPPLY_PROP_CURRENT_MAX 129 
#define  POWER_SUPPLY_PROP_USB_TYPE 128 
 struct ucs1002_info* FUNC0 (struct power_supply*) ; 
 int FUNC1 (struct ucs1002_info*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ucs1002_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct power_supply *psy,
				enum power_supply_property psp,
				const union power_supply_propval *val)
{
	struct ucs1002_info *info = FUNC0(psy);

	switch (psp) {
	case POWER_SUPPLY_PROP_CURRENT_MAX:
		return FUNC1(info, val->intval);
	case POWER_SUPPLY_PROP_USB_TYPE:
		return FUNC2(info, val->intval);
	default:
		return -EINVAL;
	}
}