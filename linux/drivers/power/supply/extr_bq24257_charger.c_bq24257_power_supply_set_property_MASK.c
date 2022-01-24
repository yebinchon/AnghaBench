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
typedef  union power_supply_propval {int dummy; } power_supply_propval ;
struct power_supply {int dummy; } ;
struct bq24257_device {int dummy; } ;
typedef  enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;

/* Variables and functions */
 int EINVAL ; 
#define  POWER_SUPPLY_PROP_INPUT_CURRENT_LIMIT 128 
 int FUNC0 (struct bq24257_device*,union power_supply_propval const*) ; 
 struct bq24257_device* FUNC1 (struct power_supply*) ; 

__attribute__((used)) static int FUNC2(struct power_supply *psy,
					enum power_supply_property prop,
					const union power_supply_propval *val)
{
	struct bq24257_device *bq = FUNC1(psy);

	switch (prop) {
	case POWER_SUPPLY_PROP_INPUT_CURRENT_LIMIT:
		return FUNC0(bq, val);
	default:
		return -EINVAL;
	}
}