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
struct power_supply {int dummy; } ;
struct da9052_battery {int /*<<< orphan*/  da9052; int /*<<< orphan*/  charger_type; } ;
typedef  enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;

/* Variables and functions */
 int DA9052_BAT_CUTOFF_VOLT ; 
 int /*<<< orphan*/  DA9052_NOCHARGER ; 
 int EINVAL ; 
 int ENODEV ; 
#define  POWER_SUPPLY_PROP_CAPACITY 137 
#define  POWER_SUPPLY_PROP_CURRENT_AVG 136 
#define  POWER_SUPPLY_PROP_HEALTH 135 
#define  POWER_SUPPLY_PROP_ONLINE 134 
#define  POWER_SUPPLY_PROP_PRESENT 133 
#define  POWER_SUPPLY_PROP_STATUS 132 
#define  POWER_SUPPLY_PROP_TECHNOLOGY 131 
#define  POWER_SUPPLY_PROP_TEMP 130 
#define  POWER_SUPPLY_PROP_VOLTAGE_AVG 129 
#define  POWER_SUPPLY_PROP_VOLTAGE_MIN_DESIGN 128 
 int POWER_SUPPLY_TECHNOLOGY_LION ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct da9052_battery*,int*) ; 
 int FUNC2 (struct da9052_battery*,int*) ; 
 int FUNC3 (struct da9052_battery*,int*) ; 
 int FUNC4 (struct da9052_battery*,int*) ; 
 int FUNC5 (struct da9052_battery*,int*) ; 
 int FUNC6 (struct da9052_battery*,int*) ; 
 struct da9052_battery* FUNC7 (struct power_supply*) ; 

__attribute__((used)) static int FUNC8(struct power_supply *psy,
				    enum power_supply_property psp,
				    union power_supply_propval *val)
{
	int ret;
	int illegal;
	struct da9052_battery *bat = FUNC7(psy);

	ret = FUNC2(bat, &illegal);
	if (ret < 0)
		return ret;

	if (illegal && psp != POWER_SUPPLY_PROP_PRESENT)
		return -ENODEV;

	switch (psp) {
	case POWER_SUPPLY_PROP_STATUS:
		ret = FUNC3(bat, &val->intval);
		break;
	case POWER_SUPPLY_PROP_ONLINE:
		val->intval =
			(bat->charger_type == DA9052_NOCHARGER) ? 0 : 1;
		break;
	case POWER_SUPPLY_PROP_PRESENT:
		ret = FUNC2(bat, &val->intval);
		break;
	case POWER_SUPPLY_PROP_HEALTH:
		ret = FUNC1(bat, &val->intval);
		break;
	case POWER_SUPPLY_PROP_VOLTAGE_MIN_DESIGN:
		val->intval = DA9052_BAT_CUTOFF_VOLT * 1000;
		break;
	case POWER_SUPPLY_PROP_VOLTAGE_AVG:
		ret = FUNC5(bat, &val->intval);
		break;
	case POWER_SUPPLY_PROP_CURRENT_AVG:
		ret = FUNC6(bat, &val->intval);
		break;
	case POWER_SUPPLY_PROP_CAPACITY:
		ret = FUNC4(bat, &val->intval);
		break;
	case POWER_SUPPLY_PROP_TEMP:
		val->intval = FUNC0(bat->da9052);
		ret = val->intval;
		break;
	case POWER_SUPPLY_PROP_TECHNOLOGY:
		val->intval = POWER_SUPPLY_TECHNOLOGY_LION;
		break;
	default:
		return -EINVAL;
	}
	return ret;
}