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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_6__ {int /*<<< orphan*/  resume_err; } ;
struct TYPE_5__ {scalar_t__ is_allowed; } ;
struct TYPE_4__ {int is_suspended; } ;
struct ufs_hba {int pm_op_in_progress; int uic_link_state; TYPE_3__ ufs_stats; TYPE_2__ clk_scaling; TYPE_1__ clk_gating; } ;
typedef  enum uic_link_state { ____Placeholder_uic_link_state } uic_link_state ;
typedef  enum ufs_pm_op { ____Placeholder_ufs_pm_op } ufs_pm_op ;

/* Variables and functions */
 int /*<<< orphan*/  UFS_ACTIVE_PWR_MODE ; 
 int /*<<< orphan*/  FUNC0 (struct ufs_hba*) ; 
 int /*<<< orphan*/  FUNC1 (struct ufs_hba*) ; 
 int /*<<< orphan*/  FUNC2 (struct ufs_hba*) ; 
 int FUNC3 (struct ufs_hba*) ; 
 int /*<<< orphan*/  FUNC4 (struct ufs_hba*) ; 
 int FUNC5 (struct ufs_hba*) ; 
 int /*<<< orphan*/  FUNC6 (struct ufs_hba*) ; 
 scalar_t__ FUNC7 (struct ufs_hba*) ; 
 scalar_t__ FUNC8 (struct ufs_hba*) ; 
 int /*<<< orphan*/  FUNC9 (struct ufs_hba*) ; 
 scalar_t__ FUNC10 (struct ufs_hba*) ; 
 int /*<<< orphan*/  FUNC11 (struct ufs_hba*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct ufs_hba*) ; 
 int /*<<< orphan*/  FUNC13 (struct ufs_hba*) ; 
 int FUNC14 (struct ufs_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct ufs_hba*) ; 
 int FUNC16 (struct ufs_hba*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct ufs_hba*) ; 
 int FUNC18 (struct ufs_hba*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct ufs_hba*) ; 
 int FUNC21 (struct ufs_hba*,int) ; 
 int /*<<< orphan*/  FUNC22 (struct ufs_hba*,int) ; 
 int FUNC23 (struct ufs_hba*) ; 
 int /*<<< orphan*/  FUNC24 (struct ufs_hba*) ; 

__attribute__((used)) static int FUNC25(struct ufs_hba *hba, enum ufs_pm_op pm_op)
{
	int ret;
	enum uic_link_state old_link_state;

	hba->pm_op_in_progress = 1;
	old_link_state = hba->uic_link_state;

	FUNC4(hba);
	/* Make sure clocks are enabled before accessing controller */
	ret = FUNC16(hba, true);
	if (ret)
		goto out;

	/* enable the host irq as host controller would be active soon */
	ret = FUNC3(hba);
	if (ret)
		goto disable_irq_and_vops_clks;

	ret = FUNC23(hba);
	if (ret)
		goto disable_irq_and_vops_clks;

	/*
	 * Call vendor specific resume callback. As these callbacks may access
	 * vendor specific host controller register space call them when the
	 * host clocks are ON.
	 */
	ret = FUNC21(hba, pm_op);
	if (ret)
		goto disable_vreg;

	if (FUNC7(hba)) {
		ret = FUNC18(hba);
		if (!ret)
			FUNC15(hba);
		else
			goto vendor_suspend;
	} else if (FUNC8(hba)) {
		ret = FUNC5(hba);
		/*
		 * ufshcd_host_reset_and_restore() should have already
		 * set the link state as active
		 */
		if (ret || !FUNC6(hba))
			goto vendor_suspend;
	}

	if (!FUNC9(hba)) {
		ret = FUNC14(hba, UFS_ACTIVE_PWR_MODE);
		if (ret)
			goto set_old_link_state;
	}

	if (FUNC10(hba))
		FUNC2(hba);
	else
		/*
		 * If BKOPs operations are urgently needed at this moment then
		 * keep auto-bkops enabled or else disable it.
		 */
		FUNC20(hba);

	hba->clk_gating.is_suspended = false;

	if (hba->clk_scaling.is_allowed)
		FUNC13(hba);

	/* Schedule clock gating in case of no access to UFS device yet */
	FUNC12(hba);

	/* Enable Auto-Hibernate if configured */
	FUNC0(hba);

	goto out;

set_old_link_state:
	FUNC11(hba, old_link_state, 0);
vendor_suspend:
	FUNC22(hba, pm_op);
disable_vreg:
	FUNC24(hba);
disable_irq_and_vops_clks:
	FUNC1(hba);
	if (hba->clk_scaling.is_allowed)
		FUNC17(hba);
	FUNC16(hba, false);
out:
	hba->pm_op_in_progress = 0;
	if (ret)
		FUNC19(&hba->ufs_stats.resume_err, (u32)ret);
	return ret;
}