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
typedef  int u8 ;
struct regulator_dev {int /*<<< orphan*/  dev; } ;
struct ab3100_regulator {scalar_t__ regreg; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ AB3100_LDO_D ; 
 int AB3100_REG_ON_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 struct ab3100_regulator* FUNC5 (struct regulator_dev*) ; 

__attribute__((used)) static int FUNC6(struct regulator_dev *reg)
{
	struct ab3100_regulator *abreg = FUNC5(reg);
	int err;
	u8 regval;

	/*
	 * LDO D is a special regulator. When it is disabled, the entire
	 * system is shut down. So this is handled specially.
	 */
	FUNC4("Called ab3100_disable_regulator\n");
	if (abreg->regreg == AB3100_LDO_D) {
		FUNC3(&reg->dev, "disabling LDO D - shut down system\n");
		/* Setting LDO D to 0x00 cuts the power to the SoC */
		return FUNC1(abreg->dev, 0,
							 AB3100_LDO_D, 0x00U);
	}

	/*
	 * All other regulators are handled here
	 */
	err = FUNC0(abreg->dev, 0, abreg->regreg,
						&regval);
	if (err) {
		FUNC2(&reg->dev, "unable to get register 0x%x\n",
			abreg->regreg);
		return err;
	}
	regval &= ~AB3100_REG_ON_MASK;
	return FUNC1(abreg->dev, 0, abreg->regreg,
						 regval);
}