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
typedef  scalar_t__ u8 ;
struct rtl_priv {int dummy; } ;
struct rtl_hal {scalar_t__ hw_type; } ;
struct rtl_dm {scalar_t__ tx_rate; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_POWER_TRACKING ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 scalar_t__ HARDWARE_TYPE_RTL8821AE ; 
 scalar_t__ MAX_PATH_NUM_8812A ; 
 int /*<<< orphan*/  MIX_MODE ; 
 scalar_t__ RF90_PATH_A ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 struct rtl_dm* FUNC3 (struct rtl_priv*) ; 
 struct rtl_hal* FUNC4 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC5 (struct ieee80211_hw*) ; 

void FUNC6(struct ieee80211_hw *hw, u8 rate)
{
	struct rtl_priv *rtlpriv = FUNC5(hw);
	struct rtl_dm	*rtldm = FUNC3(FUNC5(hw));
	struct rtl_hal *rtlhal = FUNC4(FUNC5(hw));
	u8 p = 0;

	FUNC0(rtlpriv, COMP_POWER_TRACKING, DBG_LOUD,
		 "Get C2H Command! Rate=0x%x\n", rate);

	rtldm->tx_rate = rate;

	if (rtlhal->hw_type == HARDWARE_TYPE_RTL8821AE) {
		FUNC2(hw, MIX_MODE, RF90_PATH_A, 0);
	} else {
		for (p = RF90_PATH_A; p < MAX_PATH_NUM_8812A; p++)
			FUNC1(hw, MIX_MODE, p, 0);
	}
}