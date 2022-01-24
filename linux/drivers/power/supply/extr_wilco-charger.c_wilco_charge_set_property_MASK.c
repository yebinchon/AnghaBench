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
struct wilco_ec_device {int dummy; } ;
struct power_supply {int dummy; } ;
typedef  enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;

/* Variables and functions */
 int CHARGE_LOWER_LIMIT_MAX ; 
 int CHARGE_LOWER_LIMIT_MIN ; 
 int CHARGE_UPPER_LIMIT_MAX ; 
 int CHARGE_UPPER_LIMIT_MIN ; 
 int EINVAL ; 
 int /*<<< orphan*/  PID_CHARGE_LOWER_LIMIT ; 
 int /*<<< orphan*/  PID_CHARGE_MODE ; 
 int /*<<< orphan*/  PID_CHARGE_UPPER_LIMIT ; 
#define  POWER_SUPPLY_PROP_CHARGE_CONTROL_END_THRESHOLD 130 
#define  POWER_SUPPLY_PROP_CHARGE_CONTROL_START_THRESHOLD 129 
#define  POWER_SUPPLY_PROP_CHARGE_TYPE 128 
 struct wilco_ec_device* FUNC0 (struct power_supply*) ; 
 int FUNC1 (int) ; 
 int FUNC2 (struct wilco_ec_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct power_supply *psy,
				     enum power_supply_property psp,
				     const union power_supply_propval *val)
{
	struct wilco_ec_device *ec = FUNC0(psy);
	int mode;

	switch (psp) {
	case POWER_SUPPLY_PROP_CHARGE_TYPE:
		mode = FUNC1(val->intval);
		if (mode < 0)
			return -EINVAL;
		return FUNC2(ec, PID_CHARGE_MODE, mode);
	case POWER_SUPPLY_PROP_CHARGE_CONTROL_START_THRESHOLD:
		if (val->intval < CHARGE_LOWER_LIMIT_MIN ||
		    val->intval > CHARGE_LOWER_LIMIT_MAX)
			return -EINVAL;
		return FUNC2(ec, PID_CHARGE_LOWER_LIMIT,
						  val->intval);
	case POWER_SUPPLY_PROP_CHARGE_CONTROL_END_THRESHOLD:
		if (val->intval < CHARGE_UPPER_LIMIT_MIN ||
		    val->intval > CHARGE_UPPER_LIMIT_MAX)
			return -EINVAL;
		return FUNC2(ec, PID_CHARGE_UPPER_LIMIT,
						  val->intval);
	default:
		return -EINVAL;
	}
}