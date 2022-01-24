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
struct max77693_charger {TYPE_1__* max77693; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHG_CNFG_04_CHGCVPRM_MASK ; 
 unsigned int CHG_CNFG_04_CHGCVPRM_SHIFT ; 
 int EINVAL ; 
 int /*<<< orphan*/  MAX77693_CHG_REG_CHG_CNFG_04 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct max77693_charger *chg,
		unsigned int uvolt)
{
	unsigned int data;

	/*
	 * 0x00 - 3.650 V
	 * 0x01 - 3.675 V
	 * ...
	 * 0x1b - 4.325 V
	 * 0x1c - 4.340 V
	 * 0x1d - 4.350 V
	 * 0x1e - 4.375 V
	 * 0x1f - 4.400 V
	 */
	if (uvolt >= 3650000 && uvolt < 4340000)
		data = (uvolt - 3650000) / 25000;
	else if (uvolt >= 4340000 && uvolt < 4350000)
		data = 0x1c;
	else if (uvolt >= 4350000 && uvolt <= 4400000)
		data = 0x1d + (uvolt - 4350000) / 25000;
	else {
		FUNC1(chg->dev, "Wrong value for charging constant voltage\n");
		return -EINVAL;
	}

	data <<= CHG_CNFG_04_CHGCVPRM_SHIFT;

	FUNC0(chg->dev, "Charging constant voltage: %u (0x%x)\n", uvolt,
			data);

	return FUNC2(chg->max77693->regmap,
			MAX77693_CHG_REG_CHG_CNFG_04,
			CHG_CNFG_04_CHGCVPRM_MASK, data);
}