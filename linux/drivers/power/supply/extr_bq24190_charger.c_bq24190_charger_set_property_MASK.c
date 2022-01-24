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
struct bq24190_dev_info {int /*<<< orphan*/  dev; } ;
typedef  enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;

/* Variables and functions */
 int EINVAL ; 
#define  POWER_SUPPLY_PROP_CHARGE_TYPE 133 
#define  POWER_SUPPLY_PROP_CONSTANT_CHARGE_CURRENT 132 
#define  POWER_SUPPLY_PROP_CONSTANT_CHARGE_VOLTAGE 131 
#define  POWER_SUPPLY_PROP_INPUT_CURRENT_LIMIT 130 
#define  POWER_SUPPLY_PROP_ONLINE 129 
#define  POWER_SUPPLY_PROP_TEMP_ALERT_MAX 128 
 int FUNC0 (struct bq24190_dev_info*,union power_supply_propval const*) ; 
 int FUNC1 (struct bq24190_dev_info*,union power_supply_propval const*) ; 
 int FUNC2 (struct bq24190_dev_info*,union power_supply_propval const*) ; 
 int FUNC3 (struct bq24190_dev_info*,union power_supply_propval const*) ; 
 int FUNC4 (struct bq24190_dev_info*,union power_supply_propval const*) ; 
 int FUNC5 (struct bq24190_dev_info*,union power_supply_propval const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 struct bq24190_dev_info* FUNC10 (struct power_supply*) ; 

__attribute__((used)) static int FUNC11(struct power_supply *psy,
		enum power_supply_property psp,
		const union power_supply_propval *val)
{
	struct bq24190_dev_info *bdi = FUNC10(psy);
	int ret;

	FUNC6(bdi->dev, "prop: %d\n", psp);

	ret = FUNC7(bdi->dev);
	if (ret < 0)
		return ret;

	switch (psp) {
	case POWER_SUPPLY_PROP_ONLINE:
		ret = FUNC3(bdi, val);
		break;
	case POWER_SUPPLY_PROP_TEMP_ALERT_MAX:
		ret = FUNC4(bdi, val);
		break;
	case POWER_SUPPLY_PROP_CHARGE_TYPE:
		ret = FUNC0(bdi, val);
		break;
	case POWER_SUPPLY_PROP_CONSTANT_CHARGE_CURRENT:
		ret = FUNC1(bdi, val);
		break;
	case POWER_SUPPLY_PROP_CONSTANT_CHARGE_VOLTAGE:
		ret = FUNC5(bdi, val);
		break;
	case POWER_SUPPLY_PROP_INPUT_CURRENT_LIMIT:
		ret = FUNC2(bdi, val);
		break;
	default:
		ret = -EINVAL;
	}

	FUNC8(bdi->dev);
	FUNC9(bdi->dev);

	return ret;
}