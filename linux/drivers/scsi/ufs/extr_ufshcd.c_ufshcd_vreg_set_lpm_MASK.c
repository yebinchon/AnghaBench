#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  vccq2; int /*<<< orphan*/  vccq; int /*<<< orphan*/  vcc; } ;
struct TYPE_4__ {int /*<<< orphan*/  is_lu_power_on_wp; } ;
struct ufs_hba {int dev_quirks; TYPE_1__ vreg_info; int /*<<< orphan*/  dev; TYPE_2__ dev_info; } ;

/* Variables and functions */
 int UFS_DEVICE_QUIRK_DELAY_BEFORE_LPM ; 
 int /*<<< orphan*/  FUNC0 (struct ufs_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ufs_hba*) ; 
 scalar_t__ FUNC2 (struct ufs_hba*) ; 
 int /*<<< orphan*/  FUNC3 (struct ufs_hba*) ; 
 scalar_t__ FUNC4 (struct ufs_hba*) ; 
 int /*<<< orphan*/  FUNC5 (struct ufs_hba*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 

__attribute__((used)) static void FUNC8(struct ufs_hba *hba)
{
	/*
	 * It seems some UFS devices may keep drawing more than sleep current
	 * (atleast for 500us) from UFS rails (especially from VCCQ rail).
	 * To avoid this situation, add 2ms delay before putting these UFS
	 * rails in LPM mode.
	 */
	if (!FUNC1(hba) &&
	    hba->dev_quirks & UFS_DEVICE_QUIRK_DELAY_BEFORE_LPM)
		FUNC7(2000, 2100);

	/*
	 * If UFS device is either in UFS_Sleep turn off VCC rail to save some
	 * power.
	 *
	 * If UFS device and link is in OFF state, all power supplies (VCC,
	 * VCCQ, VCCQ2) can be turned off if power on write protect is not
	 * required. If UFS link is inactive (Hibern8 or OFF state) and device
	 * is in sleep state, put VCCQ & VCCQ2 rails in LPM mode.
	 *
	 * Ignore the error returned by ufshcd_toggle_vreg() as device is anyway
	 * in low power state which would save some power.
	 */
	if (FUNC4(hba) && FUNC2(hba) &&
	    !hba->dev_info.is_lu_power_on_wp) {
		FUNC5(hba, false);
	} else if (!FUNC3(hba)) {
		FUNC6(hba->dev, hba->vreg_info.vcc, false);
		if (!FUNC1(hba)) {
			FUNC0(hba, hba->vreg_info.vccq);
			FUNC0(hba, hba->vreg_info.vccq2);
		}
	}
}