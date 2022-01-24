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
struct rtl_phy {int sw_chnl_inprogress; int current_channel; scalar_t__ sw_chnl_step; scalar_t__ sw_chnl_stage; scalar_t__ set_bwmode_inprogress; } ;
struct rtl_priv {struct rtl_phy phy; } ;
struct rtl_hal {int dummy; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_CHAN ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl_hal*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*) ; 
 struct rtl_hal* FUNC5 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC6 (struct ieee80211_hw*) ; 

u8 FUNC7(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC6(hw);
	struct rtl_phy *rtlphy = &rtlpriv->phy;
	struct rtl_hal *rtlhal = FUNC5(FUNC6(hw));

	if (rtlphy->sw_chnl_inprogress)
		return 0;
	if (rtlphy->set_bwmode_inprogress)
		return 0;
	FUNC2((rtlphy->current_channel > 14),
		  "rtl8188ee: WIRELESS_MODE_G but channel>14");
	rtlphy->sw_chnl_inprogress = true;
	rtlphy->sw_chnl_stage = 0;
	rtlphy->sw_chnl_step = 0;
	if (!(FUNC3(rtlhal)) && !(FUNC0(hw))) {
		FUNC4(hw);
		FUNC1(rtlpriv, COMP_CHAN, DBG_LOUD,
			 "sw_chnl_inprogress false schedule workitem current channel %d\n",
			 rtlphy->current_channel);
		rtlphy->sw_chnl_inprogress = false;
	} else {
		FUNC1(rtlpriv, COMP_CHAN, DBG_LOUD,
			 "sw_chnl_inprogress false driver sleep or unload\n");
		rtlphy->sw_chnl_inprogress = false;
	}
	return 1;
}