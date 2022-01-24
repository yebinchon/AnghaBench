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
typedef  int u32 ;
struct TYPE_2__ {int sw_coexist_all_off; } ;
struct rtl_priv {TYPE_1__ btcoexist; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_BT_COEXIST ; 
 int /*<<< orphan*/  DBG_TRACE ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*,int,int,int) ; 
 struct rtl_priv* FUNC2 (struct ieee80211_hw*) ; 

__attribute__((used)) static void FUNC3(
		struct ieee80211_hw *hw,
		bool sw_dac_swing_on,
		u32 sw_dac_swing_lvl)
{
	struct rtl_priv *rtlpriv = FUNC2(hw);

	if (sw_dac_swing_on) {
		FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_TRACE,
			 "[BTCoex], SwDacSwing = 0x%x\n", sw_dac_swing_lvl);
		FUNC1(hw, 0x880, 0xff000000,
				       sw_dac_swing_lvl);
		rtlpriv->btcoexist.sw_coexist_all_off = false;
	} else {
		FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_TRACE,
			 "[BTCoex], SwDacSwing Off!\n");
		FUNC1(hw, 0x880, 0xff000000, 0xc0);
	}
}