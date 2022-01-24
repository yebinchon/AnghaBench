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
struct adp5061_state {int dummy; } ;
typedef  enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;

/* Variables and functions */
 int EINVAL ; 
#define  POWER_SUPPLY_PROP_CHARGE_TERM_CURRENT 135 
#define  POWER_SUPPLY_PROP_CONSTANT_CHARGE_CURRENT 134 
#define  POWER_SUPPLY_PROP_CONSTANT_CHARGE_VOLTAGE_MAX 133 
#define  POWER_SUPPLY_PROP_INPUT_CURRENT_LIMIT 132 
#define  POWER_SUPPLY_PROP_PRECHARGE_CURRENT 131 
#define  POWER_SUPPLY_PROP_VOLTAGE_AVG 130 
#define  POWER_SUPPLY_PROP_VOLTAGE_MAX 129 
#define  POWER_SUPPLY_PROP_VOLTAGE_MIN 128 
 int FUNC0 (struct adp5061_state*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct adp5061_state*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct adp5061_state*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct adp5061_state*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct adp5061_state*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct adp5061_state*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct adp5061_state*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct adp5061_state*,int /*<<< orphan*/ ) ; 
 struct adp5061_state* FUNC8 (struct power_supply*) ; 

__attribute__((used)) static int FUNC9(struct power_supply *psy,
				enum power_supply_property psp,
				const union power_supply_propval *val)
{
	struct adp5061_state *st = FUNC8(psy);

	switch (psp) {
	case POWER_SUPPLY_PROP_INPUT_CURRENT_LIMIT:
		return FUNC2(st, val->intval);
	case POWER_SUPPLY_PROP_VOLTAGE_MAX:
		return FUNC3(st, val->intval);
	case POWER_SUPPLY_PROP_VOLTAGE_MIN:
		return FUNC4(st, val->intval);
	case POWER_SUPPLY_PROP_CONSTANT_CHARGE_VOLTAGE_MAX:
		return FUNC1(st, val->intval);
	case POWER_SUPPLY_PROP_CONSTANT_CHARGE_CURRENT:
		return FUNC0(st, val->intval);
	case POWER_SUPPLY_PROP_PRECHARGE_CURRENT:
		return FUNC5(st, val->intval);
	case POWER_SUPPLY_PROP_VOLTAGE_AVG:
		return FUNC7(st, val->intval);
	case POWER_SUPPLY_PROP_CHARGE_TERM_CURRENT:
		return FUNC6(st, val->intval);
	default:
		return -EINVAL;
	}

	return 0;
}