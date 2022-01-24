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
struct TYPE_6__ {int /*<<< orphan*/  suspend_err; } ;
struct TYPE_5__ {int is_suspended; int /*<<< orphan*/  state; } ;
struct TYPE_4__ {scalar_t__ is_allowed; int /*<<< orphan*/  resume_work; int /*<<< orphan*/  suspend_work; } ;
struct ufs_hba {int pm_op_in_progress; int rpm_lvl; int spm_lvl; int curr_dev_pwr_mode; int uic_link_state; TYPE_3__ ufs_stats; TYPE_2__ clk_gating; TYPE_1__ clk_scaling; int /*<<< orphan*/  dev; int /*<<< orphan*/  auto_bkops_enabled; } ;
typedef  enum uic_link_state { ____Placeholder_uic_link_state } uic_link_state ;
typedef  enum ufs_pm_op { ____Placeholder_ufs_pm_op } ufs_pm_op ;
typedef  enum ufs_pm_level { ____Placeholder_ufs_pm_level } ufs_pm_level ;
typedef  enum ufs_dev_pwr_mode { ____Placeholder_ufs_dev_pwr_mode } ufs_dev_pwr_mode ;

/* Variables and functions */
 int /*<<< orphan*/  CLKS_OFF ; 
 int EINVAL ; 
 int UFS_ACTIVE_PWR_MODE ; 
 int UFS_POWERDOWN_PWR_MODE ; 
 int UIC_LINK_ACTIVE_STATE ; 
 int UIC_LINK_OFF_STATE ; 
 int /*<<< orphan*/  FUNC0 (struct ufs_hba*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 scalar_t__ FUNC6 (struct ufs_hba*) ; 
 int /*<<< orphan*/  FUNC7 (struct ufs_hba*) ; 
 int /*<<< orphan*/  FUNC8 (struct ufs_hba*) ; 
 int /*<<< orphan*/  FUNC9 (struct ufs_hba*) ; 
 int /*<<< orphan*/  FUNC10 (struct ufs_hba*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct ufs_hba*) ; 
 int /*<<< orphan*/  FUNC12 (struct ufs_hba*) ; 
 scalar_t__ FUNC13 (struct ufs_hba*) ; 
 scalar_t__ FUNC14 (struct ufs_hba*) ; 
 scalar_t__ FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (struct ufs_hba*) ; 
 int FUNC18 (struct ufs_hba*,int,int) ; 
 int /*<<< orphan*/  FUNC19 (struct ufs_hba*) ; 
 int /*<<< orphan*/  FUNC20 (struct ufs_hba*) ; 
 int FUNC21 (struct ufs_hba*,int) ; 
 int /*<<< orphan*/  FUNC22 (struct ufs_hba*) ; 
 int /*<<< orphan*/  FUNC23 (struct ufs_hba*,int) ; 
 int /*<<< orphan*/  FUNC24 (struct ufs_hba*) ; 
 int /*<<< orphan*/  FUNC25 (struct ufs_hba*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC27 (struct ufs_hba*) ; 
 int FUNC28 (struct ufs_hba*,int) ; 
 int /*<<< orphan*/  FUNC29 (struct ufs_hba*) ; 
 int /*<<< orphan*/  FUNC30 (struct ufs_hba*) ; 

__attribute__((used)) static int FUNC31(struct ufs_hba *hba, enum ufs_pm_op pm_op)
{
	int ret = 0;
	enum ufs_pm_level pm_lvl;
	enum ufs_dev_pwr_mode req_dev_pwr_mode;
	enum uic_link_state req_link_state;

	hba->pm_op_in_progress = 1;
	if (!FUNC16(pm_op)) {
		pm_lvl = FUNC15(pm_op) ?
			 hba->rpm_lvl : hba->spm_lvl;
		req_dev_pwr_mode = FUNC4(pm_lvl);
		req_link_state = FUNC5(pm_lvl);
	} else {
		req_dev_pwr_mode = UFS_POWERDOWN_PWR_MODE;
		req_link_state = UIC_LINK_OFF_STATE;
	}

	/*
	 * If we can't transition into any of the low power modes
	 * just gate the clocks.
	 */
	FUNC10(hba, false);
	hba->clk_gating.is_suspended = true;

	if (hba->clk_scaling.is_allowed) {
		FUNC1(&hba->clk_scaling.suspend_work);
		FUNC1(&hba->clk_scaling.resume_work);
		FUNC24(hba);
	}

	if (req_dev_pwr_mode == UFS_ACTIVE_PWR_MODE &&
			req_link_state == UIC_LINK_ACTIVE_STATE) {
		goto disable_clks;
	}

	if ((req_dev_pwr_mode == hba->curr_dev_pwr_mode) &&
	    (req_link_state == hba->uic_link_state))
		goto enable_gating;

	/* UFS device & link must be active before we enter in this function */
	if (!FUNC17(hba) || !FUNC12(hba)) {
		ret = -EINVAL;
		goto enable_gating;
	}

	if (FUNC15(pm_op)) {
		if (FUNC6(hba)) {
			/*
			 * The device is idle with no requests in the queue,
			 * allow background operations if bkops status shows
			 * that performance might be impacted.
			 */
			ret = FUNC27(hba);
			if (ret)
				goto enable_gating;
		} else {
			/* make sure that auto bkops is disabled */
			FUNC7(hba);
		}
	}

	if ((req_dev_pwr_mode != hba->curr_dev_pwr_mode) &&
	     ((FUNC15(pm_op) && !hba->auto_bkops_enabled) ||
	       !FUNC15(pm_op))) {
		/* ensure that bkops is disabled */
		FUNC7(hba);
		ret = FUNC21(hba, req_dev_pwr_mode);
		if (ret)
			goto enable_gating;
	}

	ret = FUNC18(hba, req_link_state, 1);
	if (ret)
		goto set_dev_active;

	FUNC30(hba);

disable_clks:
	/*
	 * Call vendor specific suspend callback. As these callbacks may access
	 * vendor specific host controller register space call them before the
	 * host clocks are ON.
	 */
	ret = FUNC28(hba, pm_op);
	if (ret)
		goto set_link_active;

	if (!FUNC12(hba))
		FUNC23(hba, false);
	else
		/* If link is active, device ref_clk can't be switched off */
		FUNC0(hba, false, true);

	hba->clk_gating.state = CLKS_OFF;
	FUNC3(FUNC2(hba->dev), hba->clk_gating.state);
	/*
	 * Disable the host irq as host controller as there won't be any
	 * host controller transaction expected till resume.
	 */
	FUNC8(hba);
	/* Put the host controller in low power mode if possible */
	FUNC9(hba);
	goto out;

set_link_active:
	if (hba->clk_scaling.is_allowed)
		FUNC20(hba);
	FUNC29(hba);
	if (FUNC13(hba) && !FUNC25(hba))
		FUNC22(hba);
	else if (FUNC14(hba))
		FUNC11(hba);
set_dev_active:
	if (!FUNC21(hba, UFS_ACTIVE_PWR_MODE))
		FUNC7(hba);
enable_gating:
	if (hba->clk_scaling.is_allowed)
		FUNC20(hba);
	hba->clk_gating.is_suspended = false;
	FUNC19(hba);
out:
	hba->pm_op_in_progress = 0;
	if (ret)
		FUNC26(&hba->ufs_stats.suspend_err, (u32)ret);
	return ret;
}