
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct btc_bt_link_info {scalar_t__ sco_only; } ;
struct btc_coexist {int (* btc_get ) (struct btc_coexist*,int ,scalar_t__*) ;int (* btc_set_rf_reg ) (struct btc_coexist*,int ,int,int,int) ;struct btc_bt_link_info bt_link_info; } ;


 int BTC_GET_U4_WIFI_BW ;
 int BTC_PS_WIFI_NATIVE ;
 int BTC_RF_A ;
 scalar_t__ BTC_RSSI_HIGH (scalar_t__) ;
 scalar_t__ BTC_RSSI_STATE_HIGH ;
 scalar_t__ BTC_RSSI_STATE_STAY_HIGH ;
 scalar_t__ BTC_WIFI_BW_HT40 ;
 scalar_t__ BTC_WIFI_BW_LEGACY ;
 int NORMAL_EXEC ;
 scalar_t__ btc8821a2ant_bt_rssi_state (struct btc_coexist*,int,int,int ) ;
 int btc8821a2ant_coex_table_with_type (struct btc_coexist*,int ,int) ;
 int btc8821a2ant_dec_bt_pwr (struct btc_coexist*,int ,int) ;
 int btc8821a2ant_fw_dac_swing_lvl (struct btc_coexist*,int ,int) ;
 int btc8821a2ant_limited_rx (struct btc_coexist*,int ,int,int,int) ;
 int btc8821a2ant_power_save_state (struct btc_coexist*,int ,int,int) ;
 int btc8821a2ant_ps_tdma (struct btc_coexist*,int ,int,int ) ;
 int btc8821a2ant_sw_mechanism1 (struct btc_coexist*,int,int,int,int) ;
 int btc8821a2ant_sw_mechanism2 (struct btc_coexist*,int,int,int,int) ;
 scalar_t__ btc8821a2ant_wifi_rssi_state (struct btc_coexist*,int ,int,int,int ) ;
 int stub1 (struct btc_coexist*,int ,int,int,int) ;
 int stub2 (struct btc_coexist*,int ,scalar_t__*) ;

__attribute__((used)) static void btc8821a2ant_action_sco(struct btc_coexist *btcoexist)
{
 struct btc_bt_link_info *bt_link_info = &btcoexist->bt_link_info;
 u8 wifi_rssi_state, bt_rssi_state;
 u32 wifi_bw;

 wifi_rssi_state = btc8821a2ant_wifi_rssi_state(btcoexist, 0, 2, 15, 0);
 bt_rssi_state = btc8821a2ant_bt_rssi_state(btcoexist, 2, 35, 0);

 btcoexist->btc_set_rf_reg(btcoexist, BTC_RF_A, 0x1, 0xfffff, 0x0);

 btc8821a2ant_limited_rx(btcoexist, NORMAL_EXEC, 0, 0, 0x8);
 btc8821a2ant_fw_dac_swing_lvl(btcoexist, NORMAL_EXEC, 4);

 if (BTC_RSSI_HIGH(bt_rssi_state))
  btc8821a2ant_dec_bt_pwr(btcoexist, NORMAL_EXEC, 1);
 else
  btc8821a2ant_dec_bt_pwr(btcoexist, NORMAL_EXEC, 0);

 btcoexist->btc_get(btcoexist, BTC_GET_U4_WIFI_BW, &wifi_bw);

 if (wifi_bw == BTC_WIFI_BW_LEGACY) {

  btc8821a2ant_coex_table_with_type(btcoexist, NORMAL_EXEC, 2);
 } else {

  if (wifi_bw == BTC_WIFI_BW_HT40) {
   btc8821a2ant_coex_table_with_type(btcoexist,
         NORMAL_EXEC, 8);
  } else {
   if (bt_link_info->sco_only)
    btc8821a2ant_coex_table_with_type(
     btcoexist, NORMAL_EXEC, 17);
   else
    btc8821a2ant_coex_table_with_type(
     btcoexist, NORMAL_EXEC, 12);
  }
 }

 btc8821a2ant_power_save_state(btcoexist, BTC_PS_WIFI_NATIVE, 0x0, 0x0);

 btc8821a2ant_ps_tdma(btcoexist, NORMAL_EXEC, 0, 0);


 if (wifi_bw == BTC_WIFI_BW_HT40) {
  if ((wifi_rssi_state == BTC_RSSI_STATE_HIGH) ||
      (wifi_rssi_state == BTC_RSSI_STATE_STAY_HIGH)) {
   btc8821a2ant_sw_mechanism1(btcoexist, 1, 1,
         0, 0);
   btc8821a2ant_sw_mechanism2(btcoexist, 1, 0,
         1, 0x18);
  } else {
   btc8821a2ant_sw_mechanism1(btcoexist, 1, 1,
         0, 0);
   btc8821a2ant_sw_mechanism2(btcoexist, 0, 0,
         1, 0x18);
  }
 } else {
  if ((wifi_rssi_state == BTC_RSSI_STATE_HIGH) ||
      (wifi_rssi_state == BTC_RSSI_STATE_STAY_HIGH)) {
   btc8821a2ant_sw_mechanism1(btcoexist, 0, 1,
         0, 0);
   btc8821a2ant_sw_mechanism2(btcoexist, 1, 0,
         1, 0x18);
  } else {
   btc8821a2ant_sw_mechanism1(btcoexist, 0, 1,
         0, 0);
   btc8821a2ant_sw_mechanism2(btcoexist, 0, 0,
         1, 0x18);
  }
 }
}
