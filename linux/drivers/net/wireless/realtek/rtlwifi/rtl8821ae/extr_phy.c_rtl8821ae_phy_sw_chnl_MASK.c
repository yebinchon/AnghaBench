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
typedef  int u8 ;
typedef  scalar_t__ u32 ;
struct rtl_phy {int current_channel; int sw_chnl_inprogress; scalar_t__ lck_inprogress; scalar_t__ set_bwmode_inprogress; } ;
struct rtl_priv {struct rtl_phy phy; } ;
struct rtl_hal {scalar_t__ current_bandtype; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 scalar_t__ BAND_ON_2_4G ; 
 scalar_t__ BAND_ON_5G ; 
 int /*<<< orphan*/  COMP_CHAN ; 
 int /*<<< orphan*/  COMP_SCAN ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 int /*<<< orphan*/  DBG_TRACE ; 
 scalar_t__ FUNC0 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC2 (struct rtl_hal*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_hw*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_hw*,scalar_t__) ; 
 struct rtl_hal* FUNC8 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC9 (struct ieee80211_hw*) ; 

u8 FUNC10(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC9(hw);
	struct rtl_phy *rtlphy = &rtlpriv->phy;
	struct rtl_hal *rtlhal = FUNC8(FUNC9(hw));
	u32 timeout = 1000, timecount = 0;
	u8 channel = rtlphy->current_channel;

	if (rtlphy->sw_chnl_inprogress)
		return 0;
	if (rtlphy->set_bwmode_inprogress)
		return 0;

	if ((FUNC2(rtlhal)) || (FUNC0(hw))) {
		FUNC1(rtlpriv, COMP_CHAN, DBG_LOUD,
			 "sw_chnl_inprogress false driver sleep or unload\n");
		return 0;
	}
	while (rtlphy->lck_inprogress && timecount < timeout) {
		FUNC3(50);
		timecount += 50;
	}

	if (rtlphy->current_channel > 14 && rtlhal->current_bandtype != BAND_ON_5G)
		FUNC7(hw, BAND_ON_5G);
	else if (rtlphy->current_channel <= 14 && rtlhal->current_bandtype != BAND_ON_2_4G)
		FUNC7(hw, BAND_ON_2_4G);

	rtlphy->sw_chnl_inprogress = true;
	if (channel == 0)
		channel = 1;

	FUNC1(rtlpriv, COMP_SCAN, DBG_TRACE,
		 "switch to channel%d, band type is %d\n",
		 rtlphy->current_channel, rtlhal->current_bandtype);

	FUNC6(hw);

	FUNC4(hw);
	FUNC5(hw, rtlphy->current_channel);

	FUNC1(rtlpriv, COMP_SCAN, DBG_TRACE, "\n");
	rtlphy->sw_chnl_inprogress = false;
	return 1;
}