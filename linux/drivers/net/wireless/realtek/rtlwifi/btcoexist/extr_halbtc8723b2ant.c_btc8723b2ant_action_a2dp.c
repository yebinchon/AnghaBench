
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct btc_coexist {int (* btc_get ) (struct btc_coexist*,int ,scalar_t__*) ;int (* btc_set_rf_reg ) (struct btc_coexist*,int ,int,int,int) ;} ;
struct TYPE_2__ {int switch_thres_offset; } ;


 int BTC_GET_U1_AP_NUM ;
 int BTC_GET_U4_WIFI_BW ;
 int BTC_PS_LPS_ON ;
 int BTC_PS_WIFI_NATIVE ;
 int BTC_RF_A ;
 scalar_t__ BTC_RSSI_HIGH (int) ;
 int BTC_RSSI_STATE_HIGH ;
 int BTC_RSSI_STATE_STAY_HIGH ;
 scalar_t__ BTC_WIFI_BW_HT40 ;
 int BT_8723B_2ANT_BT_RSSI_COEXSWITCH_THRES ;
 int NORMAL_EXEC ;
 int btc8723b2ant_bt_rssi_state (struct btc_coexist*,int,int,int ) ;
 int btc8723b2ant_coex_table_with_type (struct btc_coexist*,int ,int) ;
 int btc8723b2ant_dec_bt_pwr (struct btc_coexist*,int ,int) ;
 int btc8723b2ant_fw_dac_swing_lvl (struct btc_coexist*,int ,int) ;
 int btc8723b2ant_limited_rx (struct btc_coexist*,int ,int,int,int) ;
 int btc8723b2ant_power_save_state (struct btc_coexist*,int ,int,int) ;
 int btc8723b2ant_ps_tdma (struct btc_coexist*,int ,int,int) ;
 int btc8723b2ant_sw_mechanism (struct btc_coexist*,int,int,int,int) ;
 int btc8723b2ant_tdma_duration_adjust (struct btc_coexist*,int,int,int) ;
 int btc8723b2ant_wifi_rssi_state (struct btc_coexist*,int,int,int,int ) ;
 TYPE_1__* coex_dm ;
 int stub1 (struct btc_coexist*,int ,int*) ;
 int stub2 (struct btc_coexist*,int ,int,int,int) ;
 int stub3 (struct btc_coexist*,int ,scalar_t__*) ;
 int stub4 (struct btc_coexist*,int ,int,int,int) ;
 int stub5 (struct btc_coexist*,int ,scalar_t__*) ;

__attribute__((used)) static void btc8723b2ant_action_a2dp(struct btc_coexist *btcoexist)
{
 u8 wifi_rssi_state, wifi_rssi_state1, bt_rssi_state;
 u32 wifi_bw;
 u8 ap_num = 0;
 u8 tmp = BT_8723B_2ANT_BT_RSSI_COEXSWITCH_THRES -
   coex_dm->switch_thres_offset;

 wifi_rssi_state = btc8723b2ant_wifi_rssi_state(btcoexist, 0, 2, 15, 0);
 wifi_rssi_state1 = btc8723b2ant_wifi_rssi_state(btcoexist, 1, 2, 40, 0);
 bt_rssi_state = btc8723b2ant_bt_rssi_state(btcoexist, 2, tmp, 0);

 btcoexist->btc_get(btcoexist, BTC_GET_U1_AP_NUM, &ap_num);



 if (ap_num >= 10 && BTC_RSSI_HIGH(wifi_rssi_state1)) {
  btcoexist->btc_set_rf_reg(btcoexist, BTC_RF_A, 0x1, 0xfffff,
       0x0);
  btc8723b2ant_fw_dac_swing_lvl(btcoexist, NORMAL_EXEC, 6);
  btc8723b2ant_dec_bt_pwr(btcoexist, NORMAL_EXEC, 0);
  btc8723b2ant_coex_table_with_type(btcoexist, NORMAL_EXEC, 0);
  btc8723b2ant_ps_tdma(btcoexist, NORMAL_EXEC, 0, 1);


  btcoexist->btc_get(btcoexist, BTC_GET_U4_WIFI_BW, &wifi_bw);
  if (BTC_WIFI_BW_HT40 == wifi_bw) {
   btc8723b2ant_sw_mechanism(btcoexist, 1, 0,
        0, 0);
  } else {
   btc8723b2ant_sw_mechanism(btcoexist, 0, 0,
        0, 0);
  }
  return;
 }

 btcoexist->btc_set_rf_reg(btcoexist, BTC_RF_A, 0x1, 0xfffff, 0x0);
 btc8723b2ant_limited_rx(btcoexist, NORMAL_EXEC, 0, 0, 0x8);

 btc8723b2ant_fw_dac_swing_lvl(btcoexist, NORMAL_EXEC, 6);

 if (BTC_RSSI_HIGH(bt_rssi_state))
  btc8723b2ant_dec_bt_pwr(btcoexist, NORMAL_EXEC, 2);
 else
  btc8723b2ant_dec_bt_pwr(btcoexist, NORMAL_EXEC, 0);

 if (BTC_RSSI_HIGH(wifi_rssi_state1) && BTC_RSSI_HIGH(bt_rssi_state)) {
  btc8723b2ant_coex_table_with_type(btcoexist, NORMAL_EXEC, 7);
  btc8723b2ant_power_save_state(btcoexist, BTC_PS_WIFI_NATIVE,
           0x0, 0x0);
 } else {
  btc8723b2ant_coex_table_with_type(btcoexist, NORMAL_EXEC, 13);
  btc8723b2ant_power_save_state(btcoexist, BTC_PS_LPS_ON, 0x50,
           0x4);
 }

 if ((bt_rssi_state == BTC_RSSI_STATE_HIGH) ||
     (bt_rssi_state == BTC_RSSI_STATE_STAY_HIGH))
  btc8723b2ant_tdma_duration_adjust(btcoexist, 0,
        0, 1);
 else
  btc8723b2ant_tdma_duration_adjust(btcoexist, 0, 1, 1);


 btcoexist->btc_get(btcoexist, BTC_GET_U4_WIFI_BW, &wifi_bw);
 if (BTC_WIFI_BW_HT40 == wifi_bw) {
  btc8723b2ant_sw_mechanism(btcoexist, 1, 0,
       0, 0);
 } else {
  btc8723b2ant_sw_mechanism(btcoexist, 0, 0,
       0, 0);
 }
}
