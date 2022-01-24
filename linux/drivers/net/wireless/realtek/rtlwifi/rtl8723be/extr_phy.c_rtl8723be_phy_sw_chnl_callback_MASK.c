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
typedef  scalar_t__ u32 ;
struct rtl_phy {int sw_chnl_inprogress; int /*<<< orphan*/  sw_chnl_step; int /*<<< orphan*/  sw_chnl_stage; int /*<<< orphan*/  current_channel; } ;
struct rtl_priv {struct rtl_phy phy; } ;
struct rtl_hal {int dummy; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_SCAN ; 
 int /*<<< orphan*/  DBG_TRACE ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC2 (struct rtl_hal*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 struct rtl_hal* FUNC4 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC5 (struct ieee80211_hw*) ; 

void FUNC6(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC5(hw);
	struct rtl_hal *rtlhal = FUNC4(FUNC5(hw));
	struct rtl_phy *rtlphy = &rtlpriv->phy;
	u32 delay = 0;

	FUNC0(rtlpriv, COMP_SCAN, DBG_TRACE,
		 "switch to channel%d\n", rtlphy->current_channel);
	if (FUNC2(rtlhal))
		return;
	do {
		if (!rtlphy->sw_chnl_inprogress)
			break;
		if (!FUNC1(hw,
							 rtlphy->current_channel,
							 &rtlphy->sw_chnl_stage,
							 &rtlphy->sw_chnl_step,
							 &delay)) {
			if (delay > 0)
				FUNC3(delay);
			else
				continue;
		} else {
			rtlphy->sw_chnl_inprogress = false;
		}
		break;
	} while (true);
	FUNC0(rtlpriv, COMP_SCAN, DBG_TRACE, "\n");
}