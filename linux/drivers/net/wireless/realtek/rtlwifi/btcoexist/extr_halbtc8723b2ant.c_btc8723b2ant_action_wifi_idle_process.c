
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct rtl_priv {int dummy; } ;
struct btc_coexist {int (* btc_get ) (struct btc_coexist*,int ,int*) ;struct rtl_priv* adapter; } ;
struct TYPE_4__ {int switch_thres_offset; } ;
struct TYPE_3__ {scalar_t__ a2dp_exist; scalar_t__ hid_exist; } ;


 int BTC_GET_U1_AP_NUM ;
 int BTC_PS_WIFI_NATIVE ;
 scalar_t__ BTC_RSSI_HIGH (int) ;
 int BT_8723B_2ANT_BT_RSSI_COEXSWITCH_THRES ;
 int BT_8723B_2ANT_WIFI_RSSI_COEXSWITCH_THRES ;
 int COMP_BT_COEXIST ;
 int DBG_LOUD ;
 int NORMAL_EXEC ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 int btc8723b2ant_bt_rssi_state (struct btc_coexist*,int,int,int ) ;
 int btc8723b2ant_coex_table_with_type (struct btc_coexist*,int ,int ) ;
 int btc8723b2ant_dac_swing (struct btc_coexist*,int ,int,int) ;
 int btc8723b2ant_dec_bt_pwr (struct btc_coexist*,int ,int ) ;
 int btc8723b2ant_power_save_state (struct btc_coexist*,int ,int,int) ;
 int btc8723b2ant_ps_tdma (struct btc_coexist*,int ,int,int) ;
 int btc8723b2ant_sw_mechanism (struct btc_coexist*,int,int,int,int) ;
 int btc8723b2ant_wifi_rssi_state (struct btc_coexist*,int,int,int,int ) ;
 TYPE_2__* coex_dm ;
 TYPE_1__* coex_sta ;
 int stub1 (struct btc_coexist*,int ,int*) ;

__attribute__((used)) static bool btc8723b2ant_action_wifi_idle_process(struct btc_coexist *btcoexist)
{
 struct rtl_priv *rtlpriv = btcoexist->adapter;
 u8 wifi_rssi_state, wifi_rssi_state1, bt_rssi_state;
 u8 ap_num = 0;
 u8 tmp = BT_8723B_2ANT_WIFI_RSSI_COEXSWITCH_THRES -
   coex_dm->switch_thres_offset - coex_dm->switch_thres_offset;

 wifi_rssi_state = btc8723b2ant_wifi_rssi_state(btcoexist, 0, 2, 15, 0);
 wifi_rssi_state1 = btc8723b2ant_wifi_rssi_state(btcoexist, 1, 2,
       tmp, 0);
 tmp = BT_8723B_2ANT_BT_RSSI_COEXSWITCH_THRES -
       coex_dm->switch_thres_offset - coex_dm->switch_thres_offset;
 bt_rssi_state = btc8723b2ant_bt_rssi_state(btcoexist, 2, tmp, 0);

 btcoexist->btc_get(btcoexist, BTC_GET_U1_AP_NUM, &ap_num);


 if (BTC_RSSI_HIGH(wifi_rssi_state1) && (coex_sta->hid_exist) &&
     (coex_sta->a2dp_exist)) {
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
    "[BTCoex], Wifi  idle process for BT HID+A2DP exist!!\n");

  btc8723b2ant_dac_swing(btcoexist, NORMAL_EXEC, 1, 0x6);
  btc8723b2ant_dec_bt_pwr(btcoexist, NORMAL_EXEC, 0);


  btc8723b2ant_sw_mechanism(btcoexist, 0, 0, 0,
       0);
  btc8723b2ant_coex_table_with_type(btcoexist, NORMAL_EXEC, 0);
  btc8723b2ant_power_save_state(btcoexist, BTC_PS_WIFI_NATIVE,
           0x0, 0x0);
  btc8723b2ant_ps_tdma(btcoexist, NORMAL_EXEC, 0, 1);

  return 1;
 }

 btc8723b2ant_dac_swing(btcoexist, NORMAL_EXEC, 1, 0x18);
 return 0;
}
