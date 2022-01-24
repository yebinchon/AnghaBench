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
struct rtl_ps_ctl {int reg_rfps_level; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int RT_RF_PS_LEVEL_ALWAYS_ASPM ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_ps_ctl*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*) ; 
 struct rtl_ps_ctl* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct ieee80211_hw *hw)
{
	struct rtl_ps_ctl *ppsc = FUNC4(FUNC3(hw));

	FUNC1(hw);

	if (ppsc->reg_rfps_level & RT_RF_PS_LEVEL_ALWAYS_ASPM) {
		/*Always enable ASPM & Clock Req. */
		FUNC2(hw);
		FUNC0(ppsc, RT_RF_PS_LEVEL_ALWAYS_ASPM);
	}
}