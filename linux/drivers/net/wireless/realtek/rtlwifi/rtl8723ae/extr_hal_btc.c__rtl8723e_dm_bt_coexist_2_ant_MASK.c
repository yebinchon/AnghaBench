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
typedef  int u8 ;
struct TYPE_3__ {void* bt_profile_action; void* bt_profile_case; int /*<<< orphan*/  cstate; } ;
struct rtl_priv {TYPE_1__ btcoexist; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_4__ {int c2h_bt_info_original; scalar_t__ c2h_bt_info_req_sent; } ;

/* Variables and functions */
 int BTINFO_B_A2DP ; 
 int BTINFO_B_FTP ; 
 int BTINFO_B_HID ; 
 int BTINFO_B_SCO_BUSY ; 
 int BTINFO_B_SCO_ESCO ; 
 void* BT_COEX_MECH_COMMON ; 
 void* BT_COEX_MECH_FTP_A2DP ; 
 void* BT_COEX_MECH_HID_SCO_ESCO ; 
 void* BT_COEX_MECH_NONE ; 
 int /*<<< orphan*/  BT_COEX_STATE_BTINFO_B_FTP_A2DP ; 
 int /*<<< orphan*/  BT_COEX_STATE_BTINFO_B_HID_SCOESCO ; 
 int /*<<< orphan*/  COMP_BT_COEXIST ; 
 int /*<<< orphan*/  DBG_DMESG ; 
 int /*<<< orphan*/  DBG_TRACE ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*) ; 
 TYPE_2__ hal_coex_8723 ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*) ; 
 scalar_t__ FUNC5 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_hw*) ; 
 struct rtl_priv* FUNC7 (struct ieee80211_hw*) ; 

__attribute__((used)) static void FUNC8(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC7(hw);
	u8 bt_info_original;
	FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
		"[BTCoex] Get bt info by fw!!\n");

	FUNC1(hw);

	if (hal_coex_8723.c2h_bt_info_req_sent) {
			FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_TRACE,
				"[BTCoex] c2h for bt_info not rcvd yet!!\n");
	}

	bt_info_original = hal_coex_8723.c2h_bt_info_original;

	/* when bt inquiry or page scan, we have to set h2c 0x25 */
	/* ignore wlanact for continuous 4x2secs */
	FUNC4(hw);
	FUNC6(hw);

	if (FUNC5(hw)) {
		rtlpriv->btcoexist.bt_profile_case = BT_COEX_MECH_COMMON;
		rtlpriv->btcoexist.bt_profile_action = BT_COEX_MECH_COMMON;
		FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
		"Action 2-Ant common.\n");
	} else {
		if ((bt_info_original & BTINFO_B_HID) ||
			(bt_info_original & BTINFO_B_SCO_BUSY) ||
			(bt_info_original & BTINFO_B_SCO_ESCO)) {
				rtlpriv->btcoexist.cstate |=
					BT_COEX_STATE_BTINFO_B_HID_SCOESCO;
				rtlpriv->btcoexist.bt_profile_case =
					BT_COEX_MECH_HID_SCO_ESCO;
				rtlpriv->btcoexist.bt_profile_action =
					BT_COEX_MECH_HID_SCO_ESCO;
				FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
					 "[BTCoex], BTInfo: bHid|bSCOBusy|bSCOeSCO\n");
				FUNC3(hw);
		} else if ((bt_info_original & BTINFO_B_FTP) ||
				(bt_info_original & BTINFO_B_A2DP)) {
				rtlpriv->btcoexist.cstate |=
					BT_COEX_STATE_BTINFO_B_FTP_A2DP;
				rtlpriv->btcoexist.bt_profile_case =
					BT_COEX_MECH_FTP_A2DP;
				rtlpriv->btcoexist.bt_profile_action =
					BT_COEX_MECH_FTP_A2DP;
				FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
					 "BTInfo: bFTP|bA2DP\n");
				FUNC2(hw);
		} else {
				rtlpriv->btcoexist.cstate |=
					BT_COEX_STATE_BTINFO_B_HID_SCOESCO;
				rtlpriv->btcoexist.bt_profile_case =
					BT_COEX_MECH_NONE;
				rtlpriv->btcoexist.bt_profile_action =
					BT_COEX_MECH_NONE;
				FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
					 "[BTCoex], BTInfo: undefined case!!!!\n");
				FUNC3(hw);
		}
	}
}