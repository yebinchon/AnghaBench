#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct rtl_ps_ctl {int fw_current_inpsmode; scalar_t__ rfpwr_state; } ;
struct TYPE_12__ {int being_init_adapter; } ;
struct TYPE_10__ {scalar_t__ rx_idle_ant; } ;
struct TYPE_11__ {TYPE_4__ fat_table; } ;
struct rtl_phy {int* rfreg_chnlval; int iqk_initialized; int /*<<< orphan*/  rf_mode; } ;
struct rtl_priv {TYPE_6__ rtlhal; TYPE_5__ dm; TYPE_3__* intf_ops; TYPE_2__* cfg; struct rtl_phy phy; } ;
struct rtl_pci {int receive_config; } ;
struct rtl_mac {int /*<<< orphan*/  mac_addr; } ;
struct rtl_hal {int fw_ready; int mac_func_enable; int fw_clk_change_in_progress; int allow_sw_to_change_hwclc; scalar_t__ oem_id; void* fw_ps_state; scalar_t__ last_hmeboxnum; } ;
struct rtl_efuse {scalar_t__ antenna_div_type; } ;
struct ieee80211_hw {int dummy; } ;
typedef  enum radio_path { ____Placeholder_radio_path } radio_path ;
struct TYPE_9__ {int /*<<< orphan*/  (* enable_aspm ) (struct ieee80211_hw*) ;int /*<<< orphan*/  (* disable_aspm ) (struct ieee80211_hw*) ;} ;
struct TYPE_8__ {TYPE_1__* ops; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* set_hw_reg ) (struct ieee80211_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 scalar_t__ AUX_ANT ; 
 int /*<<< orphan*/  BCCKEN ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  BOFDMEN ; 
 scalar_t__ CGCS_RX_HW_ANTDIV ; 
 scalar_t__ CG_TRX_HW_ANTDIV ; 
 int /*<<< orphan*/  COMP_ERR ; 
 int /*<<< orphan*/  COMP_INIT ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 int /*<<< orphan*/  DBG_WARNING ; 
 scalar_t__ ERFON ; 
 void* FW_PS_STATE_ALL_ON_88E ; 
 int /*<<< orphan*/  HW_VAR_ETHER_ADDR ; 
 scalar_t__ MAIN_ANT ; 
 int RCR_ACRC32 ; 
 int RCR_AICV ; 
 int REG_CR ; 
 int REG_NAV_CTRL ; 
 int /*<<< orphan*/  REG_RCR ; 
 int REG_SYS_CLKR ; 
 int /*<<< orphan*/  RF90_PATH_A ; 
 int /*<<< orphan*/  RFPGA0_RFMOD ; 
 int /*<<< orphan*/  RFREG_OFFSET_MASK ; 
 int /*<<< orphan*/  RF_CHNLBW ; 
 int /*<<< orphan*/  RF_OP_BY_SW_3WIRE ; 
 scalar_t__ RT_CID_819X_HP ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*) ; 
 int FUNC4 (struct ieee80211_hw*) ; 
 int FUNC5 (struct ieee80211_hw*,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC11 (struct ieee80211_hw*) ; 
 int FUNC12 (struct ieee80211_hw*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC14 (struct ieee80211_hw*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC16 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC17 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC18 (struct ieee80211_hw*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC20 (struct ieee80211_hw*) ; 
 struct rtl_efuse* FUNC21 (struct rtl_priv*) ; 
 int FUNC22 (struct ieee80211_hw*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rtl_hal* FUNC23 (struct rtl_priv*) ; 
 struct rtl_mac* FUNC24 (struct rtl_priv*) ; 
 struct rtl_pci* FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct ieee80211_hw*) ; 
 struct rtl_priv* FUNC27 (struct ieee80211_hw*) ; 
 struct rtl_ps_ctl* FUNC28 (struct rtl_priv*) ; 
 int FUNC29 (struct rtl_priv*,int) ; 
 int /*<<< orphan*/  FUNC30 (struct ieee80211_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC31 (struct ieee80211_hw*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC32 (struct rtl_priv*,int,int) ; 
 int /*<<< orphan*/  FUNC33 (struct rtl_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC34 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC35 (struct ieee80211_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC36 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC37 (int) ; 

int FUNC38(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC27(hw);
	struct rtl_hal *rtlhal = FUNC23(FUNC27(hw));
	struct rtl_mac *mac = FUNC24(FUNC27(hw));
	struct rtl_phy *rtlphy = &(rtlpriv->phy);
	struct rtl_ps_ctl *ppsc = FUNC28(FUNC27(hw));
	struct rtl_pci *rtlpci = FUNC25(FUNC26(hw));
	struct rtl_efuse *rtlefuse = FUNC21(FUNC27(hw));
	bool rtstatus;
	int err = 0;
	u8 tmp_u1b, u1byte;
	unsigned long flags;

	rtlpriv->rtlhal.being_init_adapter = true;
	/* As this function can take a very long time (up to 350 ms)
	 * and can be called with irqs disabled, reenable the irqs
	 * to let the other devices continue being serviced.
	 *
	 * It is safe doing so since our own interrupts will only be enabled
	 * in a subsequent step.
	 */
	FUNC8(flags);
	FUNC6();
	rtlhal->fw_ready = false;

	rtlpriv->intf_ops->disable_aspm(hw);

	tmp_u1b = FUNC29(rtlpriv, REG_SYS_CLKR+1);
	u1byte = FUNC29(rtlpriv, REG_CR);
	if ((tmp_u1b & FUNC0(3)) && (u1byte != 0 && u1byte != 0xEA)) {
		rtlhal->mac_func_enable = true;
	} else {
		rtlhal->mac_func_enable = false;
		rtlhal->fw_ps_state = FW_PS_STATE_ALL_ON_88E;
	}

	rtstatus = FUNC4(hw);
	if (rtstatus != true) {
		FUNC9("Init MAC failed\n");
		err = 1;
		goto exit;
	}

	err = FUNC12(hw, false);
	if (err) {
		FUNC1(rtlpriv, COMP_ERR, DBG_WARNING,
			 "Failed to download FW. Init HW without FW now..\n");
		err = 1;
		goto exit;
	}
	rtlhal->fw_ready = true;
	/*fw related variable initialize */
	rtlhal->last_hmeboxnum = 0;
	rtlhal->fw_ps_state = FW_PS_STATE_ALL_ON_88E;
	rtlhal->fw_clk_change_in_progress = false;
	rtlhal->allow_sw_to_change_hwclc = false;
	ppsc->fw_current_inpsmode = false;

	FUNC16(hw);
	/* because last function modify RCR, so we update
	 * rcr var here, or TP will unstable for receive_config
	 * is wrong, RX RCR_ACRC32 will cause TP unstabel & Rx
	 * RCR_APP_ICV will cause mac80211 unassoc for cisco 1252
	 */
	rtlpci->receive_config &= ~(RCR_ACRC32 | RCR_AICV);
	FUNC33(rtlpriv, REG_RCR, rtlpci->receive_config);

	FUNC13(hw);
	FUNC30(hw, RFPGA0_RFMOD, BCCKEN, 0x1);
	FUNC30(hw, RFPGA0_RFMOD, BOFDMEN, 0x1);

	rtlphy->rf_mode = RF_OP_BY_SW_3WIRE;
	FUNC17(hw);

	rtlphy->rfreg_chnlval[0] = FUNC22(hw, (enum radio_path)0,
						 RF_CHNLBW, RFREG_OFFSET_MASK);
	rtlphy->rfreg_chnlval[0] = rtlphy->rfreg_chnlval[0] & 0xfff00fff;

	FUNC3(hw);
	FUNC20(hw);
	FUNC19(hw);

	rtlhal->mac_func_enable = true;
	ppsc->rfpwr_state = ERFON;

	rtlpriv->cfg->ops->set_hw_reg(hw, HW_VAR_ETHER_ADDR, mac->mac_addr);
	FUNC2(hw);
	rtlpriv->intf_ops->enable_aspm(hw);

	if (ppsc->rfpwr_state == ERFON) {
		if ((rtlefuse->antenna_div_type == CGCS_RX_HW_ANTDIV) ||
		    ((rtlefuse->antenna_div_type == CG_TRX_HW_ANTDIV) &&
		     (rtlhal->oem_id == RT_CID_819X_HP))) {
			FUNC18(hw, true);
			rtlpriv->dm.fat_table.rx_idle_ant = MAIN_ANT;
		} else {
			FUNC18(hw, false);
			rtlpriv->dm.fat_table.rx_idle_ant = AUX_ANT;
		}
		FUNC1(rtlpriv, COMP_INIT, DBG_LOUD, "rx idle ant %s\n",
			 (rtlpriv->dm.fat_table.rx_idle_ant == MAIN_ANT) ?
			 ("MAIN_ANT") : ("AUX_ANT"));

		if (rtlphy->iqk_initialized) {
			FUNC14(hw, true);
		} else {
			FUNC14(hw, false);
			rtlphy->iqk_initialized = true;
		}

		FUNC10(hw);
		FUNC15(hw);
	}

	tmp_u1b = FUNC5(hw, 0x1FA);
	if (!(tmp_u1b & FUNC0(0))) {
		FUNC31(hw, RF90_PATH_A, 0x15, 0x0F, 0x05);
		FUNC1(rtlpriv, COMP_INIT, DBG_LOUD, "PA BIAS path A\n");
	}

	if (!(tmp_u1b & FUNC0(4))) {
		tmp_u1b = FUNC29(rtlpriv, 0x16);
		tmp_u1b &= 0x0F;
		FUNC32(rtlpriv, 0x16, tmp_u1b | 0x80);
		FUNC37(10);
		FUNC32(rtlpriv, 0x16, tmp_u1b | 0x90);
		FUNC1(rtlpriv, COMP_INIT, DBG_LOUD, "under 1.5V\n");
	}
	FUNC32(rtlpriv, REG_NAV_CTRL+2,  ((30000+127)/128));
	FUNC11(hw);
exit:
	FUNC7(flags);
	rtlpriv->rtlhal.being_init_adapter = false;
	return err;
}