
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct rtl_phy {scalar_t__ current_chan_bw; } ;
struct rtl_priv {struct rtl_phy phy; } ;
struct ieee80211_hw {int dummy; } ;
struct btdm_8723 {int rf_rx_lpf_shrink; int low_penalty_rate_adaptive; int reject_aggre_pkt; int val_0x6c0; int val_0x6c8; int val_0x6cc; int agc_table_en; int adc_back_off_on; int sw_dac_swing_on; int ps_tdma_on; int* ps_tdma_byte; int dec_bt_pwr; } ;
struct TYPE_2__ {scalar_t__ bt_inq_page_start_time; } ;


 scalar_t__ BT_RSSI_STATE_HIGH ;
 scalar_t__ BT_RSSI_STATE_STAY_HIGH ;
 scalar_t__ BT_TXRX_CNT_LEVEL_1 ;
 scalar_t__ BT_TXRX_CNT_LEVEL_2 ;
 scalar_t__ BT_TXRX_CNT_LEVEL_3 ;
 int COMP_BT_COEXIST ;
 int DBG_DMESG ;
 scalar_t__ HT_CHANNEL_WIDTH_20_40 ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,...) ;
 TYPE_1__ hal_coex_8723 ;
 scalar_t__ rtl8723e_dm_bt_bt_tx_rx_counter_level (struct ieee80211_hw*) ;
 int rtl8723e_dm_bt_btdm_structure_reload (struct ieee80211_hw*,struct btdm_8723*) ;
 scalar_t__ rtl8723e_dm_bt_check_coex_rssi_state (struct ieee80211_hw*,int,int,int ) ;
 scalar_t__ rtl8723e_dm_bt_check_coex_rssi_state1 (struct ieee80211_hw*,int,int,int ) ;
 scalar_t__ rtl8723e_dm_bt_is_coexist_state_changed (struct ieee80211_hw*) ;
 scalar_t__ rtl8723e_dm_bt_need_to_dec_bt_pwr (struct ieee80211_hw*) ;
 int rtl8723e_dm_bt_set_bt_dm (struct ieee80211_hw*,struct btdm_8723*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_write_byte (struct rtl_priv*,int,int) ;

__attribute__((used)) static void rtl8723e_dm_bt_2_ant_hid_sco_esco(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_phy *rtlphy = &(rtlpriv->phy);
 struct btdm_8723 btdm8723;
 u8 bt_rssi_state, bt_rssi_state1;
 u8 bt_tx_rx_cnt_lvl = 0;

 rtl8723e_dm_bt_btdm_structure_reload(hw, &btdm8723);

 btdm8723.rf_rx_lpf_shrink = 1;
 btdm8723.low_penalty_rate_adaptive = 1;
 btdm8723.reject_aggre_pkt = 0;

 bt_tx_rx_cnt_lvl = rtl8723e_dm_bt_bt_tx_rx_counter_level(hw);
 RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
   "[BTCoex], BT TxRx Counters = %d\n", bt_tx_rx_cnt_lvl);

 if (rtlphy->current_chan_bw == HT_CHANNEL_WIDTH_20_40) {
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_DMESG, "HT40\n");

  btdm8723.val_0x6c0 = 0x55555555;
  btdm8723.val_0x6c8 = 0xffff;
  btdm8723.val_0x6cc = 0x3;


  btdm8723.agc_table_en = 0;
  btdm8723.adc_back_off_on = 0;
  btdm8723.sw_dac_swing_on = 0;


  btdm8723.ps_tdma_on = 1;
  if (bt_tx_rx_cnt_lvl == BT_TXRX_CNT_LEVEL_2) {
   RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
     "[BTCoex], BT TxRx Counters >= 1400\n");
   btdm8723.ps_tdma_byte[0] = 0xa3;
   btdm8723.ps_tdma_byte[1] = 0x5;
   btdm8723.ps_tdma_byte[2] = 0x5;
   btdm8723.ps_tdma_byte[3] = 0x2;
   btdm8723.ps_tdma_byte[4] = 0x80;
  } else if (bt_tx_rx_cnt_lvl == BT_TXRX_CNT_LEVEL_1) {
   RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
     "[BTCoex], BT TxRx Counters >= 1200 && < 1400\n");
   btdm8723.ps_tdma_byte[0] = 0xa3;
   btdm8723.ps_tdma_byte[1] = 0xa;
   btdm8723.ps_tdma_byte[2] = 0xa;
   btdm8723.ps_tdma_byte[3] = 0x2;
   btdm8723.ps_tdma_byte[4] = 0x80;
  } else {
   RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
     "[BTCoex], BT TxRx Counters < 1200\n");
   btdm8723.ps_tdma_byte[0] = 0xa3;
   btdm8723.ps_tdma_byte[1] = 0xf;
   btdm8723.ps_tdma_byte[2] = 0xf;
   btdm8723.ps_tdma_byte[3] = 0x2;
   btdm8723.ps_tdma_byte[4] = 0x80;
  }
 } else {
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
    "HT20 or Legacy\n");
  bt_rssi_state =
    rtl8723e_dm_bt_check_coex_rssi_state(hw, 2, 47, 0);
  bt_rssi_state1 =
    rtl8723e_dm_bt_check_coex_rssi_state1(hw, 2, 27, 0);


  btdm8723.val_0x6c0 = 0x55555555;
  btdm8723.val_0x6c8 = 0xffff;
  btdm8723.val_0x6cc = 0x3;


  if ((bt_rssi_state == BT_RSSI_STATE_HIGH) ||
   (bt_rssi_state == BT_RSSI_STATE_STAY_HIGH)) {
   RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
     "Wifi rssi high\n");
   btdm8723.agc_table_en = 1;
   btdm8723.adc_back_off_on = 1;
   btdm8723.sw_dac_swing_on = 0;
  } else {
   RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
     "Wifi rssi low\n");
   btdm8723.agc_table_en = 0;
   btdm8723.adc_back_off_on = 0;
   btdm8723.sw_dac_swing_on = 0;
  }


  btdm8723.ps_tdma_on = 1;
  if ((bt_rssi_state1 == BT_RSSI_STATE_HIGH) ||
   (bt_rssi_state1 == BT_RSSI_STATE_STAY_HIGH)) {
   RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
     "Wifi rssi-1 high\n");


   rtl_write_byte(rtlpriv, 0x883, 0x40);
   if (bt_tx_rx_cnt_lvl == BT_TXRX_CNT_LEVEL_2) {
    RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
    "[BTCoex], BT TxRx Counters >= 1400\n");
    btdm8723.ps_tdma_byte[0] = 0xa3;
    btdm8723.ps_tdma_byte[1] = 0x5;
    btdm8723.ps_tdma_byte[2] = 0x5;
    btdm8723.ps_tdma_byte[3] = 0x83;
    btdm8723.ps_tdma_byte[4] = 0x80;
   } else if (bt_tx_rx_cnt_lvl == BT_TXRX_CNT_LEVEL_1) {
    RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
      "[BTCoex], BT TxRx Counters>= 1200 && < 1400\n");
    btdm8723.ps_tdma_byte[0] = 0xa3;
    btdm8723.ps_tdma_byte[1] = 0xa;
    btdm8723.ps_tdma_byte[2] = 0xa;
    btdm8723.ps_tdma_byte[3] = 0x83;
    btdm8723.ps_tdma_byte[4] = 0x80;
   } else {
    RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
      "[BTCoex], BT TxRx Counters < 1200\n");
    btdm8723.ps_tdma_byte[0] = 0xa3;
    btdm8723.ps_tdma_byte[1] = 0xf;
    btdm8723.ps_tdma_byte[2] = 0xf;
    btdm8723.ps_tdma_byte[3] = 0x83;
    btdm8723.ps_tdma_byte[4] = 0x80;
   }
  } else {
   RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
     "Wifi rssi-1 low\n");
   if (bt_tx_rx_cnt_lvl == BT_TXRX_CNT_LEVEL_2) {
    RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
      "[BTCoex], BT TxRx Counters >= 1400\n");
    btdm8723.ps_tdma_byte[0] = 0xa3;
    btdm8723.ps_tdma_byte[1] = 0x5;
    btdm8723.ps_tdma_byte[2] = 0x5;
    btdm8723.ps_tdma_byte[3] = 0x2;
    btdm8723.ps_tdma_byte[4] = 0x80;
   } else if (bt_tx_rx_cnt_lvl == BT_TXRX_CNT_LEVEL_1) {
    RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
      "[BTCoex], BT TxRx Counters >= 1200 && < 1400\n");
    btdm8723.ps_tdma_byte[0] = 0xa3;
    btdm8723.ps_tdma_byte[1] = 0xa;
    btdm8723.ps_tdma_byte[2] = 0xa;
    btdm8723.ps_tdma_byte[3] = 0x2;
    btdm8723.ps_tdma_byte[4] = 0x80;
   } else {
    RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
      "[BTCoex], BT TxRx Counters < 1200\n");
    btdm8723.ps_tdma_byte[0] = 0xa3;
    btdm8723.ps_tdma_byte[1] = 0xf;
    btdm8723.ps_tdma_byte[2] = 0xf;
    btdm8723.ps_tdma_byte[3] = 0x2;
    btdm8723.ps_tdma_byte[4] = 0x80;
   }
  }
 }

 if (rtl8723e_dm_bt_need_to_dec_bt_pwr(hw))
  btdm8723.dec_bt_pwr = 1;



 RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
   "[BTCoex], BT btInqPageStartTime = 0x%x, btTxRxCntLvl = %d\n",
   hal_coex_8723.bt_inq_page_start_time, bt_tx_rx_cnt_lvl);
 if ((hal_coex_8723.bt_inq_page_start_time) ||
     (BT_TXRX_CNT_LEVEL_3 == bt_tx_rx_cnt_lvl)) {
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
    "[BTCoex], Set BT inquiry / page scan 0x3a setting\n");
  btdm8723.ps_tdma_on = 1;
  btdm8723.ps_tdma_byte[0] = 0xa3;
  btdm8723.ps_tdma_byte[1] = 0x5;
  btdm8723.ps_tdma_byte[2] = 0x5;
  btdm8723.ps_tdma_byte[3] = 0x2;
  btdm8723.ps_tdma_byte[4] = 0x80;
 }

 if (rtl8723e_dm_bt_is_coexist_state_changed(hw))
  rtl8723e_dm_bt_set_bt_dm(hw, &btdm8723);

}
