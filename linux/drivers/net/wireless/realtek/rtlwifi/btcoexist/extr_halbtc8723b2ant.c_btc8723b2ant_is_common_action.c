
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtl_priv {int dummy; } ;
struct btc_coexist {int (* btc_set ) (struct btc_coexist*,int ,int*) ;int (* btc_set_rf_reg ) (struct btc_coexist*,int ,int,int,int) ;int (* btc_get ) (struct btc_coexist*,int ,int*) ;struct rtl_priv* adapter; } ;
struct TYPE_2__ {scalar_t__ bt_status; } ;


 int BTC_GET_BL_HS_OPERATION ;
 int BTC_GET_BL_WIFI_BUSY ;
 int BTC_GET_BL_WIFI_CONNECTED ;
 int BTC_RF_A ;
 int BTC_SET_ACT_DISABLE_LOW_POWER ;
 scalar_t__ BT_8723B_2ANT_BT_STATUS_CONNECTED_IDLE ;
 scalar_t__ BT_8723B_2ANT_BT_STATUS_NON_CONNECTED_IDLE ;
 int COMP_BT_COEXIST ;
 int DBG_LOUD ;
 int NORMAL_EXEC ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 int btc8723b2ant_action_wifi_idle_process (struct btc_coexist*) ;
 int btc8723b2ant_coex_table_with_type (struct btc_coexist*,int ,int ) ;
 int btc8723b2ant_dec_bt_pwr (struct btc_coexist*,int ,int ) ;
 int btc8723b2ant_fw_dac_swing_lvl (struct btc_coexist*,int ,int) ;
 int btc8723b2ant_limited_rx (struct btc_coexist*,int ,int,int,int) ;
 int btc8723b2ant_ps_tdma (struct btc_coexist*,int ,int,int) ;
 int btc8723b2ant_sw_mechanism (struct btc_coexist*,int,int,int,int) ;
 TYPE_1__* coex_dm ;
 int stub1 (struct btc_coexist*,int ,int*) ;
 int stub10 (struct btc_coexist*,int ,int*) ;
 int stub2 (struct btc_coexist*,int ,int*) ;
 int stub3 (struct btc_coexist*,int ,int*) ;
 int stub4 (struct btc_coexist*,int ,int*) ;
 int stub5 (struct btc_coexist*,int ,int,int,int) ;
 int stub6 (struct btc_coexist*,int ,int*) ;
 int stub7 (struct btc_coexist*,int ,int,int,int) ;
 int stub8 (struct btc_coexist*,int ,int*) ;
 int stub9 (struct btc_coexist*,int ,int,int,int) ;

__attribute__((used)) static bool btc8723b2ant_is_common_action(struct btc_coexist *btcoexist)
{
 struct rtl_priv *rtlpriv = btcoexist->adapter;
 bool common = 0, wifi_connected = 0;
 bool wifi_busy = 0;
 bool bt_hs_on = 0, low_pwr_disable = 0;

 btcoexist->btc_get(btcoexist, BTC_GET_BL_HS_OPERATION, &bt_hs_on);
 btcoexist->btc_get(btcoexist, BTC_GET_BL_WIFI_CONNECTED,
      &wifi_connected);
 btcoexist->btc_get(btcoexist, BTC_GET_BL_WIFI_BUSY, &wifi_busy);

 if (!wifi_connected) {
  low_pwr_disable = 0;
  btcoexist->btc_set(btcoexist, BTC_SET_ACT_DISABLE_LOW_POWER,
       &low_pwr_disable);
  btc8723b2ant_limited_rx(btcoexist, NORMAL_EXEC,
     0, 0, 0x8);

  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
    "[BTCoex], Wifi non-connected idle!!\n");

  btcoexist->btc_set_rf_reg(btcoexist, BTC_RF_A, 0x1, 0xfffff,
       0x0);
  btc8723b2ant_coex_table_with_type(btcoexist, NORMAL_EXEC, 0);
  btc8723b2ant_ps_tdma(btcoexist, NORMAL_EXEC, 0, 1);
  btc8723b2ant_fw_dac_swing_lvl(btcoexist, NORMAL_EXEC, 6);
  btc8723b2ant_dec_bt_pwr(btcoexist, NORMAL_EXEC, 0);

  btc8723b2ant_sw_mechanism(btcoexist, 0, 0, 0,
       0);

  common = 1;
 } else {
  if (BT_8723B_2ANT_BT_STATUS_NON_CONNECTED_IDLE ==
      coex_dm->bt_status) {
   low_pwr_disable = 0;
   btcoexist->btc_set(btcoexist,
        BTC_SET_ACT_DISABLE_LOW_POWER,
        &low_pwr_disable);
   btc8723b2ant_limited_rx(btcoexist, NORMAL_EXEC,
      0, 0, 0x8);

   RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
     "[BTCoex], Wifi connected + BT non connected-idle!!\n");

   btcoexist->btc_set_rf_reg(btcoexist, BTC_RF_A, 0x1,
        0xfffff, 0x0);
   btc8723b2ant_coex_table_with_type(btcoexist,
         NORMAL_EXEC, 0);
   btc8723b2ant_ps_tdma(btcoexist, NORMAL_EXEC, 0, 1);
   btc8723b2ant_fw_dac_swing_lvl(btcoexist, NORMAL_EXEC,
            0xb);
   btc8723b2ant_dec_bt_pwr(btcoexist, NORMAL_EXEC, 0);

   btc8723b2ant_sw_mechanism(btcoexist, 0, 0,
        0, 0);

   common = 1;
  } else if (BT_8723B_2ANT_BT_STATUS_CONNECTED_IDLE ==
      coex_dm->bt_status) {
   low_pwr_disable = 1;
   btcoexist->btc_set(btcoexist,
        BTC_SET_ACT_DISABLE_LOW_POWER,
        &low_pwr_disable);

   if (bt_hs_on)
    return 0;
   RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
     "[BTCoex], Wifi connected + BT connected-idle!!\n");
   btc8723b2ant_limited_rx(btcoexist, NORMAL_EXEC,
      0, 0, 0x8);

   btcoexist->btc_set_rf_reg(btcoexist, BTC_RF_A, 0x1,
        0xfffff, 0x0);
   btc8723b2ant_coex_table_with_type(btcoexist,
         NORMAL_EXEC, 0);
   btc8723b2ant_ps_tdma(btcoexist, NORMAL_EXEC, 0, 1);
   btc8723b2ant_fw_dac_swing_lvl(btcoexist, NORMAL_EXEC,
            0xb);
   btc8723b2ant_dec_bt_pwr(btcoexist, NORMAL_EXEC, 0);

   btc8723b2ant_sw_mechanism(btcoexist, 1, 0,
        0, 0);

   common = 1;
  } else {
   low_pwr_disable = 1;
   btcoexist->btc_set(btcoexist,
        BTC_SET_ACT_DISABLE_LOW_POWER,
        &low_pwr_disable);

   if (wifi_busy) {
    RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
      "[BTCoex], Wifi Connected-Busy + BT Busy!!\n");
    common = 0;
   } else {
    RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
      "[BTCoex], Wifi Connected-Idle + BT Busy!!\n");

    common =
        btc8723b2ant_action_wifi_idle_process(
      btcoexist);
   }
  }
 }

 return common;
}
