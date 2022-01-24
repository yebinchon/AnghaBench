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
typedef  int /*<<< orphan*/  u8 ;
struct power_supply {int dummy; } ;
struct adp5061_state {int dummy; } ;
typedef  enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int ADP5061_NO_BATTERY ; 
 int EINVAL ; 
#define  POWER_SUPPLY_PROP_CAPACITY_LEVEL 139 
#define  POWER_SUPPLY_PROP_CHARGE_TERM_CURRENT 138 
#define  POWER_SUPPLY_PROP_CHARGE_TYPE 137 
#define  POWER_SUPPLY_PROP_CONSTANT_CHARGE_CURRENT 136 
#define  POWER_SUPPLY_PROP_CONSTANT_CHARGE_VOLTAGE_MAX 135 
#define  POWER_SUPPLY_PROP_INPUT_CURRENT_LIMIT 134 
#define  POWER_SUPPLY_PROP_PRECHARGE_CURRENT 133 
#define  POWER_SUPPLY_PROP_PRESENT 132 
#define  POWER_SUPPLY_PROP_STATUS 131 
#define  POWER_SUPPLY_PROP_VOLTAGE_AVG 130 
#define  POWER_SUPPLY_PROP_VOLTAGE_MAX 129 
#define  POWER_SUPPLY_PROP_VOLTAGE_MIN 128 
 int FUNC1 (struct adp5061_state*,union power_supply_propval*) ; 
 int FUNC2 (struct adp5061_state*,union power_supply_propval*) ; 
 int FUNC3 (struct adp5061_state*,union power_supply_propval*) ; 
 int FUNC4 (struct adp5061_state*,union power_supply_propval*) ; 
 int FUNC5 (struct adp5061_state*,union power_supply_propval*) ; 
 int FUNC6 (struct adp5061_state*,union power_supply_propval*) ; 
 int FUNC7 (struct adp5061_state*,union power_supply_propval*) ; 
 int FUNC8 (struct adp5061_state*,union power_supply_propval*) ; 
 int FUNC9 (struct adp5061_state*,union power_supply_propval*) ; 
 int FUNC10 (struct adp5061_state*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC11 (struct adp5061_state*,union power_supply_propval*) ; 
 int FUNC12 (struct adp5061_state*,union power_supply_propval*) ; 
 struct adp5061_state* FUNC13 (struct power_supply*) ; 

__attribute__((used)) static int FUNC14(struct power_supply *psy,
				enum power_supply_property psp,
				union power_supply_propval *val)
{
	struct adp5061_state *st = FUNC13(psy);
	u8 status1, status2;
	int mode, ret;

	switch (psp) {
	case POWER_SUPPLY_PROP_PRESENT:
		ret = FUNC10(st, &status1, &status2);
		if (ret < 0)
			return ret;

		mode = FUNC0(status2);
		if (mode == ADP5061_NO_BATTERY)
			val->intval = 0;
		else
			val->intval = 1;
		break;
	case POWER_SUPPLY_PROP_CHARGE_TYPE:
		return FUNC3(st, val);
	case POWER_SUPPLY_PROP_INPUT_CURRENT_LIMIT:
		/* This property is used to indicate the input current
		 * limit into VINx (ILIM)
		 */
		return FUNC6(st, val);
	case POWER_SUPPLY_PROP_VOLTAGE_MAX:
		/* This property is used to indicate the termination
		 * voltage (VTRM)
		 */
		return FUNC7(st, val);
	case POWER_SUPPLY_PROP_VOLTAGE_MIN:
		/*
		 * This property is used to indicate the trickle to fast
		 * charge threshold (VTRK_DEAD)
		 */
		return FUNC8(st, val);
	case POWER_SUPPLY_PROP_CONSTANT_CHARGE_VOLTAGE_MAX:
		/* This property is used to indicate the charging
		 * voltage limit (CHG_VLIM)
		 */
		return FUNC4(st, val);
	case POWER_SUPPLY_PROP_CONSTANT_CHARGE_CURRENT:
		/*
		 * This property is used to indicate the value of the constant
		 * current charge (ICHG)
		 */
		return FUNC5(st, val);
	case POWER_SUPPLY_PROP_PRECHARGE_CURRENT:
		/*
		 * This property is used to indicate the value of the trickle
		 * and weak charge currents (ITRK_DEAD)
		 */
		return FUNC9(st, val);
	case POWER_SUPPLY_PROP_VOLTAGE_AVG:
		/*
		 * This property is used to set the VWEAK threshold
		 * bellow this value, weak charge mode is entered
		 * above this value, fast chargerge mode is entered
		 */
		return FUNC12(st, val);
	case POWER_SUPPLY_PROP_STATUS:
		/*
		 * Indicate the charger status in relation to power
		 * supply status property
		 */
		return FUNC2(st, val);
	case POWER_SUPPLY_PROP_CAPACITY_LEVEL:
		/*
		 * Indicate the battery status in relation to power
		 * supply capacity level property
		 */
		return FUNC1(st, val);
	case POWER_SUPPLY_PROP_CHARGE_TERM_CURRENT:
		/* Indicate the values of the termination current */
		return FUNC11(st, val);
	default:
		return -EINVAL;
	}

	return 0;
}