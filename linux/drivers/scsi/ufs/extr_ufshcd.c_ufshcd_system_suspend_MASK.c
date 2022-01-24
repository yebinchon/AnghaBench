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
struct ufs_hba {int is_sys_suspended; int /*<<< orphan*/  uic_link_state; int /*<<< orphan*/  curr_dev_pwr_mode; int /*<<< orphan*/  dev; int /*<<< orphan*/  spm_lvl; int /*<<< orphan*/  is_powered; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int /*<<< orphan*/  UFS_SYSTEM_PM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct ufs_hba*) ; 
 int FUNC9 (struct ufs_hba*,int /*<<< orphan*/ ) ; 

int FUNC10(struct ufs_hba *hba)
{
	int ret = 0;
	ktime_t start = FUNC1();

	if (!hba || !hba->is_powered)
		return 0;

	if ((FUNC6(hba->spm_lvl) ==
	     hba->curr_dev_pwr_mode) &&
	    (FUNC7(hba->spm_lvl) ==
	     hba->uic_link_state))
		goto out;

	if (FUNC4(hba->dev)) {
		/*
		 * UFS device and/or UFS link low power states during runtime
		 * suspend seems to be different than what is expected during
		 * system suspend. Hence runtime resume the devic & link and
		 * let the system suspend low power states to take effect.
		 * TODO: If resume takes longer time, we might have optimize
		 * it in future by not resuming everything if possible.
		 */
		ret = FUNC8(hba);
		if (ret)
			goto out;
	}

	ret = FUNC9(hba, UFS_SYSTEM_PM);
out:
	FUNC5(FUNC0(hba->dev), ret,
		FUNC3(FUNC2(FUNC1(), start)),
		hba->curr_dev_pwr_mode, hba->uic_link_state);
	if (!ret)
		hba->is_sys_suspended = true;
	return ret;
}