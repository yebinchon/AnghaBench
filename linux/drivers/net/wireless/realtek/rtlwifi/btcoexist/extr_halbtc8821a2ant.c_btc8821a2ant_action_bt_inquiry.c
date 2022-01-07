
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtl_priv {int dummy; } ;
struct btc_coexist {int (* btc_get ) (struct btc_coexist*,int ,int*) ;int (* btc_set ) (struct btc_coexist*,int ,int*) ;struct rtl_priv* adapter; } ;


 int BTC_GET_BL_WIFI_CONNECTED ;
 int BTC_GET_BL_WIFI_LINK ;
 int BTC_GET_BL_WIFI_ROAM ;
 int BTC_GET_BL_WIFI_SCAN ;
 int BTC_PS_WIFI_NATIVE ;
 int BTC_SET_ACT_DISABLE_LOW_POWER ;
 int BT_8821A_2ANT_BT_RSSI_COEXSWITCH_THRES ;
 int BT_8821A_2ANT_WIFI_RSSI_COEXSWITCH_THRES ;
 int COMP_BT_COEXIST ;
 int DBG_LOUD ;
 int FORCE_EXEC ;
 int NORMAL_EXEC ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 int btc8821a2ant_bt_rssi_state (struct btc_coexist*,int,int ,int ) ;
 int btc8821a2ant_coex_table_with_type (struct btc_coexist*,int ,int) ;
 int btc8821a2ant_dec_bt_pwr (struct btc_coexist*,int ,int ) ;
 int btc8821a2ant_fw_dac_swing_lvl (struct btc_coexist*,int ,int) ;
 int btc8821a2ant_power_save_state (struct btc_coexist*,int ,int,int) ;
 int btc8821a2ant_ps_tdma (struct btc_coexist*,int ,int,int) ;
 int btc8821a2ant_sw_mechanism1 (struct btc_coexist*,int,int,int,int) ;
 int btc8821a2ant_sw_mechanism2 (struct btc_coexist*,int,int,int,int) ;
 int btc8821a2ant_wifi_rssi_state (struct btc_coexist*,int,int,int,int ) ;
 int stub1 (struct btc_coexist*,int ,int*) ;
 int stub2 (struct btc_coexist*,int ,int*) ;
 int stub3 (struct btc_coexist*,int ,int*) ;
 int stub4 (struct btc_coexist*,int ,int*) ;
 int stub5 (struct btc_coexist*,int ,int*) ;

__attribute__((used)) static void btc8821a2ant_action_bt_inquiry(struct btc_coexist *btcoexist)
{
 struct rtl_priv *rtlpriv = btcoexist->adapter;
 u8 wifi_rssi_state, wifi_rssi_state1, bt_rssi_state;
 bool wifi_connected = 0;
 bool low_pwr_disable = 1;
 bool scan = 0, link = 0, roam = 0;

 wifi_rssi_state =
  btc8821a2ant_wifi_rssi_state(btcoexist, 0, 2, 15, 0);
 wifi_rssi_state1 = btc8821a2ant_wifi_rssi_state(btcoexist, 1, 2,
    BT_8821A_2ANT_WIFI_RSSI_COEXSWITCH_THRES, 0);
 bt_rssi_state = btc8821a2ant_bt_rssi_state(btcoexist,
  2, BT_8821A_2ANT_BT_RSSI_COEXSWITCH_THRES, 0);

 btcoexist->btc_set(btcoexist, BTC_SET_ACT_DISABLE_LOW_POWER,
      &low_pwr_disable);
 btcoexist->btc_get(btcoexist, BTC_GET_BL_WIFI_CONNECTED,
      &wifi_connected);

 btcoexist->btc_get(btcoexist, BTC_GET_BL_WIFI_SCAN, &scan);
 btcoexist->btc_get(btcoexist, BTC_GET_BL_WIFI_LINK, &link);
 btcoexist->btc_get(btcoexist, BTC_GET_BL_WIFI_ROAM, &roam);

 btc8821a2ant_power_save_state(btcoexist, BTC_PS_WIFI_NATIVE, 0x0, 0x0);

 if (scan || link || roam) {
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
    "[BTCoex], Wifi link process + BT Inq/Page!!\n");
  btc8821a2ant_coex_table_with_type(btcoexist, NORMAL_EXEC, 15);
  btc8821a2ant_ps_tdma(btcoexist, NORMAL_EXEC, 1, 22);
 } else if (wifi_connected) {
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
    "[BTCoex], Wifi connected + BT Inq/Page!!\n");
  btc8821a2ant_coex_table_with_type(btcoexist, NORMAL_EXEC, 15);
  btc8821a2ant_ps_tdma(btcoexist, NORMAL_EXEC, 1, 22);
 } else {
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
    "[BTCoex], Wifi no-link + BT Inq/Page!!\n");
  btc8821a2ant_coex_table_with_type(btcoexist, NORMAL_EXEC, 0);
  btc8821a2ant_ps_tdma(btcoexist, NORMAL_EXEC, 0, 1);
 }

 btc8821a2ant_fw_dac_swing_lvl(btcoexist, FORCE_EXEC, 6);
 btc8821a2ant_dec_bt_pwr(btcoexist, NORMAL_EXEC, 0);

 btc8821a2ant_sw_mechanism1(btcoexist, 0, 0, 0, 0);
 btc8821a2ant_sw_mechanism2(btcoexist, 0, 0, 0, 0x18);
}
