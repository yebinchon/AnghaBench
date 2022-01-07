
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct btc_coexist {scalar_t__ (* btc_read_4byte ) (struct btc_coexist*,int) ;scalar_t__ (* btc_read_2byte ) (struct btc_coexist*,int) ;int (* btc_write_1byte_bitmask ) (struct btc_coexist*,int,int,int) ;int (* btc_get ) (struct btc_coexist*,int ,int*) ;} ;
typedef int s32 ;
struct TYPE_4__ {scalar_t__ bt_status; } ;
struct TYPE_3__ {scalar_t__ crc_ok_cck; scalar_t__ crc_ok_11g; scalar_t__ crc_ok_11n; scalar_t__ crc_ok_11n_agg; scalar_t__ crc_err_cck; scalar_t__ crc_err_11g; scalar_t__ crc_err_11n; scalar_t__ crc_err_11n_agg; int pre_ccklock; int cck_lock; int cck_ever_lock; scalar_t__ under_ips; } ;


 int BTC_GET_BL_WIFI_BUSY ;
 int BTC_GET_BL_WIFI_UNDER_B_MODE ;
 int BTC_GET_S4_WIFI_RSSI ;
 scalar_t__ BT_8723B_1ANT_BT_STATUS_ACL_BUSY ;
 scalar_t__ BT_8723B_1ANT_BT_STATUS_ACL_SCO_BUSY ;
 scalar_t__ BT_8723B_1ANT_BT_STATUS_SCO_BUSY ;
 TYPE_2__* coex_dm ;
 TYPE_1__* coex_sta ;
 int stub1 (struct btc_coexist*,int ,int*) ;
 scalar_t__ stub10 (struct btc_coexist*,int) ;
 scalar_t__ stub11 (struct btc_coexist*,int) ;
 int stub12 (struct btc_coexist*,int,int,int) ;
 int stub13 (struct btc_coexist*,int,int,int) ;
 int stub2 (struct btc_coexist*,int ,int*) ;
 int stub3 (struct btc_coexist*,int ,int*) ;
 scalar_t__ stub4 (struct btc_coexist*,int) ;
 scalar_t__ stub5 (struct btc_coexist*,int) ;
 scalar_t__ stub6 (struct btc_coexist*,int) ;
 scalar_t__ stub7 (struct btc_coexist*,int) ;
 scalar_t__ stub8 (struct btc_coexist*,int) ;
 scalar_t__ stub9 (struct btc_coexist*,int) ;

__attribute__((used)) static void halbtc8723b1ant_monitor_wifi_ctr(struct btc_coexist *btcoexist)
{
 s32 wifi_rssi = 0;
 bool wifi_busy = 0, wifi_under_b_mode = 0;
 static u8 cck_lock_counter;
 u32 total_cnt;

 btcoexist->btc_get(btcoexist, BTC_GET_BL_WIFI_BUSY, &wifi_busy);
 btcoexist->btc_get(btcoexist, BTC_GET_S4_WIFI_RSSI, &wifi_rssi);
 btcoexist->btc_get(btcoexist, BTC_GET_BL_WIFI_UNDER_B_MODE,
      &wifi_under_b_mode);

 if (coex_sta->under_ips) {
  coex_sta->crc_ok_cck = 0;
  coex_sta->crc_ok_11g = 0;
  coex_sta->crc_ok_11n = 0;
  coex_sta->crc_ok_11n_agg = 0;

  coex_sta->crc_err_cck = 0;
  coex_sta->crc_err_11g = 0;
  coex_sta->crc_err_11n = 0;
  coex_sta->crc_err_11n_agg = 0;
 } else {
  coex_sta->crc_ok_cck =
   btcoexist->btc_read_4byte(btcoexist, 0xf88);
  coex_sta->crc_ok_11g =
   btcoexist->btc_read_2byte(btcoexist, 0xf94);
  coex_sta->crc_ok_11n =
   btcoexist->btc_read_2byte(btcoexist, 0xf90);
  coex_sta->crc_ok_11n_agg =
   btcoexist->btc_read_2byte(btcoexist, 0xfb8);

  coex_sta->crc_err_cck =
   btcoexist->btc_read_4byte(btcoexist, 0xf84);
  coex_sta->crc_err_11g =
   btcoexist->btc_read_2byte(btcoexist, 0xf96);
  coex_sta->crc_err_11n =
   btcoexist->btc_read_2byte(btcoexist, 0xf92);
  coex_sta->crc_err_11n_agg =
   btcoexist->btc_read_2byte(btcoexist, 0xfba);
 }


 btcoexist->btc_write_1byte_bitmask(btcoexist, 0xf16, 0x1, 0x1);
 btcoexist->btc_write_1byte_bitmask(btcoexist, 0xf16, 0x1, 0x0);

 if ((wifi_busy) && (wifi_rssi >= 30) && (!wifi_under_b_mode)) {
  total_cnt = coex_sta->crc_ok_cck + coex_sta->crc_ok_11g +
       coex_sta->crc_ok_11n + coex_sta->crc_ok_11n_agg;

  if ((coex_dm->bt_status == BT_8723B_1ANT_BT_STATUS_ACL_BUSY) ||
      (coex_dm->bt_status ==
       BT_8723B_1ANT_BT_STATUS_ACL_SCO_BUSY) ||
      (coex_dm->bt_status == BT_8723B_1ANT_BT_STATUS_SCO_BUSY)) {
   if (coex_sta->crc_ok_cck >
       (total_cnt - coex_sta->crc_ok_cck)) {
    if (cck_lock_counter < 3)
     cck_lock_counter++;
   } else {
    if (cck_lock_counter > 0)
     cck_lock_counter--;
   }

  } else {
   if (cck_lock_counter > 0)
    cck_lock_counter--;
  }
 } else {
  if (cck_lock_counter > 0)
   cck_lock_counter--;
 }

 if (!coex_sta->pre_ccklock) {
  if (cck_lock_counter >= 3)
   coex_sta->cck_lock = 1;
  else
   coex_sta->cck_lock = 0;
 } else {
  if (cck_lock_counter == 0)
   coex_sta->cck_lock = 0;
  else
   coex_sta->cck_lock = 1;
 }

 if (coex_sta->cck_lock)
  coex_sta->cck_ever_lock = 1;

 coex_sta->pre_ccklock = coex_sta->cck_lock;
}
