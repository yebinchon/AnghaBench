
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct btc_bt_link_info {scalar_t__ a2dp_exist; scalar_t__ slave_role; } ;
struct btc_coexist {int (* btc_set ) (struct btc_coexist*,int ,int*) ;int (* btc_get ) (struct btc_coexist*,int ,int*) ;struct btc_bt_link_info bt_link_info; } ;
typedef int s8 ;
struct TYPE_4__ {int cur_ps_tdma_on; int cur_ps_tdma; int pre_ps_tdma_on; scalar_t__ pre_ps_tdma; } ;
struct TYPE_3__ {int scan_ap_num; int a2dp_bit_pool; int force_lps_on; } ;


 int BTC_ANT_PATH_PTA ;
 int BTC_GET_BL_WIFI_BUSY ;
 int BTC_SET_U1_RSSI_ADJ_VAL_FOR_1ANT_COEX_TYPE ;
 int FORCE_EXEC ;
 TYPE_2__* coex_dm ;
 TYPE_1__* coex_sta ;
 int halbtc8723b1ant_set_ant_path (struct btc_coexist*,int ,int ,int,int) ;
 int halbtc8723b1ant_set_fw_ps_tdma (struct btc_coexist*,int,int,int,int,int) ;
 int stub1 (struct btc_coexist*,int ,int*) ;
 int stub2 (struct btc_coexist*,int ,int*) ;

__attribute__((used)) static void halbtc8723b1ant_ps_tdma(struct btc_coexist *btcoexist,
        bool force_exec, bool turn_on, u8 type)
{
 struct btc_bt_link_info *bt_link_info = &btcoexist->bt_link_info;
 bool wifi_busy = 0;
 u8 rssi_adjust_val = 0;
 u8 ps_tdma_byte0_val = 0x51;
 u8 ps_tdma_byte3_val = 0x10;
 u8 ps_tdma_byte4_val = 0x50;
 s8 wifi_duration_adjust = 0x0;
 static bool pre_wifi_busy;

 coex_dm->cur_ps_tdma_on = turn_on;
 coex_dm->cur_ps_tdma = type;

 btcoexist->btc_get(btcoexist, BTC_GET_BL_WIFI_BUSY, &wifi_busy);

 if (wifi_busy != pre_wifi_busy) {
  force_exec = 1;
  pre_wifi_busy = wifi_busy;
 }

 if (!force_exec) {
  if ((coex_dm->pre_ps_tdma_on == coex_dm->cur_ps_tdma_on) &&
      (coex_dm->pre_ps_tdma == coex_dm->cur_ps_tdma))
   return;
 }

 if (coex_sta->scan_ap_num <= 5) {
  wifi_duration_adjust = 5;

  if (coex_sta->a2dp_bit_pool >= 35)
   wifi_duration_adjust = -10;
  else if (coex_sta->a2dp_bit_pool >= 45)
   wifi_duration_adjust = -15;
 } else if (coex_sta->scan_ap_num >= 40) {
  wifi_duration_adjust = -15;

  if (coex_sta->a2dp_bit_pool < 35)
   wifi_duration_adjust = -5;
  else if (coex_sta->a2dp_bit_pool < 45)
   wifi_duration_adjust = -10;
 } else if (coex_sta->scan_ap_num >= 20) {
  wifi_duration_adjust = -10;

  if (coex_sta->a2dp_bit_pool >= 45)
   wifi_duration_adjust = -15;
 } else {
  wifi_duration_adjust = 0;

  if (coex_sta->a2dp_bit_pool >= 35)
   wifi_duration_adjust = -10;
  else if (coex_sta->a2dp_bit_pool >= 45)
   wifi_duration_adjust = -15;
 }

 if ((type == 1) || (type == 2) || (type == 9) || (type == 11) ||
     (type == 101) || (type == 102) || (type == 109) || (type == 111)) {
  if (!coex_sta->force_lps_on) {





   ps_tdma_byte0_val = 0x61;

   ps_tdma_byte3_val = 0x11;

   ps_tdma_byte4_val = 0x10;
  } else {

   ps_tdma_byte0_val = 0x51;

   ps_tdma_byte3_val = 0x10;

   ps_tdma_byte4_val = 0x50;
  }
 } else if ((type == 3) || (type == 13) || (type == 14) ||
     (type == 103) || (type == 113) || (type == 114)) {

  ps_tdma_byte0_val = 0x51;

  ps_tdma_byte3_val = 0x10;

  ps_tdma_byte4_val = 0x10;
 } else {

  ps_tdma_byte0_val = 0x61;

  ps_tdma_byte3_val = 0x11;

  ps_tdma_byte4_val = 0x11;

 }


 if ((bt_link_info->slave_role) && (bt_link_info->a2dp_exist))

  ps_tdma_byte4_val = ps_tdma_byte4_val | 0x1;

 if (type > 100) {

  ps_tdma_byte0_val = ps_tdma_byte0_val | 0x82;

  ps_tdma_byte3_val = ps_tdma_byte3_val | 0x60;
 }

 if (turn_on) {
  switch (type) {
  default:
   halbtc8723b1ant_set_fw_ps_tdma(btcoexist, 0x51, 0x1a,
            0x1a, 0x0,
            ps_tdma_byte4_val);
   break;
  case 1:
   halbtc8723b1ant_set_fw_ps_tdma(
    btcoexist, ps_tdma_byte0_val,
    0x3a + wifi_duration_adjust, 0x03,
    ps_tdma_byte3_val, ps_tdma_byte4_val);

   rssi_adjust_val = 11;
   break;
  case 2:
   halbtc8723b1ant_set_fw_ps_tdma(
    btcoexist, ps_tdma_byte0_val,
    0x2d + wifi_duration_adjust, 0x03,
    ps_tdma_byte3_val, ps_tdma_byte4_val);
   break;
  case 3:
   halbtc8723b1ant_set_fw_ps_tdma(
    btcoexist, ps_tdma_byte0_val, 0x30, 0x03,
    ps_tdma_byte3_val, ps_tdma_byte4_val);
   break;
  case 4:
   halbtc8723b1ant_set_fw_ps_tdma(btcoexist, 0x93, 0x15,
            0x3, 0x14, 0x0);
   break;
  case 5:
   halbtc8723b1ant_set_fw_ps_tdma(
    btcoexist, ps_tdma_byte0_val, 0x1f, 0x3,
    ps_tdma_byte3_val, 0x11);
   break;
  case 6:
   halbtc8723b1ant_set_fw_ps_tdma(
    btcoexist, ps_tdma_byte0_val, 0x20, 0x3,
    ps_tdma_byte3_val, 0x11);
   break;
  case 7:
   halbtc8723b1ant_set_fw_ps_tdma(btcoexist, 0x13, 0xc,
             0x5, 0x0, 0x0);
   break;
  case 8:
   halbtc8723b1ant_set_fw_ps_tdma(btcoexist, 0x93, 0x25,
            0x3, 0x10, 0x0);
   break;
  case 9:
   halbtc8723b1ant_set_fw_ps_tdma(
    btcoexist, ps_tdma_byte0_val, 0x21, 0x3,
    ps_tdma_byte3_val, ps_tdma_byte4_val);
   break;
  case 10:
   halbtc8723b1ant_set_fw_ps_tdma(btcoexist, 0x13, 0xa,
             0xa, 0x0, 0x40);
   break;
  case 11:
   halbtc8723b1ant_set_fw_ps_tdma(
    btcoexist, ps_tdma_byte0_val, 0x21, 0x03,
    ps_tdma_byte3_val, ps_tdma_byte4_val);
   break;
  case 12:
   halbtc8723b1ant_set_fw_ps_tdma(btcoexist, 0x51, 0x0a,
            0x0a, 0x0, 0x50);
   break;
  case 13:
   if (coex_sta->scan_ap_num <= 3)
    halbtc8723b1ant_set_fw_ps_tdma(
     btcoexist, ps_tdma_byte0_val, 0x40, 0x3,
     ps_tdma_byte3_val, ps_tdma_byte4_val);
   else
    halbtc8723b1ant_set_fw_ps_tdma(
     btcoexist, ps_tdma_byte0_val, 0x21, 0x3,
     ps_tdma_byte3_val, ps_tdma_byte4_val);
   break;
  case 14:
   if (coex_sta->scan_ap_num <= 3)
    halbtc8723b1ant_set_fw_ps_tdma(
     btcoexist, 0x51, 0x30, 0x3, 0x10, 0x50);
   else
    halbtc8723b1ant_set_fw_ps_tdma(
     btcoexist, ps_tdma_byte0_val, 0x21, 0x3,
     ps_tdma_byte3_val, ps_tdma_byte4_val);
   break;
  case 15:
   halbtc8723b1ant_set_fw_ps_tdma(btcoexist, 0x13, 0xa,
             0x3, 0x8, 0x0);
   break;
  case 16:
   halbtc8723b1ant_set_fw_ps_tdma(btcoexist, 0x93, 0x15,
            0x3, 0x10, 0x0);
   break;
  case 18:
   halbtc8723b1ant_set_fw_ps_tdma(btcoexist, 0x93, 0x25,
            0x3, 0x10, 0x0);
   break;
  case 20:
   halbtc8723b1ant_set_fw_ps_tdma(
    btcoexist, ps_tdma_byte0_val, 0x3f, 0x03,
    ps_tdma_byte3_val, 0x10);
   break;
  case 21:
   halbtc8723b1ant_set_fw_ps_tdma(btcoexist, 0x61, 0x25,
            0x03, 0x11, 0x11);
   break;
  case 22:
   halbtc8723b1ant_set_fw_ps_tdma(
    btcoexist, ps_tdma_byte0_val, 0x25, 0x03,
    ps_tdma_byte3_val, 0x10);
   break;
  case 23:
   halbtc8723b1ant_set_fw_ps_tdma(btcoexist, 0xe3, 0x25,
            0x3, 0x31, 0x18);
   break;
  case 24:
   halbtc8723b1ant_set_fw_ps_tdma(btcoexist, 0xe3, 0x15,
            0x3, 0x31, 0x18);
   break;
  case 25:
   halbtc8723b1ant_set_fw_ps_tdma(btcoexist, 0xe3, 0xa,
             0x3, 0x31, 0x18);
   break;
  case 26:
   halbtc8723b1ant_set_fw_ps_tdma(btcoexist, 0xe3, 0xa,
             0x3, 0x31, 0x18);
   break;
  case 27:
   halbtc8723b1ant_set_fw_ps_tdma(btcoexist, 0xe3, 0x25,
            0x3, 0x31, 0x98);
   break;
  case 28:
   halbtc8723b1ant_set_fw_ps_tdma(btcoexist, 0x69, 0x25,
            0x3, 0x31, 0x0);
   break;
  case 29:
   halbtc8723b1ant_set_fw_ps_tdma(btcoexist, 0xab, 0x1a,
            0x1a, 0x1, 0x10);
   break;
  case 30:
   halbtc8723b1ant_set_fw_ps_tdma(btcoexist, 0x51, 0x30,
             0x3, 0x10, 0x10);
   break;
  case 31:
   halbtc8723b1ant_set_fw_ps_tdma(btcoexist, 0xd3, 0x1a,
            0x1a, 0, 0x58);
   break;
  case 32:
   halbtc8723b1ant_set_fw_ps_tdma(
    btcoexist, ps_tdma_byte0_val, 0x35, 0x3,
    ps_tdma_byte3_val, ps_tdma_byte4_val);
   break;
  case 33:
   halbtc8723b1ant_set_fw_ps_tdma(
    btcoexist, ps_tdma_byte0_val, 0x35, 0x3,
    ps_tdma_byte3_val, 0x10);
   break;
  case 34:
   halbtc8723b1ant_set_fw_ps_tdma(btcoexist, 0x53, 0x1a,
            0x1a, 0x0, 0x10);
   break;
  case 35:
   halbtc8723b1ant_set_fw_ps_tdma(btcoexist, 0x63, 0x1a,
            0x1a, 0x0, 0x10);
   break;
  case 36:
   halbtc8723b1ant_set_fw_ps_tdma(btcoexist, 0xd3, 0x12,
            0x3, 0x14, 0x50);
   break;
  case 40:






   halbtc8723b1ant_set_fw_ps_tdma(btcoexist, 0x23, 0x18,
            0x00, 0x10, 0x24);
   break;

  case 101:

   halbtc8723b1ant_set_fw_ps_tdma(
    btcoexist, ps_tdma_byte0_val,
    0x3a + wifi_duration_adjust, 0x03,
    ps_tdma_byte3_val, ps_tdma_byte4_val);
   break;
  case 102:
   halbtc8723b1ant_set_fw_ps_tdma(
    btcoexist, ps_tdma_byte0_val,
    0x2d + wifi_duration_adjust, 0x03,
    ps_tdma_byte3_val, ps_tdma_byte4_val);
   break;
  case 103:
   halbtc8723b1ant_set_fw_ps_tdma(
    btcoexist, ps_tdma_byte0_val, 0x3a, 0x03,
    ps_tdma_byte3_val, ps_tdma_byte4_val);
   break;
  case 105:
   halbtc8723b1ant_set_fw_ps_tdma(
    btcoexist, ps_tdma_byte0_val, 0x15, 0x3,
    ps_tdma_byte3_val, 0x11);
   break;
  case 106:
   halbtc8723b1ant_set_fw_ps_tdma(
    btcoexist, ps_tdma_byte0_val, 0x20, 0x3,
    ps_tdma_byte3_val, 0x11);
   break;
  case 109:
   halbtc8723b1ant_set_fw_ps_tdma(
    btcoexist, ps_tdma_byte0_val, 0x21, 0x3,
    ps_tdma_byte3_val, ps_tdma_byte4_val);
   break;
  case 111:
   halbtc8723b1ant_set_fw_ps_tdma(
    btcoexist, ps_tdma_byte0_val, 0x21, 0x03,
    ps_tdma_byte3_val, ps_tdma_byte4_val);
   break;
  case 113:
   halbtc8723b1ant_set_fw_ps_tdma(
    btcoexist, ps_tdma_byte0_val, 0x21, 0x3,
    ps_tdma_byte3_val, ps_tdma_byte4_val);
   break;
  case 114:
   halbtc8723b1ant_set_fw_ps_tdma(
    btcoexist, ps_tdma_byte0_val, 0x21, 0x3,
    ps_tdma_byte3_val, ps_tdma_byte4_val);
   break;
  case 120:
   halbtc8723b1ant_set_fw_ps_tdma(
    btcoexist, ps_tdma_byte0_val, 0x3f, 0x03,
    ps_tdma_byte3_val, 0x10);
   break;
  case 122:
   halbtc8723b1ant_set_fw_ps_tdma(
    btcoexist, ps_tdma_byte0_val, 0x25, 0x03,
    ps_tdma_byte3_val, 0x10);
   break;
  case 132:
   halbtc8723b1ant_set_fw_ps_tdma(
    btcoexist, ps_tdma_byte0_val, 0x25, 0x03,
    ps_tdma_byte3_val, ps_tdma_byte4_val);
   break;
  case 133:
   halbtc8723b1ant_set_fw_ps_tdma(
    btcoexist, ps_tdma_byte0_val, 0x25, 0x03,
    ps_tdma_byte3_val, 0x11);
   break;
  }
 } else {

  switch (type) {
  case 8:
   halbtc8723b1ant_set_fw_ps_tdma(btcoexist, 0x8, 0x0,
             0x0, 0x0, 0x0);
   halbtc8723b1ant_set_ant_path(btcoexist,
           BTC_ANT_PATH_PTA,
           FORCE_EXEC,
           0, 0);
   break;
  case 0:
  default:

   halbtc8723b1ant_set_fw_ps_tdma(btcoexist, 0x0, 0x0,
             0x0, 0x0, 0x0);
   break;
  case 1:
   halbtc8723b1ant_set_fw_ps_tdma(btcoexist, 0x0, 0x0, 0x0,
             0x48, 0x0);
   break;
  }
 }
 rssi_adjust_val = 0;
 btcoexist->btc_set(btcoexist,
      BTC_SET_U1_RSSI_ADJ_VAL_FOR_1ANT_COEX_TYPE,
      &rssi_adjust_val);


 coex_dm->pre_ps_tdma_on = coex_dm->cur_ps_tdma_on;
 coex_dm->pre_ps_tdma = coex_dm->cur_ps_tdma;
}
