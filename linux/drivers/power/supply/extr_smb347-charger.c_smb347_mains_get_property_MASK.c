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
struct smb347_charger {int mains_online; } ;
struct power_supply {int dummy; } ;
typedef  enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;

/* Variables and functions */
 int EINVAL ; 
#define  POWER_SUPPLY_PROP_CONSTANT_CHARGE_CURRENT 130 
#define  POWER_SUPPLY_PROP_CONSTANT_CHARGE_VOLTAGE 129 
#define  POWER_SUPPLY_PROP_ONLINE 128 
 int FUNC0 (struct smb347_charger*) ; 
 int FUNC1 (struct smb347_charger*) ; 
 struct smb347_charger* FUNC2 (struct power_supply*) ; 

__attribute__((used)) static int FUNC3(struct power_supply *psy,
				     enum power_supply_property prop,
				     union power_supply_propval *val)
{
	struct smb347_charger *smb = FUNC2(psy);
	int ret;

	switch (prop) {
	case POWER_SUPPLY_PROP_ONLINE:
		val->intval = smb->mains_online;
		break;

	case POWER_SUPPLY_PROP_CONSTANT_CHARGE_VOLTAGE:
		ret = FUNC1(smb);
		if (ret < 0)
			return ret;
		else
			val->intval = ret;
		break;

	case POWER_SUPPLY_PROP_CONSTANT_CHARGE_CURRENT:
		ret = FUNC0(smb);
		if (ret < 0)
			return ret;
		else
			val->intval = ret;
		break;

	default:
		return -EINVAL;
	}

	return 0;
}