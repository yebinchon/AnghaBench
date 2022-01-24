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
struct regmap {int dummy; } ;
struct power_supply {int dummy; } ;
typedef  enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;

/* Variables and functions */
 int EINVAL ; 
#define  POWER_SUPPLY_PROP_STATUS 128 
 int FUNC0 (struct regmap*) ; 
 struct regmap* FUNC1 (struct power_supply*) ; 

__attribute__((used)) static int FUNC2(struct power_supply *psy,
		enum power_supply_property psp, union power_supply_propval *val)
{
	struct regmap *map = FUNC1(psy);
	int ret;

	switch (psp) {
	case POWER_SUPPLY_PROP_STATUS:
		ret = FUNC0(map);
		if (ret < 0)
			return ret;

		val->intval = ret;
		break;
	default:
		return -EINVAL;
	}

	return 0;
}