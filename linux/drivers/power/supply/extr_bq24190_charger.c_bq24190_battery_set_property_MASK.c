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
#define  POWER_SUPPLY_PROP_ONLINE 129 
#define  POWER_SUPPLY_PROP_TEMP_ALERT_MAX 128 
 int FUNC0 (struct bq24190_dev_info*,union power_supply_propval const*) ; 
 int FUNC1 (struct bq24190_dev_info*,union power_supply_propval const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct bq24190_dev_info* FUNC7 (struct power_supply*) ; 

__attribute__((used)) static int FUNC8(struct power_supply *psy,
		enum power_supply_property psp,
		const union power_supply_propval *val)
{
	struct bq24190_dev_info *bdi = FUNC7(psy);
	int ret;

	FUNC3(bdi->dev, "warning: /sys/class/power_supply/bq24190-battery is deprecated\n");
	FUNC2(bdi->dev, "prop: %d\n", psp);

	ret = FUNC4(bdi->dev);
	if (ret < 0)
		return ret;

	switch (psp) {
	case POWER_SUPPLY_PROP_ONLINE:
		ret = FUNC0(bdi, val);
		break;
	case POWER_SUPPLY_PROP_TEMP_ALERT_MAX:
		ret = FUNC1(bdi, val);
		break;
	default:
		ret = -EINVAL;
	}

	FUNC5(bdi->dev);
	FUNC6(bdi->dev);

	return ret;
}