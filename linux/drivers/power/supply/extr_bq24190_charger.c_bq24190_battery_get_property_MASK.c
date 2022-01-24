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
struct bq24190_dev_info {int /*<<< orphan*/  dev; } ;
typedef  enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;

/* Variables and functions */
 int ENODATA ; 
#define  POWER_SUPPLY_PROP_HEALTH 133 
#define  POWER_SUPPLY_PROP_ONLINE 132 
#define  POWER_SUPPLY_PROP_SCOPE 131 
#define  POWER_SUPPLY_PROP_STATUS 130 
#define  POWER_SUPPLY_PROP_TECHNOLOGY 129 
#define  POWER_SUPPLY_PROP_TEMP_ALERT_MAX 128 
 int /*<<< orphan*/  POWER_SUPPLY_SCOPE_SYSTEM ; 
 int /*<<< orphan*/  POWER_SUPPLY_TECHNOLOGY_UNKNOWN ; 
 int FUNC0 (struct bq24190_dev_info*,union power_supply_propval*) ; 
 int FUNC1 (struct bq24190_dev_info*,union power_supply_propval*) ; 
 int FUNC2 (struct bq24190_dev_info*,union power_supply_propval*) ; 
 int FUNC3 (struct bq24190_dev_info*,union power_supply_propval*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct bq24190_dev_info* FUNC9 (struct power_supply*) ; 

__attribute__((used)) static int FUNC10(struct power_supply *psy,
		enum power_supply_property psp, union power_supply_propval *val)
{
	struct bq24190_dev_info *bdi = FUNC9(psy);
	int ret;

	FUNC5(bdi->dev, "warning: /sys/class/power_supply/bq24190-battery is deprecated\n");
	FUNC4(bdi->dev, "prop: %d\n", psp);

	ret = FUNC6(bdi->dev);
	if (ret < 0)
		return ret;

	switch (psp) {
	case POWER_SUPPLY_PROP_STATUS:
		ret = FUNC2(bdi, val);
		break;
	case POWER_SUPPLY_PROP_HEALTH:
		ret = FUNC0(bdi, val);
		break;
	case POWER_SUPPLY_PROP_ONLINE:
		ret = FUNC1(bdi, val);
		break;
	case POWER_SUPPLY_PROP_TECHNOLOGY:
		/* Could be Li-on or Li-polymer but no way to tell which */
		val->intval = POWER_SUPPLY_TECHNOLOGY_UNKNOWN;
		ret = 0;
		break;
	case POWER_SUPPLY_PROP_TEMP_ALERT_MAX:
		ret = FUNC3(bdi, val);
		break;
	case POWER_SUPPLY_PROP_SCOPE:
		val->intval = POWER_SUPPLY_SCOPE_SYSTEM;
		ret = 0;
		break;
	default:
		ret = -ENODATA;
	}

	FUNC7(bdi->dev);
	FUNC8(bdi->dev);

	return ret;
}