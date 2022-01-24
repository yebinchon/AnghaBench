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
struct ti_abb_reg {int fbb_sel_mask; int rbb_sel_mask; int opp_sel_mask; int opp_change_mask; } ;
struct ti_abb_info {int opp_sel; } ;
struct ti_abb {scalar_t__ ldo_base; int /*<<< orphan*/  control_reg; int /*<<< orphan*/  setup_reg; struct ti_abb_reg* regs; } ;
struct device {int dummy; } ;
struct regulator_dev {struct device dev; } ;

/* Variables and functions */
#define  TI_ABB_FAST_OPP 129 
 int TI_ABB_NOMINAL_OPP ; 
#define  TI_ABB_SLOW_OPP 128 
 int FUNC0 (struct device*,struct ti_abb*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,struct ti_abb*,struct ti_abb_info*) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct device*,struct ti_abb*) ; 

__attribute__((used)) static int FUNC4(struct regulator_dev *rdev, struct ti_abb *abb,
			  struct ti_abb_info *info)
{
	const struct ti_abb_reg *regs = abb->regs;
	struct device *dev = &rdev->dev;
	int ret;

	ret = FUNC0(dev, abb);
	if (ret)
		goto out;

	FUNC2(regs->fbb_sel_mask | regs->rbb_sel_mask, 0, abb->setup_reg);

	switch (info->opp_sel) {
	case TI_ABB_SLOW_OPP:
		FUNC2(regs->rbb_sel_mask, 1, abb->setup_reg);
		break;
	case TI_ABB_FAST_OPP:
		FUNC2(regs->fbb_sel_mask, 1, abb->setup_reg);
		break;
	}

	/* program next state of ABB ldo */
	FUNC2(regs->opp_sel_mask, info->opp_sel, abb->control_reg);

	/*
	 * program LDO VBB vset override if needed for !bypass mode
	 * XXX: Do not switch sequence - for !bypass, LDO override reset *must*
	 * be performed *before* switch to bias mode else VBB glitches.
	 */
	if (abb->ldo_base && info->opp_sel != TI_ABB_NOMINAL_OPP)
		FUNC1(dev, abb, info);

	/* Initiate ABB ldo change */
	FUNC2(regs->opp_change_mask, 1, abb->control_reg);

	/* Wait for ABB LDO to complete transition to new Bias setting */
	ret = FUNC3(dev, abb);
	if (ret)
		goto out;

	ret = FUNC0(dev, abb);
	if (ret)
		goto out;

	/*
	 * Reset LDO VBB vset override bypass mode
	 * XXX: Do not switch sequence - for bypass, LDO override reset *must*
	 * be performed *after* switch to bypass else VBB glitches.
	 */
	if (abb->ldo_base && info->opp_sel == TI_ABB_NOMINAL_OPP)
		FUNC1(dev, abb, info);

out:
	return ret;
}