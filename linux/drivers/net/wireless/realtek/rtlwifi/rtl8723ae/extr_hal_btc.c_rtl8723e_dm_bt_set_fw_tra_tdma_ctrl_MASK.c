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
struct rtl_hal {int /*<<< orphan*/  version; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  COMP_BT_COEXIST ; 
 int /*<<< orphan*/  DBG_TRACE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ TDMA_1ANT ; 
 scalar_t__ TDMA_2ANT ; 
 scalar_t__ TDMA_NAV_OFF ; 
 scalar_t__ TDMA_NAV_ON ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*,int,int,scalar_t__*) ; 
 struct rtl_hal* FUNC4 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC5 (struct ieee80211_hw*) ; 

__attribute__((used)) static void FUNC6(struct ieee80211_hw *hw,
						bool b_enable, u8 ant_num,
						u8 nav_en)
{
	struct rtl_priv *rtlpriv = FUNC5(hw);
	struct rtl_hal *rtlhal = FUNC4(FUNC5(hw));

	u8 h2c_parameter[2] = {0};

	/* Only 8723 B cut should do this */
	if (FUNC1(rtlhal->version)) {
		FUNC2(rtlpriv, COMP_BT_COEXIST, DBG_TRACE,
			 "[BTCoex], not 8723B cut, don't set Traditional TDMA!!\n");
		return;
	}

	if (b_enable) {
		FUNC2(rtlpriv, COMP_BT_COEXIST, DBG_TRACE,
			 "[BTCoex], turn TTDMA mode ON!!\n");
		h2c_parameter[0] |= FUNC0(0);	/* function enable */
		if (TDMA_1ANT == ant_num) {
			FUNC2(rtlpriv, COMP_BT_COEXIST, DBG_TRACE,
				 "[BTCoex], TTDMA_1ANT\n");
			h2c_parameter[0] |= FUNC0(1);
		} else if (TDMA_2ANT == ant_num) {
			FUNC2(rtlpriv, COMP_BT_COEXIST, DBG_TRACE,
			"[BTCoex], TTDMA_2ANT\n");
		} else {
			FUNC2(rtlpriv, COMP_BT_COEXIST, DBG_TRACE,
			"[BTCoex], Unknown Ant\n");
		}

		if (TDMA_NAV_OFF == nav_en) {
			FUNC2(rtlpriv, COMP_BT_COEXIST, DBG_TRACE,
			"[BTCoex], TTDMA_NAV_OFF\n");
		} else if (TDMA_NAV_ON == nav_en) {
			FUNC2(rtlpriv, COMP_BT_COEXIST, DBG_TRACE,
			"[BTCoex], TTDMA_NAV_ON\n");
			h2c_parameter[1] |= FUNC0(0);
		}

		rtlpriv->btcoexist.fw_coexist_all_off = false;
	} else {
		FUNC2(rtlpriv, COMP_BT_COEXIST, DBG_TRACE,
			"[BTCoex], turn TTDMA mode OFF!!\n");
	}

	FUNC2(rtlpriv, COMP_BT_COEXIST, DBG_TRACE,
		"[BTCoex], FW Traditional TDMA, write 0x33=0x%x\n",
		h2c_parameter[0] << 8 | h2c_parameter[1]);

	FUNC3(hw, 0x33, 2, h2c_parameter);
}