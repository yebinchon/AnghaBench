#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
union power_supply_propval {int intval; } ;
struct power_supply {int dummy; } ;
struct axp288_fg_info {int status; int max_volt; int /*<<< orphan*/  lock; TYPE_1__* pdev; } ;
typedef  enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AXP20X_FG_RES ; 
 int /*<<< orphan*/  AXP20X_PWR_OP_MODE ; 
 int /*<<< orphan*/  AXP288_FG_CC_MTR1_REG ; 
 int /*<<< orphan*/  AXP288_FG_DES_CAP1_REG ; 
 int /*<<< orphan*/  AXP288_FG_LOW_CAP_REG ; 
 int CHRG_STAT_BAT_PRESENT ; 
 int EINVAL ; 
 int FG_DES_CAP_RES_LSB ; 
 int FG_REP_CAP_VALID ; 
 int FG_REP_CAP_VAL_MASK ; 
#define  POWER_SUPPLY_PROP_CAPACITY 139 
#define  POWER_SUPPLY_PROP_CAPACITY_ALERT_MIN 138 
#define  POWER_SUPPLY_PROP_CHARGE_FULL 137 
#define  POWER_SUPPLY_PROP_CHARGE_NOW 136 
#define  POWER_SUPPLY_PROP_CURRENT_NOW 135 
#define  POWER_SUPPLY_PROP_HEALTH 134 
#define  POWER_SUPPLY_PROP_PRESENT 133 
#define  POWER_SUPPLY_PROP_STATUS 132 
#define  POWER_SUPPLY_PROP_TECHNOLOGY 131 
#define  POWER_SUPPLY_PROP_VOLTAGE_MAX_DESIGN 130 
#define  POWER_SUPPLY_PROP_VOLTAGE_NOW 129 
#define  POWER_SUPPLY_PROP_VOLTAGE_OCV 128 
 int POWER_SUPPLY_TECHNOLOGY_LION ; 
 int FUNC0 (int) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (struct axp288_fg_info*) ; 
 int FUNC4 (struct axp288_fg_info*,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct axp288_fg_info*) ; 
 int FUNC6 (struct axp288_fg_info*,int*) ; 
 int FUNC7 (struct axp288_fg_info*,int*) ; 
 int FUNC8 (struct axp288_fg_info*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct axp288_fg_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 struct axp288_fg_info* FUNC12 (struct power_supply*) ; 

__attribute__((used)) static int FUNC13(struct power_supply *ps,
		enum power_supply_property prop,
		union power_supply_propval *val)
{
	struct axp288_fg_info *info = FUNC12(ps);
	int ret = 0, value;

	FUNC10(&info->lock);
	switch (prop) {
	case POWER_SUPPLY_PROP_STATUS:
		FUNC5(info);
		val->intval = info->status;
		break;
	case POWER_SUPPLY_PROP_HEALTH:
		val->intval = FUNC3(info);
		break;
	case POWER_SUPPLY_PROP_VOLTAGE_NOW:
		ret = FUNC6(info, &value);
		if (ret < 0)
			goto fuel_gauge_read_err;
		val->intval = FUNC1(value);
		break;
	case POWER_SUPPLY_PROP_VOLTAGE_OCV:
		ret = FUNC7(info, &value);
		if (ret < 0)
			goto fuel_gauge_read_err;
		val->intval = FUNC1(value);
		break;
	case POWER_SUPPLY_PROP_CURRENT_NOW:
		ret = FUNC4(info, &value);
		if (ret < 0)
			goto fuel_gauge_read_err;
		val->intval = FUNC0(value);
		break;
	case POWER_SUPPLY_PROP_PRESENT:
		ret = FUNC9(info, AXP20X_PWR_OP_MODE);
		if (ret < 0)
			goto fuel_gauge_read_err;

		if (ret & CHRG_STAT_BAT_PRESENT)
			val->intval = 1;
		else
			val->intval = 0;
		break;
	case POWER_SUPPLY_PROP_CAPACITY:
		ret = FUNC9(info, AXP20X_FG_RES);
		if (ret < 0)
			goto fuel_gauge_read_err;

		if (!(ret & FG_REP_CAP_VALID))
			FUNC2(&info->pdev->dev,
				"capacity measurement not valid\n");
		val->intval = (ret & FG_REP_CAP_VAL_MASK);
		break;
	case POWER_SUPPLY_PROP_CAPACITY_ALERT_MIN:
		ret = FUNC9(info, AXP288_FG_LOW_CAP_REG);
		if (ret < 0)
			goto fuel_gauge_read_err;
		val->intval = (ret & 0x0f);
		break;
	case POWER_SUPPLY_PROP_TECHNOLOGY:
		val->intval = POWER_SUPPLY_TECHNOLOGY_LION;
		break;
	case POWER_SUPPLY_PROP_CHARGE_NOW:
		ret = FUNC8(info, AXP288_FG_CC_MTR1_REG);
		if (ret < 0)
			goto fuel_gauge_read_err;

		val->intval = ret * FG_DES_CAP_RES_LSB;
		break;
	case POWER_SUPPLY_PROP_CHARGE_FULL:
		ret = FUNC8(info, AXP288_FG_DES_CAP1_REG);
		if (ret < 0)
			goto fuel_gauge_read_err;

		val->intval = ret * FG_DES_CAP_RES_LSB;
		break;
	case POWER_SUPPLY_PROP_VOLTAGE_MAX_DESIGN:
		val->intval = FUNC1(info->max_volt);
		break;
	default:
		FUNC11(&info->lock);
		return -EINVAL;
	}

	FUNC11(&info->lock);
	return 0;

fuel_gauge_read_err:
	FUNC11(&info->lock);
	return ret;
}