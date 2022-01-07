
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct rtl_priv {int dummy; } ;
struct btc_coexist {int (* btc_fill_h2c ) (struct btc_coexist*,int,int,scalar_t__*) ;int (* btc_get ) (struct btc_coexist*,int ,scalar_t__*) ;scalar_t__ stop_coex_dm; scalar_t__ manual_control; struct rtl_priv* adapter; } ;
struct TYPE_4__ {scalar_t__* wifi_chnl_info; scalar_t__ arp_cnt; } ;
struct TYPE_3__ {scalar_t__ bt_disabled; } ;


 int BTC_GET_BL_WIFI_UNDER_5G ;
 int BTC_GET_U1_WIFI_CENTRAL_CHNL ;
 int BTC_GET_U4_WIFI_BW ;
 scalar_t__ BTC_MEDIA_CONNECT ;
 scalar_t__ BTC_WIFI_BW_HT40 ;
 int COMP_BT_COEXIST ;
 int DBG_LOUD ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,...) ;
 int btc8821a1ant_coex_under_5g (struct btc_coexist*) ;
 TYPE_2__* coex_dm ;
 TYPE_1__* coex_sta ;
 int stub1 (struct btc_coexist*,int ,int*) ;
 int stub2 (struct btc_coexist*,int ,scalar_t__*) ;
 int stub3 (struct btc_coexist*,int ,scalar_t__*) ;
 int stub4 (struct btc_coexist*,int,int,scalar_t__*) ;

void ex_btc8821a1ant_media_status_notify(struct btc_coexist *btcoexist,
      u8 type)
{
 struct rtl_priv *rtlpriv = btcoexist->adapter;
 u8 h2c_parameter[3] = {0};
 u32 wifi_bw;
 u8 wifi_central_chnl;
 bool wifi_under_5g = 0;

 if (btcoexist->manual_control || btcoexist->stop_coex_dm ||
     coex_sta->bt_disabled)
  return;
 btcoexist->btc_get(btcoexist, BTC_GET_BL_WIFI_UNDER_5G, &wifi_under_5g);
 if (wifi_under_5g) {
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
    "[BTCoex], RunCoexistMechanism(), return for 5G <===\n");
  btc8821a1ant_coex_under_5g(btcoexist);
  return;
 }

 if (BTC_MEDIA_CONNECT == type) {
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
    "[BTCoex], MEDIA connect notify\n");
 } else {
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
    "[BTCoex], MEDIA disconnect notify\n");
  coex_dm->arp_cnt = 0;
 }


 btcoexist->btc_get(btcoexist,
      BTC_GET_U1_WIFI_CENTRAL_CHNL,
      &wifi_central_chnl);
 if ((type == BTC_MEDIA_CONNECT) &&
     (wifi_central_chnl <= 14)) {
  h2c_parameter[0] = 0x0;
  h2c_parameter[1] = wifi_central_chnl;
  btcoexist->btc_get(btcoexist, BTC_GET_U4_WIFI_BW, &wifi_bw);
  if (wifi_bw == BTC_WIFI_BW_HT40)
   h2c_parameter[2] = 0x30;
  else
   h2c_parameter[2] = 0x20;
 }

 coex_dm->wifi_chnl_info[0] = h2c_parameter[0];
 coex_dm->wifi_chnl_info[1] = h2c_parameter[1];
 coex_dm->wifi_chnl_info[2] = h2c_parameter[2];

 RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
   "[BTCoex], FW write 0x66 = 0x%x\n",
   h2c_parameter[0] << 16 |
   h2c_parameter[1] << 8 |
   h2c_parameter[2]);

 btcoexist->btc_fill_h2c(btcoexist, 0x66, 3, h2c_parameter);
}
