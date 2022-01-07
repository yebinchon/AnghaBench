
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct btc_coexist {int (* btc_write_4byte ) (struct btc_coexist*,int,int) ;int (* btc_write_2byte ) (struct btc_coexist*,int,int) ;int (* btc_write_1byte ) (struct btc_coexist*,int,int) ;int (* btc_get ) (struct btc_coexist*,int ,scalar_t__*) ;int (* btc_set_rf_reg ) (struct btc_coexist*,int ,int,int,int) ;} ;
struct TYPE_2__ {int switch_thres_offset; } ;


 int BTC_GET_U4_WIFI_BW ;
 int BTC_PS_LPS_ON ;
 int BTC_PS_WIFI_NATIVE ;
 int BTC_RF_A ;
 scalar_t__ BTC_RSSI_HIGH (int) ;
 scalar_t__ BTC_RSSI_MEDIUM (int) ;
 scalar_t__ BTC_WIFI_BW_HT40 ;
 scalar_t__ BTC_WIFI_BW_LEGACY ;
 int BT_8723B_2ANT_BT_RSSI_COEXSWITCH_THRES ;
 int BT_8723B_2ANT_WIFI_RSSI_COEXSWITCH_THRES ;
 int NORMAL_EXEC ;
 int btc8723b2ant_bt_rssi_state (struct btc_coexist*,int,int,int) ;
 int btc8723b2ant_coex_table_with_type (struct btc_coexist*,int ,int) ;
 int btc8723b2ant_dec_bt_pwr (struct btc_coexist*,int ,int) ;
 int btc8723b2ant_fw_dac_swing_lvl (struct btc_coexist*,int ,int) ;
 int btc8723b2ant_limited_rx (struct btc_coexist*,int ,int,int,int) ;
 int btc8723b2ant_power_save_state (struct btc_coexist*,int ,int,int) ;
 int btc8723b2ant_sw_mechanism (struct btc_coexist*,int,int,int,int) ;
 int btc8723b2ant_tdma_duration_adjust (struct btc_coexist*,int,int,int) ;
 int btc8723b2ant_wifi_rssi_state (struct btc_coexist*,int,int,int,int ) ;
 TYPE_1__* coex_dm ;
 int stub1 (struct btc_coexist*,int ,int,int,int) ;
 int stub2 (struct btc_coexist*,int ,scalar_t__*) ;
 int stub3 (struct btc_coexist*,int,int) ;
 int stub4 (struct btc_coexist*,int,int) ;
 int stub5 (struct btc_coexist*,int,int) ;
 int stub6 (struct btc_coexist*,int,int) ;

__attribute__((used)) static void btc8723b2ant_action_hid_a2dp(struct btc_coexist *btcoexist)
{
 u8 wifi_rssi_state, wifi_rssi_state1, bt_rssi_state;
 u32 wifi_bw;
 u8 ap_num = 0;
 u8 tmp = BT_8723B_2ANT_WIFI_RSSI_COEXSWITCH_THRES -
   coex_dm->switch_thres_offset;

 wifi_rssi_state = btc8723b2ant_wifi_rssi_state(btcoexist, 0, 2, 15, 0);
 wifi_rssi_state1 = btc8723b2ant_wifi_rssi_state(btcoexist, 1, 2,
       tmp, 0);
 tmp = BT_8723B_2ANT_BT_RSSI_COEXSWITCH_THRES -
    coex_dm->switch_thres_offset;
 bt_rssi_state = btc8723b2ant_bt_rssi_state(btcoexist, 3, tmp, 37);

 btcoexist->btc_set_rf_reg(btcoexist, BTC_RF_A, 0x1, 0xfffff, 0x0);

 btc8723b2ant_limited_rx(btcoexist, NORMAL_EXEC, 0, 1, 0x5);
 btc8723b2ant_fw_dac_swing_lvl(btcoexist, NORMAL_EXEC, 6);

 btcoexist->btc_get(btcoexist, BTC_GET_U4_WIFI_BW, &wifi_bw);

 if (wifi_bw == BTC_WIFI_BW_LEGACY) {
  if (BTC_RSSI_HIGH(bt_rssi_state))
   btc8723b2ant_dec_bt_pwr(btcoexist, NORMAL_EXEC, 2);
  else if (BTC_RSSI_MEDIUM(bt_rssi_state))
   btc8723b2ant_dec_bt_pwr(btcoexist, NORMAL_EXEC, 2);
  else
   btc8723b2ant_dec_bt_pwr(btcoexist, NORMAL_EXEC, 0);
 } else {

  if (BTC_RSSI_HIGH(bt_rssi_state)) {

   if (ap_num < 10)
    btc8723b2ant_dec_bt_pwr(btcoexist,
       NORMAL_EXEC, 4);
   else
    btc8723b2ant_dec_bt_pwr(btcoexist,
       NORMAL_EXEC, 2);
  } else if (BTC_RSSI_MEDIUM(bt_rssi_state)) {
   btc8723b2ant_dec_bt_pwr(btcoexist, NORMAL_EXEC, 2);
  } else {
   btc8723b2ant_dec_bt_pwr(btcoexist, NORMAL_EXEC, 0);
  }
 }

 if (BTC_RSSI_HIGH(wifi_rssi_state1) && BTC_RSSI_HIGH(bt_rssi_state)) {
  btc8723b2ant_coex_table_with_type(btcoexist, NORMAL_EXEC, 7);
  btc8723b2ant_power_save_state(btcoexist, BTC_PS_WIFI_NATIVE,
           0x0, 0x0);
 } else {
  btc8723b2ant_coex_table_with_type(btcoexist, NORMAL_EXEC, 14);
  btc8723b2ant_power_save_state(btcoexist, BTC_PS_LPS_ON, 0x50,
           0x4);
 }

 if (BTC_RSSI_HIGH(bt_rssi_state)) {
  if (ap_num < 10)
   btc8723b2ant_tdma_duration_adjust(btcoexist, 1,
         0, 1);
  else
   btc8723b2ant_tdma_duration_adjust(btcoexist, 1,
         0, 3);
 } else {
  btc8723b2ant_fw_dac_swing_lvl(btcoexist, NORMAL_EXEC, 18);
  btcoexist->btc_write_1byte(btcoexist, 0x456, 0x38);
  btcoexist->btc_write_2byte(btcoexist, 0x42a, 0x0808);
  btcoexist->btc_write_4byte(btcoexist, 0x430, 0x0);
  btcoexist->btc_write_4byte(btcoexist, 0x434, 0x01010000);

  if (ap_num < 10)
   btc8723b2ant_tdma_duration_adjust(btcoexist, 1,
         1, 1);
  else
   btc8723b2ant_tdma_duration_adjust(btcoexist, 1,
         1, 3);
 }


 if (BTC_WIFI_BW_HT40 == wifi_bw) {
  btc8723b2ant_sw_mechanism(btcoexist, 1, 1,
       0, 0);
 } else {
  btc8723b2ant_sw_mechanism(btcoexist, 0, 1,
       0, 0);
 }
}
