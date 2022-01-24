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
typedef  int /*<<< orphan*/  u32 ;
struct rtl_priv {int dummy; } ;
struct rtl_efuse {scalar_t__ antenna_div_type; } ;
struct fast_ant_training {scalar_t__ rx_idle_ant; } ;
struct rtl_dm {struct fast_ant_training fat_table; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUX_ANT_CGCS_RX ; 
 int /*<<< orphan*/  AUX_ANT_CG_TRX ; 
 int FUNC0 (int) ; 
 scalar_t__ CGCS_RX_HW_ANTDIV ; 
 scalar_t__ CG_TRX_HW_ANTDIV ; 
 int /*<<< orphan*/  COMP_INIT ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 int /*<<< orphan*/  DM_REG_ANTSEL_CTRL_11N ; 
 int /*<<< orphan*/  DM_REG_RESP_TX_11N ; 
 int /*<<< orphan*/  DM_REG_RX_ANT_CTRL_11N ; 
 scalar_t__ MAIN_ANT ; 
 int /*<<< orphan*/  MAIN_ANT_CGCS_RX ; 
 int /*<<< orphan*/  MAIN_ANT_CG_TRX ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 struct rtl_dm* FUNC2 (struct rtl_priv*) ; 
 struct rtl_efuse* FUNC3 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC4 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_hw*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct ieee80211_hw *hw,
					 u8 ant)
{
	struct rtl_priv *rtlpriv = FUNC4(hw);
	struct rtl_efuse *rtlefuse = FUNC3(FUNC4(hw));
	struct rtl_dm *rtldm = FUNC2(FUNC4(hw));
	struct fast_ant_training *pfat_table = &rtldm->fat_table;
	u32 default_ant, optional_ant;

	if (pfat_table->rx_idle_ant != ant) {
		FUNC1(rtlpriv, COMP_INIT, DBG_LOUD,
			 "need to update rx idle ant\n");
		if (ant == MAIN_ANT) {
			default_ant =
			  (pfat_table->rx_idle_ant == CG_TRX_HW_ANTDIV) ?
			  MAIN_ANT_CG_TRX : MAIN_ANT_CGCS_RX;
			optional_ant =
			  (pfat_table->rx_idle_ant == CG_TRX_HW_ANTDIV) ?
			  AUX_ANT_CG_TRX : AUX_ANT_CGCS_RX;
		} else {
			default_ant =
			   (pfat_table->rx_idle_ant == CG_TRX_HW_ANTDIV) ?
			   AUX_ANT_CG_TRX : AUX_ANT_CGCS_RX;
			optional_ant =
			   (pfat_table->rx_idle_ant == CG_TRX_HW_ANTDIV) ?
			   MAIN_ANT_CG_TRX : MAIN_ANT_CGCS_RX;
		}

		if (rtlefuse->antenna_div_type == CG_TRX_HW_ANTDIV) {
			FUNC5(hw, DM_REG_RX_ANT_CTRL_11N,
				      FUNC0(5) | FUNC0(4) | FUNC0(3), default_ant);
			FUNC5(hw, DM_REG_RX_ANT_CTRL_11N,
				      FUNC0(8) | FUNC0(7) | FUNC0(6), optional_ant);
			FUNC5(hw, DM_REG_ANTSEL_CTRL_11N,
				      FUNC0(14) | FUNC0(13) | FUNC0(12),
				      default_ant);
			FUNC5(hw, DM_REG_RESP_TX_11N,
				      FUNC0(6) | FUNC0(7), default_ant);
		} else if (rtlefuse->antenna_div_type == CGCS_RX_HW_ANTDIV) {
			FUNC5(hw, DM_REG_RX_ANT_CTRL_11N,
				      FUNC0(5) | FUNC0(4) | FUNC0(3), default_ant);
			FUNC5(hw, DM_REG_RX_ANT_CTRL_11N,
				      FUNC0(8) | FUNC0(7) | FUNC0(6), optional_ant);
		}
	}
	pfat_table->rx_idle_ant = ant;
	FUNC1(rtlpriv, COMP_INIT, DBG_LOUD, "RxIdleAnt %s\n",
		 (ant == MAIN_ANT) ? ("MAIN_ANT") : ("AUX_ANT"));
}