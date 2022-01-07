
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct rtl_priv {int dummy; } ;
struct btc_coexist {int (* btc_fill_h2c ) (struct btc_coexist*,int,int,scalar_t__*) ;int (* btc_get ) (struct btc_coexist*,int ,scalar_t__*) ;int (* btc_write_1byte ) (struct btc_coexist*,int,int) ;int (* btc_read_1byte ) (struct btc_coexist*,int) ;int (* btc_read_2byte ) (struct btc_coexist*,int) ;int (* btc_read_4byte ) (struct btc_coexist*,int) ;scalar_t__ stop_coex_dm; scalar_t__ manual_control; struct rtl_priv* adapter; } ;
struct TYPE_4__ {scalar_t__* wifi_chnl_info; scalar_t__ arp_cnt; int backup_ampdu_max_time; int backup_retry_limit; int backup_arfr_cnt2; int backup_arfr_cnt1; } ;
struct TYPE_3__ {int cck_ever_lock; scalar_t__ bt_disabled; } ;


 int BTC_ANT_PATH_PTA ;
 int BTC_GET_BL_WIFI_UNDER_B_MODE ;
 int BTC_GET_U1_WIFI_CENTRAL_CHNL ;
 int BTC_GET_U4_WIFI_BW ;
 scalar_t__ BTC_MEDIA_CONNECT ;
 scalar_t__ BTC_WIFI_BW_HT40 ;
 int COMP_BT_COEXIST ;
 int DBG_LOUD ;
 int FORCE_EXEC ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,...) ;
 TYPE_2__* coex_dm ;
 TYPE_1__* coex_sta ;
 int halbtc8723b1ant_ps_tdma (struct btc_coexist*,int ,int,int) ;
 int halbtc8723b1ant_set_ant_path (struct btc_coexist*,int ,int ,int,int) ;
 int stub1 (struct btc_coexist*,int ,int*) ;
 int stub10 (struct btc_coexist*,int,int) ;
 int stub11 (struct btc_coexist*,int,int) ;
 int stub12 (struct btc_coexist*,int ,scalar_t__*) ;
 int stub13 (struct btc_coexist*,int ,scalar_t__*) ;
 int stub14 (struct btc_coexist*,int,int,scalar_t__*) ;
 int stub2 (struct btc_coexist*,int,int) ;
 int stub3 (struct btc_coexist*,int,int) ;
 int stub4 (struct btc_coexist*,int,int) ;
 int stub5 (struct btc_coexist*,int,int) ;
 int stub6 (struct btc_coexist*,int) ;
 int stub7 (struct btc_coexist*,int) ;
 int stub8 (struct btc_coexist*,int) ;
 int stub9 (struct btc_coexist*,int) ;

void ex_btc8723b1ant_media_status_notify(struct btc_coexist *btcoexist,
      u8 type)
{
 struct rtl_priv *rtlpriv = btcoexist->adapter;
 u8 h2c_parameter[3] = {0};
 u32 wifi_bw;
 u8 wifi_central_chnl;
 bool wifi_under_b_mode = 0;

 if (btcoexist->manual_control || btcoexist->stop_coex_dm ||
     coex_sta->bt_disabled)
  return;

 if (type == BTC_MEDIA_CONNECT) {
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
    "[BTCoex], MEDIA connect notify\n");

  halbtc8723b1ant_ps_tdma(btcoexist, FORCE_EXEC, 0, 8);
  halbtc8723b1ant_set_ant_path(btcoexist, BTC_ANT_PATH_PTA,
          FORCE_EXEC, 0, 0);
  btcoexist->btc_get(btcoexist, BTC_GET_BL_WIFI_UNDER_B_MODE,
       &wifi_under_b_mode);


  if (wifi_under_b_mode) {
   btcoexist->btc_write_1byte(btcoexist, 0x6cd,
         0x00);
   btcoexist->btc_write_1byte(btcoexist, 0x6cf,
         0x00);
  } else {
   btcoexist->btc_write_1byte(btcoexist, 0x6cd,
         0x00);
   btcoexist->btc_write_1byte(btcoexist, 0x6cf,
         0x10);
  }

  coex_dm->backup_arfr_cnt1 =
   btcoexist->btc_read_4byte(btcoexist, 0x430);
  coex_dm->backup_arfr_cnt2 =
   btcoexist->btc_read_4byte(btcoexist, 0x434);
  coex_dm->backup_retry_limit =
   btcoexist->btc_read_2byte(btcoexist, 0x42a);
  coex_dm->backup_ampdu_max_time =
   btcoexist->btc_read_1byte(btcoexist, 0x456);
 } else {
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
    "[BTCoex], MEDIA disconnect notify\n");
  coex_dm->arp_cnt = 0;

  btcoexist->btc_write_1byte(btcoexist, 0x6cd, 0x0);
  btcoexist->btc_write_1byte(btcoexist, 0x6cf, 0x0);

  coex_sta->cck_ever_lock = 0;
 }


 btcoexist->btc_get(btcoexist, BTC_GET_U1_WIFI_CENTRAL_CHNL,
      &wifi_central_chnl);

 if (type == BTC_MEDIA_CONNECT && wifi_central_chnl <= 14) {
  h2c_parameter[0] = 0x0;
  h2c_parameter[1] = wifi_central_chnl;
  btcoexist->btc_get(btcoexist, BTC_GET_U4_WIFI_BW, &wifi_bw);
  if (BTC_WIFI_BW_HT40 == wifi_bw)
   h2c_parameter[2] = 0x30;
  else
   h2c_parameter[2] = 0x20;
 }

 coex_dm->wifi_chnl_info[0] = h2c_parameter[0];
 coex_dm->wifi_chnl_info[1] = h2c_parameter[1];
 coex_dm->wifi_chnl_info[2] = h2c_parameter[2];

 RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
   "[BTCoex], FW write 0x66 = 0x%x\n",
   h2c_parameter[0] << 16 | h2c_parameter[1] << 8 |
   h2c_parameter[2]);

 btcoexist->btc_fill_h2c(btcoexist, 0x66, 3, h2c_parameter);
}
