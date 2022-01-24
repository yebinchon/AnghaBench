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
struct rtl_ps_ctl {int rfpwr_state; } ;
struct ieee80211_hw {int dummy; } ;
typedef  enum rf_pwrstate { ____Placeholder_rf_pwrstate } rf_pwrstate ;

/* Variables and functions */
 int FUNC0 (struct ieee80211_hw*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*) ; 
 struct rtl_ps_ctl* FUNC2 (int /*<<< orphan*/ ) ; 

bool FUNC3(struct ieee80211_hw *hw,
				    enum rf_pwrstate rfpwr_state)
{
	struct rtl_ps_ctl *ppsc = FUNC2(FUNC1(hw));

	bool bresult = false;

	if (rfpwr_state == ppsc->rfpwr_state)
		return bresult;
	bresult = FUNC0(hw, rfpwr_state);
	return bresult;
}