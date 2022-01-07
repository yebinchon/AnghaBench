
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtl_priv {int dummy; } ;
struct btc_bt_link_info {scalar_t__ hid_exist; scalar_t__ sco_exist; } ;
struct btc_coexist {int (* btc_set ) (struct btc_coexist*,int ,int*) ;int (* btc_get ) (struct btc_coexist*,int ,int*) ;struct btc_bt_link_info bt_link_info; struct rtl_priv* adapter; } ;
struct TYPE_2__ {scalar_t__ bt_status; } ;


 int BTC_GET_BL_HS_OPERATION ;
 int BTC_GET_BL_WIFI_BUSY ;
 int BTC_GET_BL_WIFI_CONNECTED ;
 int BTC_SET_ACT_DISABLE_LOW_POWER ;
 scalar_t__ BT_8192E_2ANT_BT_STATUS_CONNECTED_IDLE ;
 scalar_t__ BT_8192E_2ANT_BT_STATUS_NON_CONNECTED_IDLE ;
 int COMP_BT_COEXIST ;
 int DBG_LOUD ;
 int NORMAL_EXEC ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 int btc8192e2ant_coex_table_with_type (struct btc_coexist*,int ,int) ;
 int btc8192e2ant_dec_bt_pwr (struct btc_coexist*,int ,int ) ;
 int btc8192e2ant_fw_dac_swing_lvl (struct btc_coexist*,int ,int) ;
 int btc8192e2ant_limited_tx (struct btc_coexist*,int ,int,int ,int ,int ) ;
 int btc8192e2ant_ps_tdma (struct btc_coexist*,int ,int,int) ;
 int btc8192e2ant_sw_mechanism1 (struct btc_coexist*,int,int,int,int) ;
 int btc8192e2ant_sw_mechanism2 (struct btc_coexist*,int,int,int,int) ;
 int btc8192e2ant_switch_ss_type (struct btc_coexist*,int ,int) ;
 TYPE_1__* coex_dm ;
 int stub1 (struct btc_coexist*,int ,int*) ;
 int stub2 (struct btc_coexist*,int ,int*) ;
 int stub3 (struct btc_coexist*,int ,int*) ;
 int stub4 (struct btc_coexist*,int ,int*) ;
 int stub5 (struct btc_coexist*,int ,int*) ;
 int stub6 (struct btc_coexist*,int ,int*) ;
 int stub7 (struct btc_coexist*,int ,int*) ;

__attribute__((used)) static bool btc8192e2ant_is_common_action(struct btc_coexist *btcoexist)
{
 struct rtl_priv *rtlpriv = btcoexist->adapter;
 struct btc_bt_link_info *bt_link_info = &btcoexist->bt_link_info;
 bool common = 0, wifi_connected = 0, wifi_busy = 0;
 bool bt_hs_on = 0, low_pwr_disable = 0;

 btcoexist->btc_get(btcoexist, BTC_GET_BL_HS_OPERATION, &bt_hs_on);
 btcoexist->btc_get(btcoexist, BTC_GET_BL_WIFI_CONNECTED,
      &wifi_connected);
 btcoexist->btc_get(btcoexist, BTC_GET_BL_WIFI_BUSY, &wifi_busy);

 if (bt_link_info->sco_exist || bt_link_info->hid_exist)
  btc8192e2ant_limited_tx(btcoexist, NORMAL_EXEC, 1, 0, 0, 0);
 else
  btc8192e2ant_limited_tx(btcoexist, NORMAL_EXEC, 0, 0, 0, 0);

 if (!wifi_connected) {
  low_pwr_disable = 0;
  btcoexist->btc_set(btcoexist, BTC_SET_ACT_DISABLE_LOW_POWER,
       &low_pwr_disable);

  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
    "[BTCoex], Wifi non-connected idle!!\n");

  if ((BT_8192E_2ANT_BT_STATUS_NON_CONNECTED_IDLE ==
       coex_dm->bt_status) ||
      (BT_8192E_2ANT_BT_STATUS_CONNECTED_IDLE ==
       coex_dm->bt_status)) {
   btc8192e2ant_switch_ss_type(btcoexist, NORMAL_EXEC, 2);
   btc8192e2ant_coex_table_with_type(btcoexist,
         NORMAL_EXEC, 1);
   btc8192e2ant_ps_tdma(btcoexist, NORMAL_EXEC, 0, 0);
  } else {
   btc8192e2ant_switch_ss_type(btcoexist, NORMAL_EXEC, 1);
   btc8192e2ant_coex_table_with_type(btcoexist,
         NORMAL_EXEC, 0);
   btc8192e2ant_ps_tdma(btcoexist, NORMAL_EXEC, 0, 1);
  }

  btc8192e2ant_fw_dac_swing_lvl(btcoexist, NORMAL_EXEC, 6);
  btc8192e2ant_dec_bt_pwr(btcoexist, NORMAL_EXEC, 0);

  btc8192e2ant_sw_mechanism1(btcoexist, 0, 0, 0,
        0);
  btc8192e2ant_sw_mechanism2(btcoexist, 0, 0, 0,
        0x18);

  common = 1;
 } else {
  if (BT_8192E_2ANT_BT_STATUS_NON_CONNECTED_IDLE ==
      coex_dm->bt_status) {
   low_pwr_disable = 0;
   btcoexist->btc_set(btcoexist,
        BTC_SET_ACT_DISABLE_LOW_POWER,
        &low_pwr_disable);

   RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
     "Wifi connected + BT non connected-idle!!\n");

   btc8192e2ant_switch_ss_type(btcoexist, NORMAL_EXEC, 2);
   btc8192e2ant_coex_table_with_type(btcoexist,
         NORMAL_EXEC, 1);
   btc8192e2ant_ps_tdma(btcoexist, NORMAL_EXEC, 0, 0);
   btc8192e2ant_fw_dac_swing_lvl(btcoexist,
            NORMAL_EXEC, 6);
   btc8192e2ant_dec_bt_pwr(btcoexist, NORMAL_EXEC, 0);

   btc8192e2ant_sw_mechanism1(btcoexist, 0, 0,
         0, 0);
   btc8192e2ant_sw_mechanism2(btcoexist, 0, 0,
         0, 0x18);

   common = 1;
  } else if (BT_8192E_2ANT_BT_STATUS_CONNECTED_IDLE ==
      coex_dm->bt_status) {
   low_pwr_disable = 1;
   btcoexist->btc_set(btcoexist,
        BTC_SET_ACT_DISABLE_LOW_POWER,
        &low_pwr_disable);

   if (bt_hs_on)
    return 0;
   RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
     "Wifi connected + BT connected-idle!!\n");

   btc8192e2ant_switch_ss_type(btcoexist,
          NORMAL_EXEC, 2);
   btc8192e2ant_coex_table_with_type(btcoexist,
         NORMAL_EXEC, 1);
   btc8192e2ant_ps_tdma(btcoexist, NORMAL_EXEC,
          0, 0);
   btc8192e2ant_fw_dac_swing_lvl(btcoexist,
            NORMAL_EXEC, 6);
   btc8192e2ant_dec_bt_pwr(btcoexist, NORMAL_EXEC, 0);

   btc8192e2ant_sw_mechanism1(btcoexist, 1, 0,
         0, 0);
   btc8192e2ant_sw_mechanism2(btcoexist, 0, 0,
         0, 0x18);

   common = 1;
  } else {
   low_pwr_disable = 1;
   btcoexist->btc_set(btcoexist,
        BTC_SET_ACT_DISABLE_LOW_POWER,
        &low_pwr_disable);

   if (wifi_busy) {
    RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
      "Wifi Connected-Busy + BT Busy!!\n");
    common = 0;
   } else {
    RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
      "Wifi Connected-Idle + BT Busy!!\n");

    btc8192e2ant_switch_ss_type(btcoexist,
           NORMAL_EXEC, 1);
    btc8192e2ant_coex_table_with_type(btcoexist,
          NORMAL_EXEC,
          2);
    btc8192e2ant_ps_tdma(btcoexist, NORMAL_EXEC,
           1, 21);
    btc8192e2ant_fw_dac_swing_lvl(btcoexist,
             NORMAL_EXEC, 6);
    btc8192e2ant_dec_bt_pwr(btcoexist,
       NORMAL_EXEC, 0);
    btc8192e2ant_sw_mechanism1(btcoexist, 0,
          0, 0, 0);
    btc8192e2ant_sw_mechanism2(btcoexist, 0,
          0, 0, 0x18);
    common = 1;
   }
  }
 }
 return common;
}
