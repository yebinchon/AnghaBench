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
struct bd70528_psy {int /*<<< orphan*/  regmap; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  BD70528_MASK_CHG_CHG_CURR ; 
 int /*<<< orphan*/  BD70528_REG_CHG_CHG_CURR_COLD ; 
 int /*<<< orphan*/  BD70528_REG_CHG_CHG_CURR_WARM ; 
 int EINVAL ; 
 unsigned int MAX_COLD_CHG_CURR_SEL ; 
 unsigned int MAX_WARM_CHG_CURR_SEL ; 
 unsigned int MIN_CHG_CURR_SEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,unsigned int*,int*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/ * warm_charge_curr ; 

__attribute__((used)) static int FUNC5(struct bd70528_psy *bdpsy, int ma)
{
	unsigned int reg;
	int ret = 0, tmpret;
	bool found;

	if (ma > 500) {
		FUNC2(bdpsy->dev,
			 "Requested charge current %u exceed maximum (500mA)\n",
			 ma);
		reg = MAX_WARM_CHG_CURR_SEL;
		goto set;
	}
	if (ma < 10) {
		FUNC1(bdpsy->dev,
			"Requested charge current %u smaller than min (10mA)\n",
			 ma);
		reg = MIN_CHG_CURR_SEL;
		ret = -EINVAL;
		goto set;
	}

	ret = FUNC3(&warm_charge_curr[0],
					  FUNC0(warm_charge_curr), ma,
					  &reg, &found);
	if (ret) {
		reg = MIN_CHG_CURR_SEL;
		goto set;
	}
	if (!found) {
		/* There was a gap in supported values and we hit it */
		FUNC2(bdpsy->dev,
			 "Unsupported charge current %u mA\n", ma);
	}
set:

	tmpret = FUNC4(bdpsy->regmap,
				    BD70528_REG_CHG_CHG_CURR_WARM,
				    BD70528_MASK_CHG_CHG_CURR, reg);
	if (tmpret)
		FUNC1(bdpsy->dev,
			"Charge current write failure (%d)\n", tmpret);

	if (reg > MAX_COLD_CHG_CURR_SEL)
		reg = MAX_COLD_CHG_CURR_SEL;

	if (!tmpret)
		tmpret = FUNC4(bdpsy->regmap,
					    BD70528_REG_CHG_CHG_CURR_COLD,
					    BD70528_MASK_CHG_CHG_CURR, reg);

	if (!ret)
		ret = tmpret;

	return ret;
}