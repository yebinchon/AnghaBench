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
struct max77693_charger {int /*<<< orphan*/  charge_input_threshold_volt; int /*<<< orphan*/  batttery_overcurrent; int /*<<< orphan*/  thermal_regulation_temp; int /*<<< orphan*/  min_system_volt; int /*<<< orphan*/  constant_volt; int /*<<< orphan*/  dev; TYPE_1__* max77693; } ;
struct TYPE_2__ {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHG_CNFG_06_CHGPROT_MASK ; 
 int CHG_CNFG_06_CHGPROT_SHIFT ; 
 int /*<<< orphan*/  DEFAULT_FAST_CHARGE_TIMER ; 
 int /*<<< orphan*/  DEFAULT_TOP_OFF_THRESHOLD_CURRENT ; 
 int /*<<< orphan*/  DEFAULT_TOP_OFF_TIMER ; 
 int /*<<< orphan*/  MAX77693_CHG_REG_CHG_CNFG_06 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct max77693_charger*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct max77693_charger*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct max77693_charger*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct max77693_charger*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct max77693_charger*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct max77693_charger*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct max77693_charger*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct max77693_charger*,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC10(struct max77693_charger *chg)
{
	int ret;
	unsigned int data;

	/* Unlock charger register protection */
	data = (0x3 << CHG_CNFG_06_CHGPROT_SHIFT);
	ret = FUNC9(chg->max77693->regmap,
				MAX77693_CHG_REG_CHG_CNFG_06,
				CHG_CNFG_06_CHGPROT_MASK, data);
	if (ret) {
		FUNC0(chg->dev, "Error unlocking registers: %d\n", ret);
		return ret;
	}

	ret = FUNC4(chg, DEFAULT_FAST_CHARGE_TIMER);
	if (ret)
		return ret;

	ret = FUNC7(chg,
			DEFAULT_TOP_OFF_THRESHOLD_CURRENT);
	if (ret)
		return ret;

	ret = FUNC8(chg, DEFAULT_TOP_OFF_TIMER);
	if (ret)
		return ret;

	ret = FUNC3(chg, chg->constant_volt);
	if (ret)
		return ret;

	ret = FUNC5(chg, chg->min_system_volt);
	if (ret)
		return ret;

	ret = FUNC6(chg,
			chg->thermal_regulation_temp);
	if (ret)
		return ret;

	ret = FUNC1(chg, chg->batttery_overcurrent);
	if (ret)
		return ret;

	return FUNC2(chg,
			chg->charge_input_threshold_volt);
}