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
union power_supply_propval {int /*<<< orphan*/  strval; int /*<<< orphan*/  intval; } ;
struct power_supply {int dummy; } ;
struct bq24190_dev_info {int /*<<< orphan*/  dev; int /*<<< orphan*/  model_name; } ;
typedef  enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;

/* Variables and functions */
 int /*<<< orphan*/  BQ24190_MANUFACTURER ; 
 int ENODATA ; 
#define  POWER_SUPPLY_PROP_CHARGE_TERM_CURRENT 142 
#define  POWER_SUPPLY_PROP_CHARGE_TYPE 141 
#define  POWER_SUPPLY_PROP_CONSTANT_CHARGE_CURRENT 140 
#define  POWER_SUPPLY_PROP_CONSTANT_CHARGE_CURRENT_MAX 139 
#define  POWER_SUPPLY_PROP_CONSTANT_CHARGE_VOLTAGE 138 
#define  POWER_SUPPLY_PROP_CONSTANT_CHARGE_VOLTAGE_MAX 137 
#define  POWER_SUPPLY_PROP_HEALTH 136 
#define  POWER_SUPPLY_PROP_INPUT_CURRENT_LIMIT 135 
#define  POWER_SUPPLY_PROP_MANUFACTURER 134 
#define  POWER_SUPPLY_PROP_MODEL_NAME 133 
#define  POWER_SUPPLY_PROP_ONLINE 132 
#define  POWER_SUPPLY_PROP_PRECHARGE_CURRENT 131 
#define  POWER_SUPPLY_PROP_SCOPE 130 
#define  POWER_SUPPLY_PROP_STATUS 129 
#define  POWER_SUPPLY_PROP_TEMP_ALERT_MAX 128 
 int /*<<< orphan*/  POWER_SUPPLY_SCOPE_SYSTEM ; 
 int FUNC0 (struct bq24190_dev_info*,union power_supply_propval*) ; 
 int FUNC1 (struct bq24190_dev_info*,union power_supply_propval*) ; 
 int FUNC2 (struct bq24190_dev_info*,union power_supply_propval*) ; 
 int FUNC3 (struct bq24190_dev_info*,union power_supply_propval*) ; 
 int FUNC4 (struct bq24190_dev_info*,union power_supply_propval*) ; 
 int FUNC5 (struct bq24190_dev_info*,union power_supply_propval*) ; 
 int FUNC6 (struct bq24190_dev_info*,union power_supply_propval*) ; 
 int FUNC7 (struct bq24190_dev_info*,union power_supply_propval*) ; 
 int FUNC8 (struct bq24190_dev_info*,union power_supply_propval*) ; 
 int FUNC9 (struct bq24190_dev_info*,union power_supply_propval*) ; 
 int FUNC10 (struct bq24190_dev_info*,union power_supply_propval*) ; 
 int FUNC11 (struct bq24190_dev_info*,union power_supply_propval*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 struct bq24190_dev_info* FUNC16 (struct power_supply*) ; 

__attribute__((used)) static int FUNC17(struct power_supply *psy,
		enum power_supply_property psp, union power_supply_propval *val)
{
	struct bq24190_dev_info *bdi = FUNC16(psy);
	int ret;

	FUNC12(bdi->dev, "prop: %d\n", psp);

	ret = FUNC13(bdi->dev);
	if (ret < 0)
		return ret;

	switch (psp) {
	case POWER_SUPPLY_PROP_CHARGE_TYPE:
		ret = FUNC1(bdi, val);
		break;
	case POWER_SUPPLY_PROP_HEALTH:
		ret = FUNC4(bdi, val);
		break;
	case POWER_SUPPLY_PROP_ONLINE:
		ret = FUNC6(bdi, val);
		break;
	case POWER_SUPPLY_PROP_STATUS:
		ret = FUNC8(bdi, val);
		break;
	case POWER_SUPPLY_PROP_TEMP_ALERT_MAX:
		ret =  FUNC9(bdi, val);
		break;
	case POWER_SUPPLY_PROP_PRECHARGE_CURRENT:
		ret = FUNC7(bdi, val);
		break;
	case POWER_SUPPLY_PROP_CHARGE_TERM_CURRENT:
		ret = FUNC0(bdi, val);
		break;
	case POWER_SUPPLY_PROP_CONSTANT_CHARGE_CURRENT:
		ret = FUNC2(bdi, val);
		break;
	case POWER_SUPPLY_PROP_CONSTANT_CHARGE_CURRENT_MAX:
		ret = FUNC3(bdi, val);
		break;
	case POWER_SUPPLY_PROP_CONSTANT_CHARGE_VOLTAGE:
		ret = FUNC10(bdi, val);
		break;
	case POWER_SUPPLY_PROP_CONSTANT_CHARGE_VOLTAGE_MAX:
		ret = FUNC11(bdi, val);
		break;
	case POWER_SUPPLY_PROP_INPUT_CURRENT_LIMIT:
		ret = FUNC5(bdi, val);
		break;
	case POWER_SUPPLY_PROP_SCOPE:
		val->intval = POWER_SUPPLY_SCOPE_SYSTEM;
		ret = 0;
		break;
	case POWER_SUPPLY_PROP_MODEL_NAME:
		val->strval = bdi->model_name;
		ret = 0;
		break;
	case POWER_SUPPLY_PROP_MANUFACTURER:
		val->strval = BQ24190_MANUFACTURER;
		ret = 0;
		break;
	default:
		ret = -ENODATA;
	}

	FUNC14(bdi->dev);
	FUNC15(bdi->dev);

	return ret;
}