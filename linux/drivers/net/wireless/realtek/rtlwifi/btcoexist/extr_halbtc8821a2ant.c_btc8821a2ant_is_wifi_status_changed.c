
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct btc_coexist {int (* btc_get ) (struct btc_coexist*,int ,int*) ;} ;


 int BTC_GET_BL_HS_OPERATION ;
 int BTC_GET_BL_WIFI_4_WAY_PROGRESS ;
 int BTC_GET_BL_WIFI_BUSY ;
 int BTC_GET_BL_WIFI_CONNECTED ;
 scalar_t__ BTC_RSSI_STATE_HIGH ;
 scalar_t__ BTC_RSSI_STATE_LOW ;
 int BT_8821A_2ANT_WIFI_RSSI_COEXSWITCH_THRES ;
 scalar_t__ btc8821a2ant_wifi_rssi_state (struct btc_coexist*,int,int,int ,int ) ;
 int stub1 (struct btc_coexist*,int ,int*) ;
 int stub2 (struct btc_coexist*,int ,int*) ;
 int stub3 (struct btc_coexist*,int ,int*) ;
 int stub4 (struct btc_coexist*,int ,int*) ;

__attribute__((used)) static bool btc8821a2ant_is_wifi_status_changed(struct btc_coexist *btcoexist)
{
 static bool pre_wifi_busy = 1;
 static bool pre_under_4way = 1;
 static bool pre_bt_hs_on = 1;
 bool wifi_busy = 0, under_4way = 0, bt_hs_on = 0;
 bool wifi_connected = 0;
 u8 wifi_rssi_state = BTC_RSSI_STATE_HIGH;

 btcoexist->btc_get(btcoexist, BTC_GET_BL_WIFI_CONNECTED,
      &wifi_connected);
 btcoexist->btc_get(btcoexist, BTC_GET_BL_WIFI_BUSY, &wifi_busy);
 btcoexist->btc_get(btcoexist, BTC_GET_BL_HS_OPERATION, &bt_hs_on);
 btcoexist->btc_get(btcoexist, BTC_GET_BL_WIFI_4_WAY_PROGRESS,
      &under_4way);

 if (wifi_connected) {
  if (wifi_busy != pre_wifi_busy) {
   pre_wifi_busy = wifi_busy;
   return 1;
  }
  if (under_4way != pre_under_4way) {
   pre_under_4way = under_4way;
   return 1;
  }
  if (bt_hs_on != pre_bt_hs_on) {
   pre_bt_hs_on = bt_hs_on;
   return 1;
  }

  wifi_rssi_state = btc8821a2ant_wifi_rssi_state(btcoexist, 3, 2,
    BT_8821A_2ANT_WIFI_RSSI_COEXSWITCH_THRES, 0);

  if ((wifi_rssi_state == BTC_RSSI_STATE_HIGH) ||
      (wifi_rssi_state == BTC_RSSI_STATE_LOW))
   return 1;
 }

 return 0;
}
