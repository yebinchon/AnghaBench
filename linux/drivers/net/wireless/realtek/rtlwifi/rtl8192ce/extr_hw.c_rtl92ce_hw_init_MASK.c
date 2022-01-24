#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct rtl_ps_ctl {scalar_t__ rfpwr_state; } ;
struct rtl_phy {int iqk_initialized; void** rfreg_chnlval; int /*<<< orphan*/  rf_mode; } ;
struct rtl_priv {TYPE_3__* intf_ops; TYPE_2__* cfg; struct rtl_phy phy; } ;
struct rtl_pci {int being_init_adapter; int receive_config; } ;
struct rtl_mac {int /*<<< orphan*/  mac_addr; } ;
struct rtl_hal {int fw_ready; int /*<<< orphan*/  version; scalar_t__ last_hmeboxnum; } ;
struct ieee80211_hw {int dummy; } ;
typedef  enum radio_path { ____Placeholder_radio_path } radio_path ;
struct TYPE_6__ {int /*<<< orphan*/  (* enable_aspm ) (struct ieee80211_hw*) ;int /*<<< orphan*/  (* disable_aspm ) (struct ieee80211_hw*) ;} ;
struct TYPE_5__ {TYPE_1__* ops; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* set_hw_reg ) (struct ieee80211_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int BCCKEN ; 
 int FUNC0 (int) ; 
 int BOFDMEN ; 
 int /*<<< orphan*/  COMP_ERR ; 
 int /*<<< orphan*/  COMP_INIT ; 
 int /*<<< orphan*/  DBG_TRACE ; 
 int /*<<< orphan*/  DBG_WARNING ; 
 scalar_t__ ERFON ; 
 int /*<<< orphan*/  HW_VAR_ETHER_ADDR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int MASKDWORD ; 
 int RCR_ACRC32 ; 
 int RCR_AICV ; 
 int /*<<< orphan*/  REG_RCR ; 
 int /*<<< orphan*/  RF90_PATH_A ; 
 int /*<<< orphan*/  RF90_PATH_B ; 
 int /*<<< orphan*/  RFPGA0_ANALOGPARAMETER2 ; 
 int /*<<< orphan*/  RFPGA0_RFMOD ; 
 int /*<<< orphan*/  RFREG_OFFSET_MASK ; 
 int /*<<< orphan*/  RF_CHNLBW ; 
 int RF_IPA ; 
 int /*<<< orphan*/  RF_OP_BY_SW_3WIRE ; 
 int RF_RCK1 ; 
 int RF_RCK2 ; 
 int RF_RX_G1 ; 
 int RF_RX_G2 ; 
 int RF_SYN_G2 ; 
 int /*<<< orphan*/  FUNC4 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_hw*) ; 
 int FUNC7 (struct ieee80211_hw*) ; 
 int FUNC8 (struct ieee80211_hw*,int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC14 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC15 (struct ieee80211_hw*) ; 
 int FUNC16 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC17 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC18 (struct ieee80211_hw*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC20 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC21 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC22 (struct ieee80211_hw*,int) ; 
 int /*<<< orphan*/  FUNC23 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC24 (struct ieee80211_hw*) ; 
 void* FUNC25 (struct ieee80211_hw*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rtl_hal* FUNC26 (struct rtl_priv*) ; 
 struct rtl_mac* FUNC27 (struct rtl_priv*) ; 
 struct rtl_pci* FUNC28 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (struct ieee80211_hw*) ; 
 struct rtl_priv* FUNC30 (struct ieee80211_hw*) ; 
 struct rtl_ps_ctl* FUNC31 (struct rtl_priv*) ; 
 int FUNC32 (struct rtl_priv*,int) ; 
 int FUNC33 (struct rtl_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (struct ieee80211_hw*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC35 (struct ieee80211_hw*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC36 (struct rtl_priv*,int,int) ; 
 int /*<<< orphan*/  FUNC37 (struct rtl_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC38 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC39 (struct ieee80211_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC40 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC41 (int) ; 

int FUNC42(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC30(hw);
	struct rtl_hal *rtlhal = FUNC26(FUNC30(hw));
	struct rtl_mac *mac = FUNC27(FUNC30(hw));
	struct rtl_phy *rtlphy = &(rtlpriv->phy);
	struct rtl_pci *rtlpci = FUNC28(FUNC29(hw));
	struct rtl_ps_ctl *ppsc = FUNC31(FUNC30(hw));
	bool rtstatus = true;
	bool is92c;
	int err;
	u8 tmp_u1b;
	unsigned long flags;

	rtlpci->being_init_adapter = true;

	/* Since this function can take a very long time (up to 350 ms)
	 * and can be called with irqs disabled, reenable the irqs
	 * to let the other devices continue being serviced.
	 *
	 * It is safe doing so since our own interrupts will only be enabled
	 * in a subsequent step.
	 */
	FUNC11(flags);
	FUNC9();

	rtlhal->fw_ready = false;
	rtlpriv->intf_ops->disable_aspm(hw);
	rtstatus = FUNC7(hw);
	if (!rtstatus) {
		FUNC12("Init MAC failed\n");
		err = 1;
		goto exit;
	}

	err = FUNC16(hw);
	if (err) {
		FUNC4(rtlpriv, COMP_ERR, DBG_WARNING,
			 "Failed to download FW. Init HW without FW now..\n");
		err = 1;
		goto exit;
	}

	rtlhal->fw_ready = true;
	rtlhal->last_hmeboxnum = 0;
	FUNC20(hw);
	/* because last function modify RCR, so we update
	 * rcr var here, or TP will unstable for receive_config
	 * is wrong, RX RCR_ACRC32 will cause TP unstabel & Rx
	 * RCR_APP_ICV will cause mac80211 unassoc for cisco 1252*/
	rtlpci->receive_config = FUNC33(rtlpriv, REG_RCR);
	rtlpci->receive_config &= ~(RCR_ACRC32 | RCR_AICV);
	FUNC37(rtlpriv, REG_RCR, rtlpci->receive_config);
	FUNC17(hw);
	rtlphy->rf_mode = RF_OP_BY_SW_3WIRE;
	FUNC21(hw);
	if (FUNC3(rtlhal->version) &&
	    !FUNC2(rtlhal->version)) {
		FUNC35(hw, RF90_PATH_A, RF_RX_G1, MASKDWORD, 0x30255);
		FUNC35(hw, RF90_PATH_A, RF_RX_G2, MASKDWORD, 0x50a00);
	} else if (FUNC1(rtlhal->version)) {
		FUNC35(hw, RF90_PATH_A, 0x0C, MASKDWORD, 0x894AE);
		FUNC35(hw, RF90_PATH_A, 0x0A, MASKDWORD, 0x1AF31);
		FUNC35(hw, RF90_PATH_A, RF_IPA, MASKDWORD, 0x8F425);
		FUNC35(hw, RF90_PATH_A, RF_SYN_G2, MASKDWORD, 0x4F200);
		FUNC35(hw, RF90_PATH_A, RF_RCK1, MASKDWORD, 0x44053);
		FUNC35(hw, RF90_PATH_A, RF_RCK2, MASKDWORD, 0x80201);
	}
	rtlphy->rfreg_chnlval[0] = FUNC25(hw, (enum radio_path)0,
						 RF_CHNLBW, RFREG_OFFSET_MASK);
	rtlphy->rfreg_chnlval[1] = FUNC25(hw, (enum radio_path)1,
						 RF_CHNLBW, RFREG_OFFSET_MASK);
	FUNC34(hw, RFPGA0_RFMOD, BCCKEN, 0x1);
	FUNC34(hw, RFPGA0_RFMOD, BOFDMEN, 0x1);
	FUNC34(hw, RFPGA0_ANALOGPARAMETER2, FUNC0(10), 1);
	FUNC6(hw);
	FUNC24(hw);
	FUNC23(hw);

	ppsc->rfpwr_state = ERFON;

	rtlpriv->cfg->ops->set_hw_reg(hw, HW_VAR_ETHER_ADDR, mac->mac_addr);
	FUNC5(hw);
	rtlpriv->intf_ops->enable_aspm(hw);

	FUNC13(hw);

	if (ppsc->rfpwr_state == ERFON) {
		FUNC22(hw, 1);
		if (rtlphy->iqk_initialized) {
			FUNC18(hw, true);
		} else {
			FUNC18(hw, false);
			rtlphy->iqk_initialized = true;
		}

		FUNC14(hw);
		FUNC19(hw);
	}

	is92c = FUNC2(rtlhal->version);
	tmp_u1b = FUNC8(hw, 0x1FA);
	if (!(tmp_u1b & FUNC0(0))) {
		FUNC35(hw, RF90_PATH_A, 0x15, 0x0F, 0x05);
		FUNC4(rtlpriv, COMP_INIT, DBG_TRACE, "PA BIAS path A\n");
	}

	if (!(tmp_u1b & FUNC0(1)) && is92c) {
		FUNC35(hw, RF90_PATH_B, 0x15, 0x0F, 0x05);
		FUNC4(rtlpriv, COMP_INIT, DBG_TRACE, "PA BIAS path B\n");
	}

	if (!(tmp_u1b & FUNC0(4))) {
		tmp_u1b = FUNC32(rtlpriv, 0x16);
		tmp_u1b &= 0x0F;
		FUNC36(rtlpriv, 0x16, tmp_u1b | 0x80);
		FUNC41(10);
		FUNC36(rtlpriv, 0x16, tmp_u1b | 0x90);
		FUNC4(rtlpriv, COMP_INIT, DBG_TRACE, "under 1.5V\n");
	}
	FUNC15(hw);
exit:
	FUNC10(flags);
	rtlpci->being_init_adapter = false;
	return err;
}