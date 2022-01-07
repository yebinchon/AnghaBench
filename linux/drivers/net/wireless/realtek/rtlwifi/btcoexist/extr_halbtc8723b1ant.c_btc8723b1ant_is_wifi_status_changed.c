
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btc_coexist {int (* btc_get ) (struct btc_coexist*,int ,int*) ;} ;


 int BTC_GET_BL_HS_OPERATION ;
 int BTC_GET_BL_WIFI_4_WAY_PROGRESS ;
 int BTC_GET_BL_WIFI_BUSY ;
 int BTC_GET_BL_WIFI_CONNECTED ;
 int stub1 (struct btc_coexist*,int ,int*) ;
 int stub2 (struct btc_coexist*,int ,int*) ;
 int stub3 (struct btc_coexist*,int ,int*) ;
 int stub4 (struct btc_coexist*,int ,int*) ;

__attribute__((used)) static bool btc8723b1ant_is_wifi_status_changed(struct btc_coexist *btcoexist)
{
 static bool pre_wifi_busy;
 static bool pre_under_4way, pre_bt_hs_on;
 bool wifi_busy = 0, under_4way = 0, bt_hs_on = 0;
 bool wifi_connected = 0;

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
 }

 return 0;
}
