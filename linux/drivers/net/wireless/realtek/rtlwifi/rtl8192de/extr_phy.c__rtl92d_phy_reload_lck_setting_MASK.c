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
typedef  int u8 ;
typedef  int u32 ;
struct TYPE_2__ {scalar_t__ current_bandtype; scalar_t__ macphymode; int interfaceindex; int during_mac1init_radioa; int during_mac0init_radiob; int /*<<< orphan*/  version; } ;
struct rtl_priv {TYPE_1__ rtlhal; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 scalar_t__ BAND_ON_2_4G ; 
 scalar_t__ BAND_ON_5G ; 
 int /*<<< orphan*/  COMP_CMD ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 scalar_t__ DUALMAC_DUALPHY ; 
 int /*<<< orphan*/  FINIT ; 
 int /*<<< orphan*/  INIT_IQK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int RF90_PATH_A ; 
 int RF90_PATH_B ; 
 int /*<<< orphan*/  RF_SYN_G4 ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*,int,int*) ; 
 int* curveindex_2g ; 
 int* curveindex_5g ; 
 int FUNC5 (struct ieee80211_hw*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_hw*,int) ; 
 int FUNC7 (struct ieee80211_hw*,int,int /*<<< orphan*/ ,int) ; 
 struct rtl_priv* FUNC8 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC9 (struct ieee80211_hw*,int,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC10(struct ieee80211_hw *hw,
		u8 channel)
{
	struct rtl_priv *rtlpriv = FUNC8(hw);
	u8 erfpath = rtlpriv->rtlhal.current_bandtype ==
		BAND_ON_5G ? RF90_PATH_A :
		FUNC0(rtlpriv->rtlhal.version) ?
		RF90_PATH_B : RF90_PATH_A;
	u32 u4tmp = 0, u4regvalue = 0;
	bool bneed_powerdown_radio = false;

	FUNC2(rtlpriv, COMP_CMD, DBG_LOUD, "path %d\n", erfpath);
	FUNC1(rtlpriv, FINIT, INIT_IQK, "band type = %d\n",
		rtlpriv->rtlhal.current_bandtype);
	FUNC1(rtlpriv, FINIT, INIT_IQK,  "channel = %d\n", channel);
	if (rtlpriv->rtlhal.current_bandtype == BAND_ON_5G) {/* Path-A for 5G */
		u4tmp = curveindex_5g[channel-1];
		FUNC1(rtlpriv, FINIT, INIT_IQK,
			"ver 1 set RF-A, 5G,	0x28 = 0x%x !!\n", u4tmp);
		if (rtlpriv->rtlhal.macphymode == DUALMAC_DUALPHY &&
			rtlpriv->rtlhal.interfaceindex == 1) {
			bneed_powerdown_radio =
				FUNC5(hw, false);
			rtlpriv->rtlhal.during_mac1init_radioa = true;
			/* asume no this case */
			if (bneed_powerdown_radio)
				FUNC3(hw, erfpath,
							  &u4regvalue);
		}
		FUNC9(hw, erfpath, RF_SYN_G4, 0x3f800, u4tmp);
		if (bneed_powerdown_radio)
			FUNC4(hw, erfpath, &u4regvalue);
		if (rtlpriv->rtlhal.during_mac1init_radioa)
			FUNC6(hw, false);
	} else if (rtlpriv->rtlhal.current_bandtype == BAND_ON_2_4G) {
		u4tmp = curveindex_2g[channel-1];
		FUNC1(rtlpriv, FINIT, INIT_IQK,
			"ver 3 set RF-B, 2G, 0x28 = 0x%x !!\n", u4tmp);
		if (rtlpriv->rtlhal.macphymode == DUALMAC_DUALPHY &&
			rtlpriv->rtlhal.interfaceindex == 0) {
			bneed_powerdown_radio =
				FUNC5(hw, true);
			rtlpriv->rtlhal.during_mac0init_radiob = true;
			if (bneed_powerdown_radio)
				FUNC3(hw, erfpath,
							  &u4regvalue);
		}
		FUNC9(hw, erfpath, RF_SYN_G4, 0x3f800, u4tmp);
		FUNC1(rtlpriv, FINIT, INIT_IQK,
			"ver 3 set RF-B, 2G, 0x28 = 0x%x !!\n",
			FUNC7(hw,  erfpath, RF_SYN_G4, 0x3f800));
		if (bneed_powerdown_radio)
			FUNC4(hw, erfpath, &u4regvalue);
		if (rtlpriv->rtlhal.during_mac0init_radiob)
			FUNC6(hw, true);
	}
	FUNC2(rtlpriv, COMP_CMD, DBG_LOUD, "<====\n");
}