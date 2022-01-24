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
typedef  scalar_t__ u32 ;
struct TYPE_2__ {int /*<<< orphan*/  mode; } ;
struct rtl_phy {int current_channel; int sw_chnl_inprogress; scalar_t__ sw_chnl_step; scalar_t__ sw_chnl_stage; scalar_t__ lck_inprogress; scalar_t__ set_bwmode_inprogress; } ;
struct rtl_priv {TYPE_1__ mac80211; struct rtl_phy phy; } ;
struct rtl_hal {scalar_t__ macphymode; scalar_t__ bandset; int current_bandtype; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
#define  BAND_ON_2_4G 129 
#define  BAND_ON_5G 128 
 scalar_t__ BAND_ON_BOTH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  COMP_CHAN ; 
 int /*<<< orphan*/  COMP_SCAN ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 int /*<<< orphan*/  DBG_TRACE ; 
 int /*<<< orphan*/  MASKDWORD ; 
 int /*<<< orphan*/  RFPGA0_XAB_RFPARAMETER ; 
 scalar_t__ FUNC1 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ SINGLEMAC_SINGLEPHY ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*,int,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC5 (struct rtl_hal*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_hw*,int) ; 
 scalar_t__ FUNC8 (struct ieee80211_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rtl_hal* FUNC9 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC10 (struct ieee80211_hw*) ; 

u8 FUNC11(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC10(hw);
	struct rtl_phy *rtlphy = &(rtlpriv->phy);
	struct rtl_hal *rtlhal = FUNC9(FUNC10(hw));
	u32 delay;
	u32 timeout = 1000, timecount = 0;
	u8 channel = rtlphy->current_channel;
	u32 ret_value;

	if (rtlphy->sw_chnl_inprogress)
		return 0;
	if (rtlphy->set_bwmode_inprogress)
		return 0;

	if ((FUNC5(rtlhal)) || (FUNC1(hw))) {
		FUNC2(rtlpriv, COMP_CHAN, DBG_LOUD,
			 "sw_chnl_inprogress false driver sleep or unload\n");
		return 0;
	}
	while (rtlphy->lck_inprogress && timecount < timeout) {
		FUNC6(50);
		timecount += 50;
	}
	if (rtlhal->macphymode == SINGLEMAC_SINGLEPHY &&
	    rtlhal->bandset == BAND_ON_BOTH) {
		ret_value = FUNC8(hw, RFPGA0_XAB_RFPARAMETER,
					  MASKDWORD);
		if (rtlphy->current_channel > 14 && !(ret_value & FUNC0(0)))
			FUNC7(hw, BAND_ON_5G);
		else if (rtlphy->current_channel <= 14 && (ret_value & FUNC0(0)))
			FUNC7(hw, BAND_ON_2_4G);
	}
	switch (rtlhal->current_bandtype) {
	case BAND_ON_5G:
		/* Get first channel error when change between
		 * 5G and 2.4G band. */
		if (channel <= 14)
			return 0;
		FUNC3((channel <= 14), "rtl8192de: 5G but channel<=14\n");
		break;
	case BAND_ON_2_4G:
		/* Get first channel error when change between
		 * 5G and 2.4G band. */
		if (channel > 14)
			return 0;
		FUNC3((channel > 14), "rtl8192de: 2G but channel>14\n");
		break;
	default:
		FUNC3(true, "rtl8192de: Invalid WirelessMode(%#x)!!\n",
			  rtlpriv->mac80211.mode);
		break;
	}
	rtlphy->sw_chnl_inprogress = true;
	if (channel == 0)
		channel = 1;
	rtlphy->sw_chnl_stage = 0;
	rtlphy->sw_chnl_step = 0;
	FUNC2(rtlpriv, COMP_SCAN, DBG_TRACE,
		 "switch to channel%d\n", rtlphy->current_channel);

	do {
		if (!rtlphy->sw_chnl_inprogress)
			break;
		if (!FUNC4(hw,
						      rtlphy->current_channel,
		    &rtlphy->sw_chnl_stage, &rtlphy->sw_chnl_step, &delay)) {
			if (delay > 0)
				FUNC6(delay);
			else
				continue;
		} else {
			rtlphy->sw_chnl_inprogress = false;
		}
		break;
	} while (true);
	FUNC2(rtlpriv, COMP_SCAN, DBG_TRACE, "<==\n");
	rtlphy->sw_chnl_inprogress = false;
	return 1;
}