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
struct rtl_priv {int dummy; } ;
struct rtl_mac {scalar_t__ link_state; } ;
struct rtl_efuse {scalar_t__ antenna_div_type; } ;
struct fast_ant_training {int becomelinked; } ;
struct rtl_dm {struct fast_ant_training fat_table; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ CGCS_RX_HW_ANTDIV ; 
 scalar_t__ CG_TRX_HW_ANTDIV ; 
 scalar_t__ CG_TRX_SMART_ANTDIV ; 
 int /*<<< orphan*/  COMP_DIG ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 int /*<<< orphan*/  DM_REG_CCK_ANTDIV_PARA1_11N ; 
 int /*<<< orphan*/  DM_REG_IGI_A_11N ; 
 int /*<<< orphan*/  DM_REG_TX_ANT_CTRL_11N ; 
 scalar_t__ MAC80211_LINKED ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*) ; 
 struct rtl_dm* FUNC4 (struct rtl_priv*) ; 
 struct rtl_efuse* FUNC5 (struct rtl_priv*) ; 
 struct rtl_mac* FUNC6 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC7 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee80211_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC9(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC7(hw);
	struct rtl_mac *mac = FUNC6(FUNC7(hw));
	struct rtl_efuse *rtlefuse = FUNC5(FUNC7(hw));
	struct rtl_dm *rtldm = FUNC4(FUNC7(hw));
	struct fast_ant_training *pfat_table = &rtldm->fat_table;

	if (mac->link_state < MAC80211_LINKED) {
		FUNC1(rtlpriv, COMP_DIG, DBG_LOUD, "No Link\n");
		if (pfat_table->becomelinked) {
			FUNC1(rtlpriv, COMP_DIG, DBG_LOUD,
				 "need to turn off HW AntDiv\n");
			FUNC8(hw, DM_REG_IGI_A_11N, FUNC0(7), 0);
			FUNC8(hw, DM_REG_CCK_ANTDIV_PARA1_11N,
				      FUNC0(15), 0);
			if (rtlefuse->antenna_div_type == CG_TRX_HW_ANTDIV)
				FUNC8(hw, DM_REG_TX_ANT_CTRL_11N,
					      FUNC0(21), 0);
			pfat_table->becomelinked =
				(mac->link_state == MAC80211_LINKED) ?
				true : false;
		}
		return;
	} else {
		if (!pfat_table->becomelinked) {
			FUNC1(rtlpriv, COMP_DIG, DBG_LOUD,
				 "Need to turn on HW AntDiv\n");
			FUNC8(hw, DM_REG_IGI_A_11N, FUNC0(7), 1);
			FUNC8(hw, DM_REG_CCK_ANTDIV_PARA1_11N,
				      FUNC0(15), 1);
			if (rtlefuse->antenna_div_type == CG_TRX_HW_ANTDIV)
				FUNC8(hw, DM_REG_TX_ANT_CTRL_11N,
					      FUNC0(21), 1);
			pfat_table->becomelinked =
				(mac->link_state >= MAC80211_LINKED) ?
				true : false;
		}
	}

	if ((rtlefuse->antenna_div_type == CG_TRX_HW_ANTDIV) ||
	    (rtlefuse->antenna_div_type == CGCS_RX_HW_ANTDIV))
		FUNC3(hw);
	else if (rtlefuse->antenna_div_type == CG_TRX_SMART_ANTDIV)
		FUNC2(hw);
}