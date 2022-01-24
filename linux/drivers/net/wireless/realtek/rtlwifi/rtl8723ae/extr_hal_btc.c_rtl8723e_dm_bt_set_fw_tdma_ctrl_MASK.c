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
typedef  scalar_t__ u8 ;
struct TYPE_2__ {int fw_coexist_all_off; } ;
struct rtl_priv {TYPE_1__ btcoexist; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  COMP_BT_COEXIST ; 
 int /*<<< orphan*/  DBG_TRACE ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ TDMA_1ANT ; 
 scalar_t__ TDMA_2ANT ; 
 scalar_t__ TDMA_DAC_SWING_OFF ; 
 scalar_t__ TDMA_DAC_SWING_ON ; 
 scalar_t__ TDMA_NAV_OFF ; 
 scalar_t__ TDMA_NAV_ON ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*,int,int,scalar_t__*) ; 
 struct rtl_priv* FUNC3 (struct ieee80211_hw*) ; 

__attribute__((used)) static void FUNC4(struct ieee80211_hw *hw,
					    bool b_enable, u8 ant_num,
					    u8 nav_en, u8 dac_swing_en)
{
	struct rtl_priv *rtlpriv = FUNC3(hw);
	u8 h2c_parameter[1] = {0};
	u8 h2c_parameter1[1] = {0};

	h2c_parameter[0] = 0;
	h2c_parameter1[0] = 0;

	if (b_enable) {
		FUNC1(rtlpriv, COMP_BT_COEXIST, DBG_TRACE,
			 "[BTCoex], set BT PTA update manager to trigger update!!\n");
		h2c_parameter1[0] |= FUNC0(0);

		FUNC1(rtlpriv, COMP_BT_COEXIST, DBG_TRACE,
			"[BTCoex], turn TDMA mode ON!!\n");
		h2c_parameter[0] |= FUNC0(0);		/* function enable */
		if (TDMA_1ANT == ant_num) {
			FUNC1(rtlpriv, COMP_BT_COEXIST, DBG_TRACE,
			"[BTCoex], TDMA_1ANT\n");
			h2c_parameter[0] |= FUNC0(1);
		} else if (TDMA_2ANT == ant_num) {
			FUNC1(rtlpriv, COMP_BT_COEXIST, DBG_TRACE,
			"[BTCoex], TDMA_2ANT\n");
		} else {
			FUNC1(rtlpriv, COMP_BT_COEXIST, DBG_TRACE,
			"[BTCoex], Unknown Ant\n");
		}

		if (TDMA_NAV_OFF == nav_en) {
			FUNC1(rtlpriv, COMP_BT_COEXIST, DBG_TRACE,
			"[BTCoex], TDMA_NAV_OFF\n");
		} else if (TDMA_NAV_ON == nav_en) {
			FUNC1(rtlpriv, COMP_BT_COEXIST, DBG_TRACE,
			"[BTCoex], TDMA_NAV_ON\n");
			h2c_parameter[0] |= FUNC0(2);
		}

		if (TDMA_DAC_SWING_OFF == dac_swing_en) {
			FUNC1(rtlpriv, COMP_BT_COEXIST, DBG_TRACE,
				"[BTCoex], TDMA_DAC_SWING_OFF\n");
		} else if (TDMA_DAC_SWING_ON == dac_swing_en) {
			FUNC1(rtlpriv, COMP_BT_COEXIST, DBG_TRACE,
				"[BTCoex], TDMA_DAC_SWING_ON\n");
			h2c_parameter[0] |= FUNC0(4);
		}
		rtlpriv->btcoexist.fw_coexist_all_off = false;
	} else {
		FUNC1(rtlpriv, COMP_BT_COEXIST, DBG_TRACE,
			 "[BTCoex], set BT PTA update manager to no update!!\n");
		FUNC1(rtlpriv, COMP_BT_COEXIST, DBG_TRACE,
			 "[BTCoex], turn TDMA mode OFF!!\n");
	}

	FUNC1(rtlpriv, COMP_BT_COEXIST, DBG_TRACE,
		 "[BTCoex], FW2AntTDMA, write 0x26=0x%x\n",
		 h2c_parameter1[0]);
	FUNC2(hw, 0x26, 1, h2c_parameter1);

	FUNC1(rtlpriv, COMP_BT_COEXIST, DBG_TRACE,
		"[BTCoex], FW2AntTDMA, write 0x14=0x%x\n",
		h2c_parameter[0]);
	FUNC2(hw, 0x14, 1, h2c_parameter);
}