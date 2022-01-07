
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtl_priv {int dummy; } ;
struct btc_coexist {int (* btc_get ) (struct btc_coexist*,int ,int*) ;int (* btc_set ) (struct btc_coexist*,int ,int*) ;struct rtl_priv* adapter; } ;
struct TYPE_2__ {scalar_t__ bt_abnormal_scan; } ;


 int BTC_GET_BL_WIFI_CONNECTED ;
 int BTC_GET_BL_WIFI_LINK ;
 int BTC_GET_BL_WIFI_ROAM ;
 int BTC_GET_BL_WIFI_SCAN ;
 int BTC_PS_WIFI_NATIVE ;
 int BTC_SET_ACT_DISABLE_LOW_POWER ;
 int COMP_BT_COEXIST ;
 int DBG_LOUD ;
 int FORCE_EXEC ;
 int NORMAL_EXEC ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 int btc8723b2ant_coex_table_with_type (struct btc_coexist*,int ,int) ;
 int btc8723b2ant_dec_bt_pwr (struct btc_coexist*,int ,int ) ;
 int btc8723b2ant_fw_dac_swing_lvl (struct btc_coexist*,int ,int) ;
 int btc8723b2ant_power_save_state (struct btc_coexist*,int ,int,int) ;
 int btc8723b2ant_ps_tdma (struct btc_coexist*,int ,int,int) ;
 int btc8723b2ant_sw_mechanism (struct btc_coexist*,int,int,int,int) ;
 TYPE_1__* coex_sta ;
 int stub1 (struct btc_coexist*,int ,int*) ;
 int stub2 (struct btc_coexist*,int ,int*) ;
 int stub3 (struct btc_coexist*,int ,int*) ;
 int stub4 (struct btc_coexist*,int ,int*) ;
 int stub5 (struct btc_coexist*,int ,int*) ;

__attribute__((used)) static void btc8723b2ant_action_bt_inquiry(struct btc_coexist *btcoexist)
{
 struct rtl_priv *rtlpriv = btcoexist->adapter;
 bool wifi_connected = 0;
 bool low_pwr_disable = 1;
 bool scan = 0, link = 0, roam = 0;

 btcoexist->btc_set(btcoexist, BTC_SET_ACT_DISABLE_LOW_POWER,
      &low_pwr_disable);
 btcoexist->btc_get(btcoexist, BTC_GET_BL_WIFI_CONNECTED,
      &wifi_connected);

 btcoexist->btc_get(btcoexist, BTC_GET_BL_WIFI_SCAN, &scan);
 btcoexist->btc_get(btcoexist, BTC_GET_BL_WIFI_LINK, &link);
 btcoexist->btc_get(btcoexist, BTC_GET_BL_WIFI_ROAM, &roam);

 btc8723b2ant_power_save_state(btcoexist, BTC_PS_WIFI_NATIVE, 0x0, 0x0);

 if (coex_sta->bt_abnormal_scan) {
  btc8723b2ant_ps_tdma(btcoexist, NORMAL_EXEC, 1, 23);
  btc8723b2ant_coex_table_with_type(btcoexist, NORMAL_EXEC, 3);
 } else if (scan || link || roam) {
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
    "[BTCoex], Wifi link process + BT Inq/Page!!\n");
  btc8723b2ant_coex_table_with_type(btcoexist, NORMAL_EXEC, 15);
  btc8723b2ant_ps_tdma(btcoexist, NORMAL_EXEC, 1, 22);
 } else if (wifi_connected) {
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
    "[BTCoex], Wifi connected + BT Inq/Page!!\n");
  btc8723b2ant_coex_table_with_type(btcoexist, NORMAL_EXEC, 15);
  btc8723b2ant_ps_tdma(btcoexist, NORMAL_EXEC, 1, 22);
 } else {
  btc8723b2ant_coex_table_with_type(btcoexist, NORMAL_EXEC, 0);
  btc8723b2ant_ps_tdma(btcoexist, NORMAL_EXEC, 0, 1);
 }
 btc8723b2ant_fw_dac_swing_lvl(btcoexist, FORCE_EXEC, 6);
 btc8723b2ant_dec_bt_pwr(btcoexist, NORMAL_EXEC, 0);

 btc8723b2ant_sw_mechanism(btcoexist, 0, 0, 0, 0);
}
