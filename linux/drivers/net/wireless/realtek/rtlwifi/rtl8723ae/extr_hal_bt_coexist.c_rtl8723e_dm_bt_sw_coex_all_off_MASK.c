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
struct TYPE_2__ {int sw_coexist_all_off; } ;
struct rtl_priv {TYPE_1__ btcoexist; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_BT_COEXIST ; 
 int /*<<< orphan*/  DBG_TRACE ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*) ; 
 struct rtl_priv* FUNC2 (struct ieee80211_hw*) ; 

void FUNC3(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC2(hw);

	FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_TRACE,
		 "rtl8723e_dm_bt_sw_coex_all_off()\n");

	if (rtlpriv->btcoexist.sw_coexist_all_off)
		return;

	FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_TRACE,
		 "rtl8723e_dm_bt_sw_coex_all_off(), real Do\n");
	FUNC1(hw);
	rtlpriv->btcoexist.sw_coexist_all_off = true;
}