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
union power_supply_propval {int intval; } ;
struct power_supply {int dummy; } ;
struct max8903_data {int /*<<< orphan*/  fault; int /*<<< orphan*/  ta_in; int /*<<< orphan*/  usb_in; TYPE_1__* pdata; } ;
typedef  enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;
struct TYPE_2__ {int /*<<< orphan*/  chg; } ;

/* Variables and functions */
 int EINVAL ; 
 int POWER_SUPPLY_HEALTH_GOOD ; 
 int POWER_SUPPLY_HEALTH_UNSPEC_FAILURE ; 
#define  POWER_SUPPLY_PROP_HEALTH 130 
#define  POWER_SUPPLY_PROP_ONLINE 129 
#define  POWER_SUPPLY_PROP_STATUS 128 
 int POWER_SUPPLY_STATUS_CHARGING ; 
 int POWER_SUPPLY_STATUS_DISCHARGING ; 
 int POWER_SUPPLY_STATUS_NOT_CHARGING ; 
 int POWER_SUPPLY_STATUS_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct max8903_data* FUNC2 (struct power_supply*) ; 

__attribute__((used)) static int FUNC3(struct power_supply *psy,
		enum power_supply_property psp,
		union power_supply_propval *val)
{
	struct max8903_data *data = FUNC2(psy);

	switch (psp) {
	case POWER_SUPPLY_PROP_STATUS:
		val->intval = POWER_SUPPLY_STATUS_UNKNOWN;
		if (FUNC1(data->pdata->chg)) {
			if (FUNC0(data->pdata->chg) == 0)
				val->intval = POWER_SUPPLY_STATUS_CHARGING;
			else if (data->usb_in || data->ta_in)
				val->intval = POWER_SUPPLY_STATUS_NOT_CHARGING;
			else
				val->intval = POWER_SUPPLY_STATUS_DISCHARGING;
		}
		break;
	case POWER_SUPPLY_PROP_ONLINE:
		val->intval = 0;
		if (data->usb_in || data->ta_in)
			val->intval = 1;
		break;
	case POWER_SUPPLY_PROP_HEALTH:
		val->intval = POWER_SUPPLY_HEALTH_GOOD;
		if (data->fault)
			val->intval = POWER_SUPPLY_HEALTH_UNSPEC_FAILURE;
		break;
	default:
		return -EINVAL;
	}

	return 0;
}