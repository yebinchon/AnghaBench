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
struct rtl_efuse {scalar_t__ antenna_div_type; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 scalar_t__ CGCS_RX_HW_ANTDIV ; 
 scalar_t__ CG_TRX_HW_ANTDIV ; 
 scalar_t__ CG_TRX_SMART_ANTDIV ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*) ; 
 struct rtl_efuse* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*) ; 

__attribute__((used)) static void FUNC5(struct ieee80211_hw *hw)
{
	struct rtl_efuse *rtlefuse = FUNC3(FUNC4(hw));

	if (rtlefuse->antenna_div_type == CGCS_RX_HW_ANTDIV)
		FUNC1(hw);
	else if (rtlefuse->antenna_div_type == CG_TRX_HW_ANTDIV)
		FUNC2(hw);
	else if (rtlefuse->antenna_div_type == CG_TRX_SMART_ANTDIV)
		FUNC0(hw);

}