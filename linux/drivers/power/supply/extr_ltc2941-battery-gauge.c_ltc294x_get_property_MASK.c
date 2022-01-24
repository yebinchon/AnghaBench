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
struct ltc294x_info {int dummy; } ;
typedef  enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  LTC294X_REG_ACC_CHARGE_MSB ; 
 int /*<<< orphan*/  LTC294X_REG_CHARGE_THR_HIGH_MSB ; 
 int /*<<< orphan*/  LTC294X_REG_CHARGE_THR_LOW_MSB ; 
#define  POWER_SUPPLY_PROP_CHARGE_COUNTER 134 
#define  POWER_SUPPLY_PROP_CHARGE_EMPTY 133 
#define  POWER_SUPPLY_PROP_CHARGE_FULL 132 
#define  POWER_SUPPLY_PROP_CHARGE_NOW 131 
#define  POWER_SUPPLY_PROP_CURRENT_NOW 130 
#define  POWER_SUPPLY_PROP_TEMP 129 
#define  POWER_SUPPLY_PROP_VOLTAGE_NOW 128 
 int FUNC0 (struct ltc294x_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct ltc294x_info*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct ltc294x_info*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct ltc294x_info*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct ltc294x_info*,int /*<<< orphan*/ *) ; 
 struct ltc294x_info* FUNC5 (struct power_supply*) ; 

__attribute__((used)) static int FUNC6(struct power_supply *psy,
				enum power_supply_property prop,
				union power_supply_propval *val)
{
	struct ltc294x_info *info = FUNC5(psy);

	switch (prop) {
	case POWER_SUPPLY_PROP_CHARGE_FULL:
		return FUNC0(info, LTC294X_REG_CHARGE_THR_HIGH_MSB,
						&val->intval);
	case POWER_SUPPLY_PROP_CHARGE_EMPTY:
		return FUNC0(info, LTC294X_REG_CHARGE_THR_LOW_MSB,
						&val->intval);
	case POWER_SUPPLY_PROP_CHARGE_NOW:
		return FUNC0(info, LTC294X_REG_ACC_CHARGE_MSB,
						&val->intval);
	case POWER_SUPPLY_PROP_CHARGE_COUNTER:
		return FUNC1(info, &val->intval);
	case POWER_SUPPLY_PROP_VOLTAGE_NOW:
		return FUNC4(info, &val->intval);
	case POWER_SUPPLY_PROP_CURRENT_NOW:
		return FUNC2(info, &val->intval);
	case POWER_SUPPLY_PROP_TEMP:
		return FUNC3(info, &val->intval);
	default:
		return -EINVAL;
	}
}