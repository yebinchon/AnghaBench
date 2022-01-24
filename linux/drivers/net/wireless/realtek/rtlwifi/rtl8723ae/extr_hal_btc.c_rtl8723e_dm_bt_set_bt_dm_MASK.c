#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_5__ {scalar_t__ hold_for_bt_operation; } ;
struct rtl_priv {TYPE_1__ btcoexist; TYPE_3__* cfg; } ;
struct ieee80211_hw {int dummy; } ;
struct btdm_8723 {int* ps_tdma_byte; int ignore_wlan_act; int /*<<< orphan*/  dec_bt_pwr; int /*<<< orphan*/  sw_dac_swing_lvl; int /*<<< orphan*/  sw_dac_swing_on; int /*<<< orphan*/  tdma_dac_swing; int /*<<< orphan*/  tdma_nav; int /*<<< orphan*/  tdma_ant; int /*<<< orphan*/  tra_tdma_nav; int /*<<< orphan*/  tra_tdma_ant; int /*<<< orphan*/  tra_tdma_on; int /*<<< orphan*/  ps_tdma_on; int /*<<< orphan*/  tdma_on; int /*<<< orphan*/  b2_ant_hid_en; int /*<<< orphan*/  pta_on; int /*<<< orphan*/  val_0x6cc; int /*<<< orphan*/  val_0x6c8; int /*<<< orphan*/  val_0x6c0; int /*<<< orphan*/  wlan_act_lo; int /*<<< orphan*/  wlan_act_hi; int /*<<< orphan*/  fw_dac_swing_lvl; int /*<<< orphan*/  bt_retry_index; int /*<<< orphan*/  adc_back_off_on; int /*<<< orphan*/  agc_table_en; int /*<<< orphan*/  rf_rx_lpf_shrink; int /*<<< orphan*/  low_penalty_rate_adaptive; int /*<<< orphan*/  reject_aggre_pkt; int /*<<< orphan*/  all_off; } ;
struct TYPE_8__ {struct btdm_8723 btdm; } ;
struct TYPE_7__ {TYPE_2__* ops; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* get_hw_reg ) (struct ieee80211_hw*,int /*<<< orphan*/ ,int*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  BT_AGCTABLE_OFF ; 
 int /*<<< orphan*/  BT_AGCTABLE_ON ; 
 int /*<<< orphan*/  BT_BB_BACKOFF_OFF ; 
 int /*<<< orphan*/  BT_BB_BACKOFF_ON ; 
 int /*<<< orphan*/  BT_RF_RX_LPF_CORNER_RESUME ; 
 int /*<<< orphan*/  BT_RF_RX_LPF_CORNER_SHRINK ; 
 int /*<<< orphan*/  BT_TX_RATE_ADAPTIVE_LOW_PENALTY ; 
 int /*<<< orphan*/  BT_TX_RATE_ADAPTIVE_NORMAL ; 
 int /*<<< orphan*/  COMP_BT_COEXIST ; 
 int /*<<< orphan*/  DBG_DMESG ; 
 int /*<<< orphan*/  DBG_TRACE ; 
 int /*<<< orphan*/  HW_VAR_FWLPS_RF_ON ; 
 int /*<<< orphan*/  HW_VAR_FW_PSMODE_STATUS ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 TYPE_4__ hal_coex_8723 ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct btdm_8723*,struct btdm_8723*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct btdm_8723*,struct btdm_8723*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ieee80211_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ieee80211_hw*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct ieee80211_hw*,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct ieee80211_hw*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct ieee80211_hw*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct ieee80211_hw*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct ieee80211_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct ieee80211_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct ieee80211_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 struct rtl_priv* FUNC23 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC24 (struct ieee80211_hw*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC25 (struct ieee80211_hw*,int /*<<< orphan*/ ,int*) ; 

void FUNC26(struct ieee80211_hw *hw,
			      struct btdm_8723 *btdm)
{
	struct rtl_priv	*rtlpriv = FUNC23(hw);
	struct btdm_8723 *btdm_8723 = &hal_coex_8723.btdm;
	u8 i;

	bool fw_current_inpsmode = false;
	bool fw_ps_awake = true;

	rtlpriv->cfg->ops->get_hw_reg(hw, HW_VAR_FW_PSMODE_STATUS,
					      (u8 *)(&fw_current_inpsmode));
	rtlpriv->cfg->ops->get_hw_reg(hw, HW_VAR_FWLPS_RF_ON,
					      (u8 *)(&fw_ps_awake));

	/* check new setting is different with the old one, */
	/* if all the same, don't do the setting again. */
	if (FUNC3(btdm_8723, btdm, sizeof(struct btdm_8723)) == 0) {
		FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
			"[BTCoex], the same coexist setting, return!!\n");
		return;
	} else {	/* save the new coexist setting */
		FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
			"[BTCoex], UPDATE TO NEW COEX SETTING!!\n");
		FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
			"[BTCoex], original/new bAllOff=0x%x/ 0x%x\n",
			btdm_8723->all_off, btdm->all_off);
		FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
			"[BTCoex], original/new agc_table_en=0x%x/ 0x%x\n",
			btdm_8723->agc_table_en, btdm->agc_table_en);
		FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
			 "[BTCoex], original/new adc_back_off_on=0x%x/ 0x%x\n",
			 btdm_8723->adc_back_off_on,
			 btdm->adc_back_off_on);
		FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
			 "[BTCoex], original/new b2_ant_hid_en=0x%x/ 0x%x\n",
			 btdm_8723->b2_ant_hid_en, btdm->b2_ant_hid_en);
		FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
			 "[BTCoex], original/new bLowPenaltyRateAdaptive=0x%x/ 0x%x\n",
			 btdm_8723->low_penalty_rate_adaptive,
			 btdm->low_penalty_rate_adaptive);
		FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
			 "[BTCoex], original/new bRfRxLpfShrink=0x%x/ 0x%x\n",
			 btdm_8723->rf_rx_lpf_shrink,
			 btdm->rf_rx_lpf_shrink);
		FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
			 "[BTCoex], original/new bRejectAggrePkt=0x%x/ 0x%x\n",
			 btdm_8723->reject_aggre_pkt,
			 btdm->reject_aggre_pkt);
		FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
			 "[BTCoex], original/new tdma_on=0x%x/ 0x%x\n",
			 btdm_8723->tdma_on, btdm->tdma_on);
		FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
			 "[BTCoex], original/new tdmaAnt=0x%x/ 0x%x\n",
			 btdm_8723->tdma_ant, btdm->tdma_ant);
		FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
			 "[BTCoex], original/new tdmaNav=0x%x/ 0x%x\n",
			 btdm_8723->tdma_nav, btdm->tdma_nav);
		FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
			 "[BTCoex], original/new tdma_dac_swing=0x%x/ 0x%x\n",
			 btdm_8723->tdma_dac_swing, btdm->tdma_dac_swing);
		FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
			 "[BTCoex], original/new fw_dac_swing_lvl=0x%x/ 0x%x\n",
			 btdm_8723->fw_dac_swing_lvl,
			 btdm->fw_dac_swing_lvl);

		FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
			 "[BTCoex], original/new bTraTdmaOn=0x%x/ 0x%x\n",
			 btdm_8723->tra_tdma_on, btdm->tra_tdma_on);
		FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
			 "[BTCoex], original/new traTdmaAnt=0x%x/ 0x%x\n",
			 btdm_8723->tra_tdma_ant, btdm->tra_tdma_ant);
		FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
			 "[BTCoex], original/new traTdmaNav=0x%x/ 0x%x\n",
			 btdm_8723->tra_tdma_nav, btdm->tra_tdma_nav);
		FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
			 "[BTCoex], original/new bPsTdmaOn=0x%x/ 0x%x\n",
			 btdm_8723->ps_tdma_on, btdm->ps_tdma_on);
		for (i = 0; i < 5; i++) {
			FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
				 "[BTCoex], original/new psTdmaByte[i]=0x%x/ 0x%x\n",
				 btdm_8723->ps_tdma_byte[i],
				 btdm->ps_tdma_byte[i]);
		}
		FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
			"[BTCoex], original/new bIgnoreWlanAct=0x%x/ 0x%x\n",
			btdm_8723->ignore_wlan_act,
			btdm->ignore_wlan_act);


		FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
			"[BTCoex], original/new bPtaOn=0x%x/ 0x%x\n",
			btdm_8723->pta_on, btdm->pta_on);
		FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
			"[BTCoex], original/new val_0x6c0=0x%x/ 0x%x\n",
			btdm_8723->val_0x6c0, btdm->val_0x6c0);
		FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
			"[BTCoex], original/new val_0x6c8=0x%x/ 0x%x\n",
			btdm_8723->val_0x6c8, btdm->val_0x6c8);
		FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
			"[BTCoex], original/new val_0x6cc=0x%x/ 0x%x\n",
			btdm_8723->val_0x6cc, btdm->val_0x6cc);
		FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
			 "[BTCoex], original/new sw_dac_swing_on=0x%x/ 0x%x\n",
			 btdm_8723->sw_dac_swing_on,
			 btdm->sw_dac_swing_on);
		FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
			 "[BTCoex], original/new sw_dac_swing_lvl=0x%x/ 0x%x\n",
			 btdm_8723->sw_dac_swing_lvl,
			 btdm->sw_dac_swing_lvl);
		FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
			 "[BTCoex], original/new wlanActHi=0x%x/ 0x%x\n",
			 btdm_8723->wlan_act_hi, btdm->wlan_act_hi);
		FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
			 "[BTCoex], original/new wlanActLo=0x%x/ 0x%x\n",
			 btdm_8723->wlan_act_lo, btdm->wlan_act_lo);
		FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
			 "[BTCoex], original/new btRetryIndex=0x%x/ 0x%x\n",
			 btdm_8723->bt_retry_index, btdm->bt_retry_index);

		FUNC4(btdm_8723, btdm, sizeof(struct btdm_8723));
	}
	/* Here we only consider when Bt Operation
	 * inquiry/paging/pairing is ON
	 * we only need to turn off TDMA
	 */

	if (rtlpriv->btcoexist.hold_for_bt_operation) {
		FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_TRACE,
			"[BTCoex], set to ignore wlanAct for BT OP!!\n");
		FUNC16(hw, true);
		return;
	}

	if (btdm->all_off) {
		FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_TRACE,
			"[BTCoex], disable all coexist mechanism !!\n");
		FUNC5(hw);
		return;
	}

	FUNC8(hw, btdm->reject_aggre_pkt);

	if (btdm->low_penalty_rate_adaptive)
		FUNC1(hw, BT_TX_RATE_ADAPTIVE_LOW_PENALTY);
	else
		FUNC1(hw,
						   BT_TX_RATE_ADAPTIVE_NORMAL);

	if (btdm->rf_rx_lpf_shrink)
		FUNC22(hw,
				BT_RF_RX_LPF_CORNER_SHRINK);
	else
		FUNC22(hw,
				BT_RF_RX_LPF_CORNER_RESUME);

	if (btdm->agc_table_en)
		FUNC6(hw, BT_AGCTABLE_ON);
	else
		FUNC6(hw, BT_AGCTABLE_OFF);

	if (btdm->adc_back_off_on)
		FUNC7(hw, BT_BB_BACKOFF_ON);
	else
		FUNC7(hw, BT_BB_BACKOFF_OFF);

	FUNC13(hw, btdm->bt_retry_index);

	FUNC14(hw, btdm->fw_dac_swing_lvl);
	FUNC19(hw, btdm->wlan_act_hi,
				       btdm->wlan_act_lo);

	FUNC9(hw, btdm->val_0x6c0,
				      btdm->val_0x6c8, btdm->val_0x6cc);
	FUNC20(hw, btdm->pta_on);

	/* Note: There is a constraint between TDMA and 2AntHID
	 * Only one of 2AntHid and tdma can be turn on
	 * We should turn off those mechanisms should be turned off first
	 * and then turn on those mechanisms should be turned on.
	*/
	if (btdm->b2_ant_hid_en) {
		/* turn off tdma */
		FUNC18(hw, btdm->tra_tdma_on,
						    btdm->tra_tdma_ant,
						    btdm->tra_tdma_nav);
		FUNC17(hw, false, btdm->tdma_ant,
						btdm->tdma_nav,
						btdm->tdma_dac_swing);

		/* turn off Pstdma */
		FUNC16(hw,
						      btdm->ignore_wlan_act);
		/* Antenna control by PTA, 0x870 = 0x300. */
		FUNC11(hw, 0x0, 0x0, 0x0, 0x8, 0x0);

		/* turn on 2AntHid */
		FUNC12(hw, true);
		FUNC10(hw, true, true);
	} else if (btdm->tdma_on) {
		/* turn off 2AntHid */
		FUNC12(hw, false);
		FUNC10(hw, false, false);

		/* turn off pstdma */
		FUNC16(hw,
						      btdm->ignore_wlan_act);
		/* Antenna control by PTA, 0x870 = 0x300. */
		FUNC11(hw, 0x0, 0x0, 0x0, 0x8, 0x0);

		/* turn on tdma */
		FUNC18(hw, btdm->tra_tdma_on,
						    btdm->tra_tdma_ant,
						    btdm->tra_tdma_nav);
		FUNC17(hw, true, btdm->tdma_ant,
						btdm->tdma_nav,
						btdm->tdma_dac_swing);
	} else if (btdm->ps_tdma_on) {
		/* turn off 2AntHid */
		FUNC12(hw, false);
		FUNC10(hw, false, false);

		/* turn off tdma */
		FUNC18(hw, btdm->tra_tdma_on,
						    btdm->tra_tdma_ant,
						    btdm->tra_tdma_nav);
		FUNC17(hw, false, btdm->tdma_ant,
						btdm->tdma_nav,
						btdm->tdma_dac_swing);

		/* turn on pstdma */
		FUNC16(hw,
						      btdm->ignore_wlan_act);
		FUNC11(hw, btdm->ps_tdma_byte[0],
					 btdm->ps_tdma_byte[1],
					 btdm->ps_tdma_byte[2],
					 btdm->ps_tdma_byte[3],
					 btdm->ps_tdma_byte[4]);
	} else {
		/* turn off 2AntHid */
		FUNC12(hw, false);
		FUNC10(hw, false, false);

		/* turn off tdma */
		FUNC18(hw, btdm->tra_tdma_on,
						    btdm->tra_tdma_ant,
						    btdm->tra_tdma_nav);
		FUNC17(hw, false, btdm->tdma_ant,
						btdm->tdma_nav,
						btdm->tdma_dac_swing);

		/* turn off pstdma */
		FUNC16(hw,
						btdm->ignore_wlan_act);
		/* Antenna control by PTA, 0x870 = 0x300. */
		FUNC11(hw, 0x0, 0x0, 0x0, 0x8, 0x0);
	}

	/* Note:
	 * We should add delay for making sure
	 *	sw DacSwing can be set sucessfully.
	 * because of that rtl8723e_dm_bt_set_fw_2_ant_hid()
	 *	and rtl8723e_dm_bt_set_fw_tdma_ctrl()
	 * will overwrite the reg 0x880.
	*/
	FUNC2(30);
	FUNC21(hw, btdm->sw_dac_swing_on,
						  btdm->sw_dac_swing_lvl);
	FUNC15(hw, btdm->dec_bt_pwr);
}