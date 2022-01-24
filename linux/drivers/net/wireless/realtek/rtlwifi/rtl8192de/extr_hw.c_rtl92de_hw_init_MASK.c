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
typedef  int u32 ;
struct rtl_ps_ctl {scalar_t__ rfpwr_state; } ;
struct TYPE_4__ {int fw_current_inpsmode; } ;
struct rtl_phy {int /*<<< orphan*/  current_channel; void** rfreg_chnlval; int /*<<< orphan*/  rf_mode; } ;
struct rtl_priv {TYPE_3__* cfg; TYPE_1__ psc; struct rtl_phy phy; } ;
struct rtl_pci {int being_init_adapter; int init_ready; int receive_config; } ;
struct rtl_mac {int /*<<< orphan*/  mac_addr; scalar_t__ rdg_en; } ;
struct rtl_hal {scalar_t__ current_bandtype; scalar_t__ interfaceindex; scalar_t__ macphymode; scalar_t__ earlymode_enable; scalar_t__ last_hmeboxnum; } ;
struct ieee80211_hw {int dummy; } ;
typedef  enum radio_path { ____Placeholder_radio_path } radio_path ;
struct TYPE_6__ {TYPE_2__* ops; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* set_hw_reg ) (struct ieee80211_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 scalar_t__ BAND_ON_2_4G ; 
 int BCCKEN ; 
 int FUNC0 (int) ; 
 int BOFDMEN ; 
 int /*<<< orphan*/  COMP_ERR ; 
 int /*<<< orphan*/  COMP_INIT ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 int /*<<< orphan*/  DBG_WARNING ; 
 scalar_t__ DUALMAC_DUALPHY ; 
 scalar_t__ ERFON ; 
 int /*<<< orphan*/  HW_VAR_ETHER_ADDR ; 
 int /*<<< orphan*/  MASKDWORD ; 
 int /*<<< orphan*/  MAX_STALL_TIME ; 
 int RCR_ACRC32 ; 
 int RCR_AICV ; 
 int /*<<< orphan*/  REG_RCR ; 
 int REG_RD_CTRL ; 
 int /*<<< orphan*/  REG_RD_NAV_NXT ; 
 int REG_RD_RESP_PKT_TH ; 
 scalar_t__ RF90_PATH_A ; 
 int /*<<< orphan*/  RFPGA0_ANALOGPARAMETER2 ; 
 int /*<<< orphan*/  RFPGA0_ANALOGPARAMETER4 ; 
 int /*<<< orphan*/  RFPGA0_RFMOD ; 
 int /*<<< orphan*/  RFREG_OFFSET_MASK ; 
 int RF_CHNLBW ; 
 int /*<<< orphan*/  RF_OP_BY_SW_3WIRE ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*) ; 
 int FUNC4 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  globalmutex_for_power_and_efuse ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_hw*) ; 
 int FUNC7 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC9 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC10 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC11 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC12 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC13 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC14 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC16 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC17 (struct ieee80211_hw*) ; 
 void* FUNC18 (struct ieee80211_hw*,int,int,int /*<<< orphan*/ ) ; 
 struct rtl_hal* FUNC19 (struct rtl_priv*) ; 
 struct rtl_mac* FUNC20 (struct rtl_priv*) ; 
 struct rtl_pci* FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct ieee80211_hw*) ; 
 struct rtl_priv* FUNC23 (struct ieee80211_hw*) ; 
 struct rtl_ps_ctl* FUNC24 (struct rtl_priv*) ; 
 int FUNC25 (struct rtl_priv*,int) ; 
 int FUNC26 (struct rtl_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (struct ieee80211_hw*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC28 (struct rtl_priv*,int,int) ; 
 int /*<<< orphan*/  FUNC29 (struct rtl_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC32 (struct ieee80211_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ) ; 

int FUNC34(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC23(hw);
	struct rtl_hal *rtlhal = FUNC19(FUNC23(hw));
	struct rtl_mac *mac = FUNC20(FUNC23(hw));
	struct rtl_phy *rtlphy = &(rtlpriv->phy);
	struct rtl_pci *rtlpci = FUNC21(FUNC22(hw));
	struct rtl_ps_ctl *ppsc = FUNC24(FUNC23(hw));
	bool rtstatus = true;
	u8 tmp_u1b;
	int i;
	int err;
	unsigned long flags;

	rtlpci->being_init_adapter = true;
	rtlpci->init_ready = false;
	FUNC30(&globalmutex_for_power_and_efuse, flags);
	/* we should do iqk after disable/enable */
	FUNC12(hw);
	/* rtlpriv->intf_ops->disable_aspm(hw); */
	rtstatus = FUNC4(hw);
	if (!rtstatus) {
		FUNC5("Init MAC failed\n");
		err = 1;
		FUNC31(&globalmutex_for_power_and_efuse, flags);
		return err;
	}
	err = FUNC7(hw);
	FUNC31(&globalmutex_for_power_and_efuse, flags);
	if (err) {
		FUNC1(rtlpriv, COMP_ERR, DBG_WARNING,
			 "Failed to download FW. Init HW without FW..\n");
		return 1;
	}
	rtlhal->last_hmeboxnum = 0;
	rtlpriv->psc.fw_current_inpsmode = false;

	tmp_u1b = FUNC25(rtlpriv, 0x605);
	tmp_u1b = tmp_u1b | 0x30;
	FUNC28(rtlpriv, 0x605, tmp_u1b);

	if (rtlhal->earlymode_enable) {
		FUNC1(rtlpriv, COMP_INIT, DBG_LOUD,
			 "EarlyMode Enabled!!!\n");

		tmp_u1b = FUNC25(rtlpriv, 0x4d0);
		tmp_u1b = tmp_u1b | 0x1f;
		FUNC28(rtlpriv, 0x4d0, tmp_u1b);

		FUNC28(rtlpriv, 0x4d3, 0x80);

		tmp_u1b = FUNC25(rtlpriv, 0x605);
		tmp_u1b = tmp_u1b | 0x40;
		FUNC28(rtlpriv, 0x605, tmp_u1b);
	}

	if (mac->rdg_en) {
		FUNC28(rtlpriv, REG_RD_CTRL, 0xff);
		FUNC29(rtlpriv, REG_RD_NAV_NXT, 0x200);
		FUNC28(rtlpriv, REG_RD_RESP_PKT_TH, 0x05);
	}

	FUNC11(hw);
	/* because last function modify RCR, so we update
	 * rcr var here, or TP will unstable for receive_config
	 * is wrong, RX RCR_ACRC32 will cause TP unstabel & Rx
	 * RCR_APP_ICV will cause mac80211 unassoc for cisco 1252*/
	rtlpci->receive_config = FUNC26(rtlpriv, REG_RCR);
	rtlpci->receive_config &= ~(RCR_ACRC32 | RCR_AICV);

	FUNC8(hw);

	rtlphy->rf_mode = RF_OP_BY_SW_3WIRE;
	/* set before initialize RF */
	FUNC27(hw, RFPGA0_ANALOGPARAMETER4, 0x00f00000, 0xf);

	/* config RF */
	FUNC13(hw);

	/* After read predefined TXT, we must set BB/MAC/RF
	 * register as our requirement */
	/* After load BB,RF params,we need do more for 92D. */
	FUNC15(hw);
	/* set default value after initialize RF,  */
	FUNC27(hw, RFPGA0_ANALOGPARAMETER4, 0x00f00000, 0);
	rtlphy->rfreg_chnlval[0] = FUNC18(hw, (enum radio_path)0,
			RF_CHNLBW, RFREG_OFFSET_MASK);
	rtlphy->rfreg_chnlval[1] = FUNC18(hw, (enum radio_path)1,
			RF_CHNLBW, RFREG_OFFSET_MASK);

	/*---- Set CCK and OFDM Block "ON"----*/
	if (rtlhal->current_bandtype == BAND_ON_2_4G)
		FUNC27(hw, RFPGA0_RFMOD, BCCKEN, 0x1);
	FUNC27(hw, RFPGA0_RFMOD, BOFDMEN, 0x1);
	if (rtlhal->interfaceindex == 0) {
		/* RFPGA0_ANALOGPARAMETER2: cck clock select,
		 *  set to 20MHz by default */
		FUNC27(hw, RFPGA0_ANALOGPARAMETER2, FUNC0(10) |
			      FUNC0(11), 3);
	} else {
		/* Mac1 */
		FUNC27(hw, RFPGA0_ANALOGPARAMETER2, FUNC0(11) |
			      FUNC0(10), 3);
	}

	FUNC3(hw);

	/* reset hw sec */
	FUNC17(hw);
	FUNC16(hw);

	/* Read EEPROM TX power index and PHY_REG_PG.txt to capture correct */
	/* TX power index for different rate set. */
	FUNC9(hw);
	FUNC14(hw, rtlphy->current_channel);

	ppsc->rfpwr_state = ERFON;

	rtlpriv->cfg->ops->set_hw_reg(hw, HW_VAR_ETHER_ADDR, mac->mac_addr);

	FUNC2(hw);
	/* rtlpriv->intf_ops->enable_aspm(hw); */

	FUNC6(hw);
	rtlpci->being_init_adapter = false;

	if (ppsc->rfpwr_state == ERFON) {
		FUNC10(hw);
		/* 5G and 2.4G must wait sometime to let RF LO ready */
		if (rtlhal->macphymode == DUALMAC_DUALPHY) {
			u32 tmp_rega;
			for (i = 0; i < 10000; i++) {
				FUNC33(MAX_STALL_TIME);

				tmp_rega = FUNC18(hw,
						  (enum radio_path)RF90_PATH_A,
						  0x2a, MASKDWORD);

				if (((tmp_rega & FUNC0(11)) == FUNC0(11)))
					break;
			}
			/* check that loop was successful. If not, exit now */
			if (i == 10000) {
				rtlpci->init_ready = false;
				return 1;
			}
		}
	}
	rtlpci->init_ready = true;
	return err;
}