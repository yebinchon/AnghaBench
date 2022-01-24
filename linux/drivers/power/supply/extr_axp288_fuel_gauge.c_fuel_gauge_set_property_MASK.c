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
struct axp288_fg_info {int /*<<< orphan*/  lock; } ;
typedef  enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;

/* Variables and functions */
 int /*<<< orphan*/  AXP288_FG_LOW_CAP_REG ; 
 int EINVAL ; 
#define  POWER_SUPPLY_PROP_CAPACITY_ALERT_MIN 128 
 int FUNC0 (struct axp288_fg_info*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct axp288_fg_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct axp288_fg_info* FUNC4 (struct power_supply*) ; 

__attribute__((used)) static int FUNC5(struct power_supply *ps,
		enum power_supply_property prop,
		const union power_supply_propval *val)
{
	struct axp288_fg_info *info = FUNC4(ps);
	int ret = 0;

	FUNC2(&info->lock);
	switch (prop) {
	case POWER_SUPPLY_PROP_CAPACITY_ALERT_MIN:
		if ((val->intval < 0) || (val->intval > 15)) {
			ret = -EINVAL;
			break;
		}
		ret = FUNC0(info, AXP288_FG_LOW_CAP_REG);
		if (ret < 0)
			break;
		ret &= 0xf0;
		ret |= (val->intval & 0xf);
		ret = FUNC1(info, AXP288_FG_LOW_CAP_REG, ret);
		break;
	default:
		ret = -EINVAL;
		break;
	}

	FUNC3(&info->lock);
	return ret;
}