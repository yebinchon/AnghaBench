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
struct sc27xx_fgu_data {int bat_present; int total_cap; int /*<<< orphan*/  lock; } ;
struct power_supply {int dummy; } ;
typedef  enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;

/* Variables and functions */
 int EINVAL ; 
#define  POWER_SUPPLY_PROP_CAPACITY 139 
#define  POWER_SUPPLY_PROP_CONSTANT_CHARGE_VOLTAGE 138 
#define  POWER_SUPPLY_PROP_CURRENT_AVG 137 
#define  POWER_SUPPLY_PROP_CURRENT_NOW 136 
#define  POWER_SUPPLY_PROP_ENERGY_FULL_DESIGN 135 
#define  POWER_SUPPLY_PROP_HEALTH 134 
#define  POWER_SUPPLY_PROP_PRESENT 133 
#define  POWER_SUPPLY_PROP_STATUS 132 
#define  POWER_SUPPLY_PROP_TECHNOLOGY 131 
#define  POWER_SUPPLY_PROP_TEMP 130 
#define  POWER_SUPPLY_PROP_VOLTAGE_NOW 129 
#define  POWER_SUPPLY_PROP_VOLTAGE_OCV 128 
 int POWER_SUPPLY_TECHNOLOGY_LION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct sc27xx_fgu_data* FUNC2 (struct power_supply*) ; 
 int FUNC3 (struct sc27xx_fgu_data*,int*) ; 
 int FUNC4 (struct sc27xx_fgu_data*,int*) ; 
 int FUNC5 (struct sc27xx_fgu_data*,int*) ; 
 int FUNC6 (struct sc27xx_fgu_data*,int*) ; 
 int FUNC7 (struct sc27xx_fgu_data*,int*) ; 
 int FUNC8 (struct sc27xx_fgu_data*,int*) ; 
 int FUNC9 (struct sc27xx_fgu_data*,int*) ; 
 int FUNC10 (struct sc27xx_fgu_data*,int*) ; 

__attribute__((used)) static int FUNC11(struct power_supply *psy,
				   enum power_supply_property psp,
				   union power_supply_propval *val)
{
	struct sc27xx_fgu_data *data = FUNC2(psy);
	int ret = 0;
	int value;

	FUNC0(&data->lock);

	switch (psp) {
	case POWER_SUPPLY_PROP_STATUS:
		ret = FUNC7(data, &value);
		if (ret)
			goto error;

		val->intval = value;
		break;

	case POWER_SUPPLY_PROP_HEALTH:
		ret = FUNC6(data, &value);
		if (ret)
			goto error;

		val->intval = value;
		break;

	case POWER_SUPPLY_PROP_PRESENT:
		val->intval = data->bat_present;
		break;

	case POWER_SUPPLY_PROP_TEMP:
		ret = FUNC8(data, &value);
		if (ret)
			goto error;

		val->intval = value;
		break;

	case POWER_SUPPLY_PROP_TECHNOLOGY:
		val->intval = POWER_SUPPLY_TECHNOLOGY_LION;
		break;

	case POWER_SUPPLY_PROP_CAPACITY:
		ret = FUNC3(data, &value);
		if (ret)
			goto error;

		val->intval = value;
		break;

	case POWER_SUPPLY_PROP_VOLTAGE_NOW:
		ret = FUNC10(data, &value);
		if (ret)
			goto error;

		val->intval = value * 1000;
		break;

	case POWER_SUPPLY_PROP_VOLTAGE_OCV:
		ret = FUNC9(data, &value);
		if (ret)
			goto error;

		val->intval = value;
		break;

	case POWER_SUPPLY_PROP_CONSTANT_CHARGE_VOLTAGE:
		ret = FUNC4(data, &value);
		if (ret)
			goto error;

		val->intval = value;
		break;

	case POWER_SUPPLY_PROP_CURRENT_NOW:
	case POWER_SUPPLY_PROP_CURRENT_AVG:
		ret = FUNC5(data, &value);
		if (ret)
			goto error;

		val->intval = value * 1000;
		break;

	case POWER_SUPPLY_PROP_ENERGY_FULL_DESIGN:
		val->intval = data->total_cap * 1000;
		break;

	default:
		ret = -EINVAL;
		break;
	}

error:
	FUNC1(&data->lock);
	return ret;
}