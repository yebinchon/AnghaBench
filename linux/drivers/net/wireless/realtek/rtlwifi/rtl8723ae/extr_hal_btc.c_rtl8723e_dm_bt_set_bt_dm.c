
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {scalar_t__ hold_for_bt_operation; } ;
struct rtl_priv {TYPE_1__ btcoexist; TYPE_3__* cfg; } ;
struct ieee80211_hw {int dummy; } ;
struct btdm_8723 {int* ps_tdma_byte; int ignore_wlan_act; int dec_bt_pwr; int sw_dac_swing_lvl; int sw_dac_swing_on; int tdma_dac_swing; int tdma_nav; int tdma_ant; int tra_tdma_nav; int tra_tdma_ant; int tra_tdma_on; int ps_tdma_on; int tdma_on; int b2_ant_hid_en; int pta_on; int val_0x6cc; int val_0x6c8; int val_0x6c0; int wlan_act_lo; int wlan_act_hi; int fw_dac_swing_lvl; int bt_retry_index; int adc_back_off_on; int agc_table_en; int rf_rx_lpf_shrink; int low_penalty_rate_adaptive; int reject_aggre_pkt; int all_off; } ;
struct TYPE_8__ {struct btdm_8723 btdm; } ;
struct TYPE_7__ {TYPE_2__* ops; } ;
struct TYPE_6__ {int (* get_hw_reg ) (struct ieee80211_hw*,int ,int*) ;} ;


 int BT_AGCTABLE_OFF ;
 int BT_AGCTABLE_ON ;
 int BT_BB_BACKOFF_OFF ;
 int BT_BB_BACKOFF_ON ;
 int BT_RF_RX_LPF_CORNER_RESUME ;
 int BT_RF_RX_LPF_CORNER_SHRINK ;
 int BT_TX_RATE_ADAPTIVE_LOW_PENALTY ;
 int BT_TX_RATE_ADAPTIVE_NORMAL ;
 int COMP_BT_COEXIST ;
 int DBG_DMESG ;
 int DBG_TRACE ;
 int HW_VAR_FWLPS_RF_ON ;
 int HW_VAR_FW_PSMODE_STATUS ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,...) ;
 int dm_bt_set_sw_penalty_tx_rate_adapt (struct ieee80211_hw*,int ) ;
 TYPE_4__ hal_coex_8723 ;
 int mdelay (int) ;
 scalar_t__ memcmp (struct btdm_8723*,struct btdm_8723*,int) ;
 int memcpy (struct btdm_8723*,struct btdm_8723*,int) ;
 int rtl8723e_btdm_coex_all_off (struct ieee80211_hw*) ;
 int rtl8723e_dm_bt_agc_table (struct ieee80211_hw*,int ) ;
 int rtl8723e_dm_bt_bb_back_off_level (struct ieee80211_hw*,int ) ;
 int rtl8723e_dm_bt_reject_ap_aggregated_packet (struct ieee80211_hw*,int ) ;
 int rtl8723e_dm_bt_set_coex_table (struct ieee80211_hw*,int ,int ,int ) ;
 int rtl8723e_dm_bt_set_fw_2_ant_hid (struct ieee80211_hw*,int,int) ;
 int rtl8723e_dm_bt_set_fw_3a (struct ieee80211_hw*,int,int,int,int,int) ;
 int rtl8723e_dm_bt_set_fw_bt_hid_info (struct ieee80211_hw*,int) ;
 int rtl8723e_dm_bt_set_fw_bt_retry_index (struct ieee80211_hw*,int ) ;
 int rtl8723e_dm_bt_set_fw_dac_swing_level (struct ieee80211_hw*,int ) ;
 int rtl8723e_dm_bt_set_fw_dec_bt_pwr (struct ieee80211_hw*,int ) ;
 int rtl8723e_dm_bt_set_fw_ignore_wlan_act (struct ieee80211_hw*,int) ;
 int rtl8723e_dm_bt_set_fw_tdma_ctrl (struct ieee80211_hw*,int,int ,int ,int ) ;
 int rtl8723e_dm_bt_set_fw_tra_tdma_ctrl (struct ieee80211_hw*,int ,int ,int ) ;
 int rtl8723e_dm_bt_set_fw_wlan_act (struct ieee80211_hw*,int ,int ) ;
 int rtl8723e_dm_bt_set_hw_pta_mode (struct ieee80211_hw*,int ) ;
 int rtl8723e_dm_bt_set_sw_full_time_dac_swing (struct ieee80211_hw*,int ,int ) ;
 int rtl8723e_dm_bt_set_sw_rf_rx_lpf_corner (struct ieee80211_hw*,int ) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int stub1 (struct ieee80211_hw*,int ,int*) ;
 int stub2 (struct ieee80211_hw*,int ,int*) ;

void rtl8723e_dm_bt_set_bt_dm(struct ieee80211_hw *hw,
         struct btdm_8723 *btdm)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct btdm_8723 *btdm_8723 = &hal_coex_8723.btdm;
 u8 i;

 bool fw_current_inpsmode = 0;
 bool fw_ps_awake = 1;

 rtlpriv->cfg->ops->get_hw_reg(hw, HW_VAR_FW_PSMODE_STATUS,
           (u8 *)(&fw_current_inpsmode));
 rtlpriv->cfg->ops->get_hw_reg(hw, HW_VAR_FWLPS_RF_ON,
           (u8 *)(&fw_ps_awake));



 if (memcmp(btdm_8723, btdm, sizeof(struct btdm_8723)) == 0) {
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
   "[BTCoex], the same coexist setting, return!!\n");
  return;
 } else {
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
   "[BTCoex], UPDATE TO NEW COEX SETTING!!\n");
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
   "[BTCoex], original/new bAllOff=0x%x/ 0x%x\n",
   btdm_8723->all_off, btdm->all_off);
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
   "[BTCoex], original/new agc_table_en=0x%x/ 0x%x\n",
   btdm_8723->agc_table_en, btdm->agc_table_en);
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
    "[BTCoex], original/new adc_back_off_on=0x%x/ 0x%x\n",
    btdm_8723->adc_back_off_on,
    btdm->adc_back_off_on);
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
    "[BTCoex], original/new b2_ant_hid_en=0x%x/ 0x%x\n",
    btdm_8723->b2_ant_hid_en, btdm->b2_ant_hid_en);
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
    "[BTCoex], original/new bLowPenaltyRateAdaptive=0x%x/ 0x%x\n",
    btdm_8723->low_penalty_rate_adaptive,
    btdm->low_penalty_rate_adaptive);
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
    "[BTCoex], original/new bRfRxLpfShrink=0x%x/ 0x%x\n",
    btdm_8723->rf_rx_lpf_shrink,
    btdm->rf_rx_lpf_shrink);
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
    "[BTCoex], original/new bRejectAggrePkt=0x%x/ 0x%x\n",
    btdm_8723->reject_aggre_pkt,
    btdm->reject_aggre_pkt);
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
    "[BTCoex], original/new tdma_on=0x%x/ 0x%x\n",
    btdm_8723->tdma_on, btdm->tdma_on);
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
    "[BTCoex], original/new tdmaAnt=0x%x/ 0x%x\n",
    btdm_8723->tdma_ant, btdm->tdma_ant);
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
    "[BTCoex], original/new tdmaNav=0x%x/ 0x%x\n",
    btdm_8723->tdma_nav, btdm->tdma_nav);
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
    "[BTCoex], original/new tdma_dac_swing=0x%x/ 0x%x\n",
    btdm_8723->tdma_dac_swing, btdm->tdma_dac_swing);
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
    "[BTCoex], original/new fw_dac_swing_lvl=0x%x/ 0x%x\n",
    btdm_8723->fw_dac_swing_lvl,
    btdm->fw_dac_swing_lvl);

  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
    "[BTCoex], original/new bTraTdmaOn=0x%x/ 0x%x\n",
    btdm_8723->tra_tdma_on, btdm->tra_tdma_on);
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
    "[BTCoex], original/new traTdmaAnt=0x%x/ 0x%x\n",
    btdm_8723->tra_tdma_ant, btdm->tra_tdma_ant);
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
    "[BTCoex], original/new traTdmaNav=0x%x/ 0x%x\n",
    btdm_8723->tra_tdma_nav, btdm->tra_tdma_nav);
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
    "[BTCoex], original/new bPsTdmaOn=0x%x/ 0x%x\n",
    btdm_8723->ps_tdma_on, btdm->ps_tdma_on);
  for (i = 0; i < 5; i++) {
   RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
     "[BTCoex], original/new psTdmaByte[i]=0x%x/ 0x%x\n",
     btdm_8723->ps_tdma_byte[i],
     btdm->ps_tdma_byte[i]);
  }
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
   "[BTCoex], original/new bIgnoreWlanAct=0x%x/ 0x%x\n",
   btdm_8723->ignore_wlan_act,
   btdm->ignore_wlan_act);


  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
   "[BTCoex], original/new bPtaOn=0x%x/ 0x%x\n",
   btdm_8723->pta_on, btdm->pta_on);
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
   "[BTCoex], original/new val_0x6c0=0x%x/ 0x%x\n",
   btdm_8723->val_0x6c0, btdm->val_0x6c0);
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
   "[BTCoex], original/new val_0x6c8=0x%x/ 0x%x\n",
   btdm_8723->val_0x6c8, btdm->val_0x6c8);
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
   "[BTCoex], original/new val_0x6cc=0x%x/ 0x%x\n",
   btdm_8723->val_0x6cc, btdm->val_0x6cc);
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
    "[BTCoex], original/new sw_dac_swing_on=0x%x/ 0x%x\n",
    btdm_8723->sw_dac_swing_on,
    btdm->sw_dac_swing_on);
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
    "[BTCoex], original/new sw_dac_swing_lvl=0x%x/ 0x%x\n",
    btdm_8723->sw_dac_swing_lvl,
    btdm->sw_dac_swing_lvl);
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
    "[BTCoex], original/new wlanActHi=0x%x/ 0x%x\n",
    btdm_8723->wlan_act_hi, btdm->wlan_act_hi);
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
    "[BTCoex], original/new wlanActLo=0x%x/ 0x%x\n",
    btdm_8723->wlan_act_lo, btdm->wlan_act_lo);
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
    "[BTCoex], original/new btRetryIndex=0x%x/ 0x%x\n",
    btdm_8723->bt_retry_index, btdm->bt_retry_index);

  memcpy(btdm_8723, btdm, sizeof(struct btdm_8723));
 }





 if (rtlpriv->btcoexist.hold_for_bt_operation) {
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_TRACE,
   "[BTCoex], set to ignore wlanAct for BT OP!!\n");
  rtl8723e_dm_bt_set_fw_ignore_wlan_act(hw, 1);
  return;
 }

 if (btdm->all_off) {
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_TRACE,
   "[BTCoex], disable all coexist mechanism !!\n");
  rtl8723e_btdm_coex_all_off(hw);
  return;
 }

 rtl8723e_dm_bt_reject_ap_aggregated_packet(hw, btdm->reject_aggre_pkt);

 if (btdm->low_penalty_rate_adaptive)
  dm_bt_set_sw_penalty_tx_rate_adapt(hw, BT_TX_RATE_ADAPTIVE_LOW_PENALTY);
 else
  dm_bt_set_sw_penalty_tx_rate_adapt(hw,
         BT_TX_RATE_ADAPTIVE_NORMAL);

 if (btdm->rf_rx_lpf_shrink)
  rtl8723e_dm_bt_set_sw_rf_rx_lpf_corner(hw,
    BT_RF_RX_LPF_CORNER_SHRINK);
 else
  rtl8723e_dm_bt_set_sw_rf_rx_lpf_corner(hw,
    BT_RF_RX_LPF_CORNER_RESUME);

 if (btdm->agc_table_en)
  rtl8723e_dm_bt_agc_table(hw, BT_AGCTABLE_ON);
 else
  rtl8723e_dm_bt_agc_table(hw, BT_AGCTABLE_OFF);

 if (btdm->adc_back_off_on)
  rtl8723e_dm_bt_bb_back_off_level(hw, BT_BB_BACKOFF_ON);
 else
  rtl8723e_dm_bt_bb_back_off_level(hw, BT_BB_BACKOFF_OFF);

 rtl8723e_dm_bt_set_fw_bt_retry_index(hw, btdm->bt_retry_index);

 rtl8723e_dm_bt_set_fw_dac_swing_level(hw, btdm->fw_dac_swing_lvl);
 rtl8723e_dm_bt_set_fw_wlan_act(hw, btdm->wlan_act_hi,
           btdm->wlan_act_lo);

 rtl8723e_dm_bt_set_coex_table(hw, btdm->val_0x6c0,
          btdm->val_0x6c8, btdm->val_0x6cc);
 rtl8723e_dm_bt_set_hw_pta_mode(hw, btdm->pta_on);






 if (btdm->b2_ant_hid_en) {

  rtl8723e_dm_bt_set_fw_tra_tdma_ctrl(hw, btdm->tra_tdma_on,
          btdm->tra_tdma_ant,
          btdm->tra_tdma_nav);
  rtl8723e_dm_bt_set_fw_tdma_ctrl(hw, 0, btdm->tdma_ant,
      btdm->tdma_nav,
      btdm->tdma_dac_swing);


  rtl8723e_dm_bt_set_fw_ignore_wlan_act(hw,
            btdm->ignore_wlan_act);

  rtl8723e_dm_bt_set_fw_3a(hw, 0x0, 0x0, 0x0, 0x8, 0x0);


  rtl8723e_dm_bt_set_fw_bt_hid_info(hw, 1);
  rtl8723e_dm_bt_set_fw_2_ant_hid(hw, 1, 1);
 } else if (btdm->tdma_on) {

  rtl8723e_dm_bt_set_fw_bt_hid_info(hw, 0);
  rtl8723e_dm_bt_set_fw_2_ant_hid(hw, 0, 0);


  rtl8723e_dm_bt_set_fw_ignore_wlan_act(hw,
            btdm->ignore_wlan_act);

  rtl8723e_dm_bt_set_fw_3a(hw, 0x0, 0x0, 0x0, 0x8, 0x0);


  rtl8723e_dm_bt_set_fw_tra_tdma_ctrl(hw, btdm->tra_tdma_on,
          btdm->tra_tdma_ant,
          btdm->tra_tdma_nav);
  rtl8723e_dm_bt_set_fw_tdma_ctrl(hw, 1, btdm->tdma_ant,
      btdm->tdma_nav,
      btdm->tdma_dac_swing);
 } else if (btdm->ps_tdma_on) {

  rtl8723e_dm_bt_set_fw_bt_hid_info(hw, 0);
  rtl8723e_dm_bt_set_fw_2_ant_hid(hw, 0, 0);


  rtl8723e_dm_bt_set_fw_tra_tdma_ctrl(hw, btdm->tra_tdma_on,
          btdm->tra_tdma_ant,
          btdm->tra_tdma_nav);
  rtl8723e_dm_bt_set_fw_tdma_ctrl(hw, 0, btdm->tdma_ant,
      btdm->tdma_nav,
      btdm->tdma_dac_swing);


  rtl8723e_dm_bt_set_fw_ignore_wlan_act(hw,
            btdm->ignore_wlan_act);
  rtl8723e_dm_bt_set_fw_3a(hw, btdm->ps_tdma_byte[0],
      btdm->ps_tdma_byte[1],
      btdm->ps_tdma_byte[2],
      btdm->ps_tdma_byte[3],
      btdm->ps_tdma_byte[4]);
 } else {

  rtl8723e_dm_bt_set_fw_bt_hid_info(hw, 0);
  rtl8723e_dm_bt_set_fw_2_ant_hid(hw, 0, 0);


  rtl8723e_dm_bt_set_fw_tra_tdma_ctrl(hw, btdm->tra_tdma_on,
          btdm->tra_tdma_ant,
          btdm->tra_tdma_nav);
  rtl8723e_dm_bt_set_fw_tdma_ctrl(hw, 0, btdm->tdma_ant,
      btdm->tdma_nav,
      btdm->tdma_dac_swing);


  rtl8723e_dm_bt_set_fw_ignore_wlan_act(hw,
      btdm->ignore_wlan_act);

  rtl8723e_dm_bt_set_fw_3a(hw, 0x0, 0x0, 0x0, 0x8, 0x0);
 }
 mdelay(30);
 rtl8723e_dm_bt_set_sw_full_time_dac_swing(hw, btdm->sw_dac_swing_on,
        btdm->sw_dac_swing_lvl);
 rtl8723e_dm_bt_set_fw_dec_bt_pwr(hw, btdm->dec_bt_pwr);
}
