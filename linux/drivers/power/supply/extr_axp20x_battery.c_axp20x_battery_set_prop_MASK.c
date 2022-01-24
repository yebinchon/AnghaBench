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
union power_supply_propval {int /*<<< orphan*/  intval; } ;
struct power_supply {int dummy; } ;
struct axp20x_batt_ps {TYPE_1__* data; } ;
typedef  enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;
struct TYPE_2__ {int (* set_max_voltage ) (struct axp20x_batt_ps*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int EINVAL ; 
#define  POWER_SUPPLY_PROP_CONSTANT_CHARGE_CURRENT 131 
#define  POWER_SUPPLY_PROP_CONSTANT_CHARGE_CURRENT_MAX 130 
#define  POWER_SUPPLY_PROP_VOLTAGE_MAX_DESIGN 129 
#define  POWER_SUPPLY_PROP_VOLTAGE_MIN_DESIGN 128 
 int FUNC0 (struct axp20x_batt_ps*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct axp20x_batt_ps*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct axp20x_batt_ps*,int /*<<< orphan*/ ) ; 
 struct axp20x_batt_ps* FUNC3 (struct power_supply*) ; 
 int FUNC4 (struct axp20x_batt_ps*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct power_supply *psy,
				   enum power_supply_property psp,
				   const union power_supply_propval *val)
{
	struct axp20x_batt_ps *axp20x_batt = FUNC3(psy);

	switch (psp) {
	case POWER_SUPPLY_PROP_VOLTAGE_MIN_DESIGN:
		return FUNC2(axp20x_batt, val->intval);

	case POWER_SUPPLY_PROP_VOLTAGE_MAX_DESIGN:
		return axp20x_batt->data->set_max_voltage(axp20x_batt, val->intval);

	case POWER_SUPPLY_PROP_CONSTANT_CHARGE_CURRENT:
		return FUNC0(axp20x_batt,
							  val->intval);
	case POWER_SUPPLY_PROP_CONSTANT_CHARGE_CURRENT_MAX:
		return FUNC1(axp20x_batt,
							      val->intval);

	default:
		return -EINVAL;
	}
}