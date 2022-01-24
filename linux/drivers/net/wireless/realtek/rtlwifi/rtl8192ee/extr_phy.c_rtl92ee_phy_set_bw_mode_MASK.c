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
typedef  int /*<<< orphan*/  u8 ;
struct rtl_phy {int set_bwmode_inprogress; int /*<<< orphan*/  current_chan_bw; } ;
struct rtl_priv {struct rtl_phy phy; } ;
struct rtl_hal {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
typedef  enum nl80211_channel_type { ____Placeholder_nl80211_channel_type } nl80211_channel_type ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_ERR ; 
 int /*<<< orphan*/  DBG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl_hal*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*) ; 
 struct rtl_hal* FUNC4 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC5 (struct ieee80211_hw*) ; 

void FUNC6(struct ieee80211_hw *hw,
			     enum nl80211_channel_type ch_type)
{
	struct rtl_priv *rtlpriv = FUNC5(hw);
	struct rtl_phy *rtlphy = &rtlpriv->phy;
	struct rtl_hal *rtlhal = FUNC4(FUNC5(hw));
	u8 tmp_bw = rtlphy->current_chan_bw;

	if (rtlphy->set_bwmode_inprogress)
		return;
	rtlphy->set_bwmode_inprogress = true;
	if ((!FUNC2(rtlhal)) && !(FUNC0(hw))) {
		FUNC3(hw);
	} else {
		FUNC1(rtlpriv, COMP_ERR, DBG_WARNING,
			 "false driver sleep or unload\n");
		rtlphy->set_bwmode_inprogress = false;
		rtlphy->current_chan_bw = tmp_bw;
	}
}