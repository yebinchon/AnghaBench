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
 int /*<<< orphan*/  CHG_CNFG_07_REGTEMP_MASK ; 
 unsigned int CHG_CNFG_07_REGTEMP_SHIFT ; 
 int EINVAL ; 
 int /*<<< orphan*/  MAX77693_CHG_REG_CHG_CNFG_07 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct max77693_charger *chg,
		unsigned int cels)
{
	unsigned int data;

	switch (cels) {
	case 70:
	case 85:
	case 100:
	case 115:
		data = (cels - 70) / 15;
		break;
	default:
		FUNC1(chg->dev, "Wrong value for thermal regulation loop temperature\n");
		return -EINVAL;
	}

	data <<= CHG_CNFG_07_REGTEMP_SHIFT;

	FUNC0(chg->dev, "Thermal regulation loop temperature: %u (0x%x)\n",
			cels, data);

	return FUNC2(chg->max77693->regmap,
			MAX77693_CHG_REG_CHG_CNFG_07,
			CHG_CNFG_07_REGTEMP_MASK, data);
}