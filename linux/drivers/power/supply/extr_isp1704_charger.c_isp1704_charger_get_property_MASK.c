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
union power_supply_propval {char* strval; int /*<<< orphan*/  intval; } ;
struct power_supply {int dummy; } ;
struct isp1704_charger {char* model; int /*<<< orphan*/  current_max; int /*<<< orphan*/  online; int /*<<< orphan*/  present; } ;
typedef  enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;

/* Variables and functions */
 int EINVAL ; 
#define  POWER_SUPPLY_PROP_CURRENT_MAX 132 
#define  POWER_SUPPLY_PROP_MANUFACTURER 131 
#define  POWER_SUPPLY_PROP_MODEL_NAME 130 
#define  POWER_SUPPLY_PROP_ONLINE 129 
#define  POWER_SUPPLY_PROP_PRESENT 128 
 struct isp1704_charger* FUNC0 (struct power_supply*) ; 

__attribute__((used)) static int FUNC1(struct power_supply *psy,
				enum power_supply_property psp,
				union power_supply_propval *val)
{
	struct isp1704_charger *isp = FUNC0(psy);

	switch (psp) {
	case POWER_SUPPLY_PROP_PRESENT:
		val->intval = isp->present;
		break;
	case POWER_SUPPLY_PROP_ONLINE:
		val->intval = isp->online;
		break;
	case POWER_SUPPLY_PROP_CURRENT_MAX:
		val->intval = isp->current_max;
		break;
	case POWER_SUPPLY_PROP_MODEL_NAME:
		val->strval = isp->model;
		break;
	case POWER_SUPPLY_PROP_MANUFACTURER:
		val->strval = "NXP";
		break;
	default:
		return -EINVAL;
	}
	return 0;
}