#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct rtl_ps_ctl {scalar_t__ rfpwr_state; } ;
struct rtl_phy {int iqk_initialized; void** rfreg_chnlval; int /*<<< orphan*/  rf_mode; } ;
struct rtl_priv {TYPE_2__* cfg; struct rtl_phy phy; } ;
struct rtl_mac {int /*<<< orphan*/  mac_addr; } ;
struct rtl_hal {int fw_ready; int /*<<< orphan*/  version; scalar_t__ last_hmeboxnum; int /*<<< orphan*/  hw_type; } ;
struct ieee80211_hw {int dummy; } ;
typedef  enum radio_path { ____Placeholder_radio_path } radio_path ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* set_hw_reg ) (struct ieee80211_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_ERR ; 
 int /*<<< orphan*/  DBG_WARNING ; 
 scalar_t__ ERFON ; 
 int /*<<< orphan*/  HARDWARE_TYPE_RTL8192CU ; 
 int /*<<< orphan*/  HW_VAR_ETHER_ADDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MASKDWORD ; 
 int /*<<< orphan*/  RF90_PATH_A ; 
 int /*<<< orphan*/  RFREG_OFFSET_MASK ; 
 int /*<<< orphan*/  RF_CHNLBW ; 
 int /*<<< orphan*/  RF_OP_BY_SW_3WIRE ; 
 int /*<<< orphan*/  RF_RX_G1 ; 
 int /*<<< orphan*/  RF_RX_G2 ; 
 int /*<<< orphan*/  FUNC2 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*) ; 
 int FUNC5 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC12 (struct ieee80211_hw*) ; 
 int FUNC13 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC14 (struct ieee80211_hw*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC16 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC17 (struct ieee80211_hw*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC19 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC20 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC21 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC22 (struct ieee80211_hw*) ; 
 void* FUNC23 (struct ieee80211_hw*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rtl_hal* FUNC24 (struct rtl_priv*) ; 
 struct rtl_mac* FUNC25 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC26 (struct ieee80211_hw*) ; 
 struct rtl_ps_ctl* FUNC27 (struct rtl_priv*) ; 
 int /*<<< orphan*/  FUNC28 (struct ieee80211_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC29 (struct ieee80211_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC30(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC26(hw);
	struct rtl_hal *rtlhal = FUNC24(FUNC26(hw));
	struct rtl_mac *mac = FUNC25(FUNC26(hw));
	struct rtl_phy *rtlphy = &(rtlpriv->phy);
	struct rtl_ps_ctl *ppsc = FUNC27(FUNC26(hw));
	int err = 0;
	unsigned long flags;

	/* As this function can take a very long time (up to 350 ms)
	 * and can be called with irqs disabled, reenable the irqs
	 * to let the other devices continue being serviced.
	 *
	 * It is safe doing so since our own interrupts will only be enabled
	 * in a subsequent step.
	 */
	FUNC9(flags);
	FUNC7();

	rtlhal->fw_ready = false;
	rtlhal->hw_type = HARDWARE_TYPE_RTL8192CU;
	err = FUNC5(hw);
	if (err) {
		FUNC10("init mac failed!\n");
		goto exit;
	}
	err = FUNC13(hw);
	if (err) {
		FUNC2(rtlpriv, COMP_ERR, DBG_WARNING,
			 "Failed to download FW. Init HW without FW now..\n");
		err = 1;
		goto exit;
	}

	rtlhal->fw_ready = true;
	rtlhal->last_hmeboxnum = 0; /* h2c */
	FUNC6(hw);
	FUNC21(hw);
	FUNC20(hw);
	rtlphy->rf_mode = RF_OP_BY_SW_3WIRE;
	FUNC16(hw);
	if (FUNC1(rtlhal->version) &&
	    !FUNC0(rtlhal->version)) {
		FUNC28(hw, RF90_PATH_A, RF_RX_G1, MASKDWORD, 0x30255);
		FUNC28(hw, RF90_PATH_A, RF_RX_G2, MASKDWORD, 0x50a00);
	}
	rtlphy->rfreg_chnlval[0] = FUNC23(hw, (enum radio_path)0,
						 RF_CHNLBW, RFREG_OFFSET_MASK);
	rtlphy->rfreg_chnlval[1] = FUNC23(hw, (enum radio_path)1,
						 RF_CHNLBW, RFREG_OFFSET_MASK);
	FUNC18(hw);
	FUNC22(hw);
	FUNC19(hw);
	ppsc->rfpwr_state = ERFON;
	rtlpriv->cfg->ops->set_hw_reg(hw, HW_VAR_ETHER_ADDR, mac->mac_addr);
	if (ppsc->rfpwr_state == ERFON) {
		FUNC17(hw, 1);
		if (rtlphy->iqk_initialized) {
			FUNC14(hw, true);
		} else {
			FUNC14(hw, false);
			rtlphy->iqk_initialized = true;
		}
		FUNC11(hw);
		FUNC15(hw);
	}
	FUNC4(hw);
	FUNC3(hw);
	FUNC12(hw);
exit:
	FUNC8(flags);
	return err;
}