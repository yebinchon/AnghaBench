#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u_char ;
typedef  int u32 ;
struct sym_tcb {int dummy; } ;
struct TYPE_6__ {void* size; void* addr; } ;
struct sym_pmc {TYPE_3__ sg; void* ret; } ;
struct sym_hcb {int dummy; } ;
struct TYPE_5__ {TYPE_1__* data; struct sym_pmc pm1; struct sym_pmc pm0; } ;
struct sym_ccb {int host_flags; int goalp; TYPE_2__ phys; } ;
struct TYPE_4__ {int /*<<< orphan*/  size; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int HF_ACT_PM ; 
 int HF_DP_SAVED ; 
 int /*<<< orphan*/  HF_PRT ; 
 int HF_SENSE ; 
 int FUNC0 (struct sym_hcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sym_hcb*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sym_hcb*,int) ; 
 int FUNC3 (struct sym_hcb*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct sym_hcb*,int /*<<< orphan*/ ) ; 
 int SYM_CONF_MAX_SG ; 
 int /*<<< orphan*/  clrack ; 
 void* FUNC5 (int) ; 
 int /*<<< orphan*/  msg_bad ; 
 int /*<<< orphan*/  pm0_data ; 
 int /*<<< orphan*/  pm1_data ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct sym_hcb*,struct sym_ccb*,int,int*) ; 
 int FUNC8 (struct sym_hcb*,struct sym_ccb*) ; 
 int /*<<< orphan*/  FUNC9 (struct sym_hcb*,struct sym_ccb*,int) ; 

__attribute__((used)) static void FUNC10(struct sym_hcb *np, struct sym_tcb *tp, struct sym_ccb *cp, int ofs)
{
	int dp_ofs	= ofs;
	u32	dp_scr	= FUNC8 (np, cp);
	u32	dp_ret;
	u32	tmp;
	u_char	hflags;
	int	dp_sg;
	struct	sym_pmc *pm;

	/*
	 *  Not supported for auto-sense.
	 */
	if (cp->host_flags & HF_SENSE)
		goto out_reject;

	/*
	 *  Apply our alchemy:) (see comments in sym_evaluate_dp()), 
	 *  to the resulted data pointer.
	 */
	dp_sg = FUNC7(np, cp, dp_scr, &dp_ofs);
	if (dp_sg < 0)
		goto out_reject;

	/*
	 *  And our alchemy:) allows to easily calculate the data 
	 *  script address we want to return for the next data phase.
	 */
	dp_ret = FUNC5(cp->goalp);
	dp_ret = dp_ret - 8 - (SYM_CONF_MAX_SG - dp_sg) * (2*4);

	/*
	 *  If offset / scatter entry is zero we donnot need 
	 *  a context for the new current data pointer.
	 */
	if (dp_ofs == 0) {
		dp_scr = dp_ret;
		goto out_ok;
	}

	/*
	 *  Get a context for the new current data pointer.
	 */
	hflags = FUNC0(np, HF_PRT);

	if (hflags & HF_DP_SAVED)
		hflags ^= HF_ACT_PM;

	if (!(hflags & HF_ACT_PM)) {
		pm  = &cp->phys.pm0;
		dp_scr = FUNC3(np, pm0_data);
	}
	else {
		pm = &cp->phys.pm1;
		dp_scr = FUNC3(np, pm1_data);
	}

	hflags &= ~(HF_DP_SAVED);

	FUNC1(np, HF_PRT, hflags);

	/*
	 *  Set up the new current data pointer.
	 *  ofs < 0 there, and for the next data phase, we 
	 *  want to transfer part of the data of the sg entry 
	 *  corresponding to index dp_sg-1 prior to returning 
	 *  to the main data script.
	 */
	pm->ret = FUNC5(dp_ret);
	tmp  = FUNC6(cp->phys.data[dp_sg-1].addr);
	tmp += FUNC6(cp->phys.data[dp_sg-1].size) + dp_ofs;
	pm->sg.addr = FUNC5(tmp);
	pm->sg.size = FUNC5(-dp_ofs);

out_ok:
	FUNC9 (np, cp, dp_scr);
	FUNC2(np, FUNC3(np, clrack));
	return;

out_reject:
	FUNC2(np, FUNC4(np, msg_bad));
}