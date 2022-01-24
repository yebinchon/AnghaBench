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
struct rtl_ps_ctl {int fw_current_inpsmode; } ;
struct rtl_priv {int dummy; } ;
struct rtl_hal {int fw_ready; int fw_clk_change_in_progress; int allow_sw_to_change_hwclc; scalar_t__ last_hmeboxnum; int /*<<< orphan*/  fw_ps_state; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_INIT ; 
 int /*<<< orphan*/  DBG_DMESG ; 
 int /*<<< orphan*/  FW_PS_STATE_ALL_ON_8821AE ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (struct ieee80211_hw*,int) ; 
 struct rtl_hal* FUNC2 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC3 (struct ieee80211_hw*) ; 
 struct rtl_ps_ctl* FUNC4 (struct rtl_priv*) ; 

void FUNC5(struct ieee80211_hw *hw,
					 bool used_wowlan_fw)
{
	struct rtl_priv *rtlpriv = FUNC3(hw);
	struct rtl_hal *rtlhal = FUNC2(FUNC3(hw));
	struct rtl_ps_ctl *ppsc = FUNC4(FUNC3(hw));
	/* 1. Before WoWLAN or After WOWLAN we need to re-download Fw. */
	if (FUNC1(hw, used_wowlan_fw)) {
		FUNC0(rtlpriv, COMP_INIT, DBG_DMESG,
			 "Re-Download Firmware failed!!\n");
		rtlhal->fw_ready = false;
		return;
	}
	FUNC0(rtlpriv, COMP_INIT, DBG_DMESG,
		 "Re-Download Firmware Success !!\n");
	rtlhal->fw_ready = true;

	/* 2. Re-Init the variables about Fw related setting. */
	ppsc->fw_current_inpsmode = false;
	rtlhal->fw_ps_state = FW_PS_STATE_ALL_ON_8821AE;
	rtlhal->fw_clk_change_in_progress = false;
	rtlhal->allow_sw_to_change_hwclc = false;
	rtlhal->last_hmeboxnum = 0;
}