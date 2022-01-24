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
struct rtl_ps_ctl {scalar_t__ rfpwr_state; int /*<<< orphan*/  rfchange_inprogress; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 scalar_t__ ERFON ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_hw*) ; 
 struct rtl_ps_ctl* FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(struct ieee80211_hw *hw)
{
	struct rtl_ps_ctl *ppsc = FUNC7(FUNC6(hw));
	bool fw_current_inpsmode = false;
	bool fwps_awake = true;

	/* 1. RF is OFF. (No need to do DM.)
	 * 2. Fw is under power saving mode for FwLPS.
	 *    (Prevent from SW/FW I/O racing.)
	 * 3. IPS workitem is scheduled. (Prevent from IPS sequence
	 *    to be swapped with DM.
	 * 4. RFChangeInProgress is TRUE.
	 *    (Prevent from broken by IPS/HW/SW Rf off.) */

	if ((ppsc->rfpwr_state == ERFON) && ((!fw_current_inpsmode) &&
	    fwps_awake) && (!ppsc->rfchange_inprogress)) {
		FUNC5(hw);
		FUNC3(hw);
		FUNC4(hw);
		FUNC1(hw);
		/* rtl92d_dm_dynamic_bb_powersaving(hw); */
		FUNC2(hw);
		/* rtl92d_dm_check_txpower_tracking_thermal_meter(hw); */
		/* rtl92d_dm_refresh_rate_adaptive_mask(hw); */
		/* rtl92d_dm_interrupt_migration(hw); */
		FUNC0(hw);
	}
}