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
struct sc27xx_fgu_data {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; } ;
struct power_supply {int dummy; } ;
typedef  enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;

/* Variables and functions */
 int EINVAL ; 
#define  POWER_SUPPLY_PROP_CALIBRATE 129 
#define  POWER_SUPPLY_PROP_CAPACITY 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct sc27xx_fgu_data* FUNC3 (struct power_supply*) ; 
 int /*<<< orphan*/  FUNC4 (struct sc27xx_fgu_data*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct sc27xx_fgu_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct power_supply *psy,
				   enum power_supply_property psp,
				   const union power_supply_propval *val)
{
	struct sc27xx_fgu_data *data = FUNC3(psy);
	int ret;

	FUNC1(&data->lock);

	switch (psp) {
	case POWER_SUPPLY_PROP_CAPACITY:
		ret = FUNC5(data, val->intval);
		if (ret < 0)
			FUNC0(data->dev, "failed to save battery capacity\n");
		break;

	case POWER_SUPPLY_PROP_CALIBRATE:
		FUNC4(data, val->intval);
		ret = 0;
		break;

	default:
		ret = -EINVAL;
	}

	FUNC2(&data->lock);

	return ret;
}