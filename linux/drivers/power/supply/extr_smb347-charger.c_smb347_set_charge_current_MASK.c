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
struct smb347_charger {int /*<<< orphan*/  regmap; TYPE_1__* pdata; } ;
struct TYPE_2__ {scalar_t__ termination_current; scalar_t__ pre_charge_current; scalar_t__ max_charge_current; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CFG_CHARGE_CURRENT ; 
 int /*<<< orphan*/  CFG_CHARGE_CURRENT_FCC_MASK ; 
 int CFG_CHARGE_CURRENT_FCC_SHIFT ; 
 int /*<<< orphan*/  CFG_CHARGE_CURRENT_PCC_MASK ; 
 int CFG_CHARGE_CURRENT_PCC_SHIFT ; 
 int /*<<< orphan*/  CFG_CHARGE_CURRENT_TC_MASK ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  fcc_tbl ; 
 int /*<<< orphan*/  pcc_tbl ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  tc_tbl ; 

__attribute__((used)) static int FUNC3(struct smb347_charger *smb)
{
	int ret;

	if (smb->pdata->max_charge_current) {
		ret = FUNC1(fcc_tbl, FUNC0(fcc_tbl),
				    smb->pdata->max_charge_current);
		if (ret < 0)
			return ret;

		ret = FUNC2(smb->regmap, CFG_CHARGE_CURRENT,
					 CFG_CHARGE_CURRENT_FCC_MASK,
					 ret << CFG_CHARGE_CURRENT_FCC_SHIFT);
		if (ret < 0)
			return ret;
	}

	if (smb->pdata->pre_charge_current) {
		ret = FUNC1(pcc_tbl, FUNC0(pcc_tbl),
				    smb->pdata->pre_charge_current);
		if (ret < 0)
			return ret;

		ret = FUNC2(smb->regmap, CFG_CHARGE_CURRENT,
					 CFG_CHARGE_CURRENT_PCC_MASK,
					 ret << CFG_CHARGE_CURRENT_PCC_SHIFT);
		if (ret < 0)
			return ret;
	}

	if (smb->pdata->termination_current) {
		ret = FUNC1(tc_tbl, FUNC0(tc_tbl),
				    smb->pdata->termination_current);
		if (ret < 0)
			return ret;

		ret = FUNC2(smb->regmap, CFG_CHARGE_CURRENT,
					 CFG_CHARGE_CURRENT_TC_MASK, ret);
		if (ret < 0)
			return ret;
	}

	return 0;
}