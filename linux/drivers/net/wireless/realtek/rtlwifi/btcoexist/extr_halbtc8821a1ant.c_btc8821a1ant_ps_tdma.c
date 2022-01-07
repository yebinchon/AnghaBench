
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct rtl_priv {int dummy; } ;
struct btc_coexist {int (* btc_set ) (struct btc_coexist*,int ,int*) ;struct rtl_priv* adapter; } ;
struct TYPE_2__ {int cur_ps_tdma_on; int cur_ps_tdma; int pre_ps_tdma_on; scalar_t__ pre_ps_tdma; } ;


 int BTC_ANT_PATH_BT ;
 int BTC_ANT_PATH_PTA ;
 int BTC_ANT_PATH_WIFI ;
 int BTC_SET_U1_RSSI_ADJ_VAL_FOR_1ANT_COEX_TYPE ;
 int COMP_BT_COEXIST ;
 int DBG_LOUD ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int) ;
 int btc8821a1ant_set_ant_path (struct btc_coexist*,int ,int,int) ;
 int btc8821a1ant_set_fw_ps_tdma (struct btc_coexist*,int,int,int,int,int) ;
 TYPE_1__* coex_dm ;
 int stub1 (struct btc_coexist*,int ,int*) ;

__attribute__((used)) static void btc8821a1ant_ps_tdma(struct btc_coexist *btcoexist,
     bool force_exec, bool turn_on, u8 type)
{
 struct rtl_priv *rtlpriv = btcoexist->adapter;
 u8 rssi_adjust_val = 0;

 coex_dm->cur_ps_tdma_on = turn_on;
 coex_dm->cur_ps_tdma = type;

 if (!force_exec) {
  if (coex_dm->cur_ps_tdma_on) {
   RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
     "[BTCoex], ********** TDMA(on, %d) **********\n",
     coex_dm->cur_ps_tdma);
  } else {
   RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
     "[BTCoex], ********** TDMA(off, %d) **********\n",
     coex_dm->cur_ps_tdma);
  }
  if ((coex_dm->pre_ps_tdma_on == coex_dm->cur_ps_tdma_on) &&
      (coex_dm->pre_ps_tdma == coex_dm->cur_ps_tdma))
   return;
 }
 if (turn_on) {
  switch (type) {
  default:
   btc8821a1ant_set_fw_ps_tdma(btcoexist, 0x51, 0x1a,
          0x1a, 0x0, 0x50);
   break;
  case 1:
   btc8821a1ant_set_fw_ps_tdma(btcoexist, 0x51, 0x3a,
          0x03, 0x10, 0x50);
   rssi_adjust_val = 11;
   break;
  case 2:
   btc8821a1ant_set_fw_ps_tdma(btcoexist, 0x51, 0x2b,
          0x03, 0x10, 0x50);
   rssi_adjust_val = 14;
   break;
  case 3:
   btc8821a1ant_set_fw_ps_tdma(btcoexist, 0x51, 0x1d,
          0x1d, 0x0, 0x10);
   break;
  case 4:
   btc8821a1ant_set_fw_ps_tdma(btcoexist, 0x93, 0x15,
          0x3, 0x14, 0x0);
   rssi_adjust_val = 17;
   break;
  case 5:
   btc8821a1ant_set_fw_ps_tdma(btcoexist, 0x61, 0x15,
          0x3, 0x11, 0x10);
   break;
  case 6:
   btc8821a1ant_set_fw_ps_tdma(btcoexist, 0x61, 0x20,
          0x3, 0x11, 0x13);
   break;
  case 7:
   btc8821a1ant_set_fw_ps_tdma(btcoexist, 0x13, 0xc,
          0x5, 0x0, 0x0);
   break;
  case 8:
   btc8821a1ant_set_fw_ps_tdma(btcoexist, 0x93, 0x25,
          0x3, 0x10, 0x0);
   break;
  case 9:
   btc8821a1ant_set_fw_ps_tdma(btcoexist, 0x51, 0x21,
          0x3, 0x10, 0x50);
   rssi_adjust_val = 18;
   break;
  case 10:
   btc8821a1ant_set_fw_ps_tdma(btcoexist, 0x13, 0xa,
          0xa, 0x0, 0x40);
   break;
  case 11:
   btc8821a1ant_set_fw_ps_tdma(btcoexist, 0x51, 0x15,
          0x03, 0x10, 0x50);
   rssi_adjust_val = 20;
   break;
  case 12:
   btc8821a1ant_set_fw_ps_tdma(btcoexist, 0x51, 0x0a,
          0x0a, 0x0, 0x50);
   break;
  case 13:
   btc8821a1ant_set_fw_ps_tdma(btcoexist, 0x51, 0x12,
          0x12, 0x0, 0x50);
   break;
  case 14:
   btc8821a1ant_set_fw_ps_tdma(btcoexist, 0x51, 0x1e,
          0x3, 0x10, 0x14);
   break;
  case 15:
   btc8821a1ant_set_fw_ps_tdma(btcoexist, 0x13, 0xa,
          0x3, 0x8, 0x0);
   break;
  case 16:
   btc8821a1ant_set_fw_ps_tdma(btcoexist, 0x93, 0x15,
          0x3, 0x10, 0x0);
   rssi_adjust_val = 18;
   break;
  case 18:
   btc8821a1ant_set_fw_ps_tdma(btcoexist, 0x93, 0x25,
          0x3, 0x10, 0x0);
   rssi_adjust_val = 14;
   break;
  case 20:
   btc8821a1ant_set_fw_ps_tdma(btcoexist, 0x61, 0x35,
          0x03, 0x11, 0x10);
   break;
  case 21:
   btc8821a1ant_set_fw_ps_tdma(btcoexist, 0x61, 0x25,
          0x03, 0x11, 0x11);
   break;
  case 22:
   btc8821a1ant_set_fw_ps_tdma(btcoexist, 0x61, 0x25,
          0x03, 0x11, 0x10);
   break;
  case 23:
   btc8821a1ant_set_fw_ps_tdma(btcoexist, 0xe3, 0x25,
          0x3, 0x31, 0x18);
   rssi_adjust_val = 22;
   break;
  case 24:
   btc8821a1ant_set_fw_ps_tdma(btcoexist, 0xe3, 0x15,
          0x3, 0x31, 0x18);
   rssi_adjust_val = 22;
   break;
  case 25:
   btc8821a1ant_set_fw_ps_tdma(btcoexist, 0xe3, 0xa,
          0x3, 0x31, 0x18);
   rssi_adjust_val = 22;
   break;
  case 26:
   btc8821a1ant_set_fw_ps_tdma(btcoexist, 0xe3, 0xa,
          0x3, 0x31, 0x18);
   rssi_adjust_val = 22;
   break;
  case 27:
   btc8821a1ant_set_fw_ps_tdma(btcoexist, 0xe3, 0x25,
          0x3, 0x31, 0x98);
   rssi_adjust_val = 22;
   break;
  case 28:
   btc8821a1ant_set_fw_ps_tdma(btcoexist, 0x69, 0x25,
          0x3, 0x31, 0x0);
   break;
  case 29:
   btc8821a1ant_set_fw_ps_tdma(btcoexist, 0xab, 0x1a,
          0x1a, 0x1, 0x10);
   break;
  case 30:
   btc8821a1ant_set_fw_ps_tdma(btcoexist, 0x51, 0x30,
          0x3, 0x10, 0x10);
   break;
  case 31:
   btc8821a1ant_set_fw_ps_tdma(btcoexist, 0xd3, 0x1a,
          0x1a, 0, 0x58);
   break;
  case 32:
   btc8821a1ant_set_fw_ps_tdma(btcoexist, 0x61, 0x35,
          0x3, 0x11, 0x11);
   break;
  case 33:
   btc8821a1ant_set_fw_ps_tdma(btcoexist, 0xa3, 0x25,
          0x3, 0x30, 0x90);
   break;
  case 34:
   btc8821a1ant_set_fw_ps_tdma(btcoexist, 0x53, 0x1a,
          0x1a, 0x0, 0x10);
   break;
  case 35:
   btc8821a1ant_set_fw_ps_tdma(btcoexist, 0x63, 0x1a,
          0x1a, 0x0, 0x10);
   break;
  case 36:
   btc8821a1ant_set_fw_ps_tdma(btcoexist, 0xd3, 0x12,
          0x3, 0x14, 0x50);
   break;
  case 40:






   btc8821a1ant_set_fw_ps_tdma(btcoexist, 0x23, 0x18,
          0x00, 0x10, 0x24);
   break;
  case 41:
   btc8821a1ant_set_fw_ps_tdma(btcoexist, 0x51, 0x15,
          0x3, 0x11, 0x11);
   break;
  case 42:
   btc8821a1ant_set_fw_ps_tdma(btcoexist, 0x51, 0x20,
          0x3, 0x11, 0x11);
   break;
  case 43:
   btc8821a1ant_set_fw_ps_tdma(btcoexist, 0x51, 0x30,
          0x3, 0x10, 0x11);
   break;
  }
 } else {

  switch (type) {
  case 8:

   btc8821a1ant_set_fw_ps_tdma(btcoexist, 0x8, 0x0, 0x0,
          0x0, 0x0);
   btc8821a1ant_set_ant_path(btcoexist, BTC_ANT_PATH_PTA,
        0, 0);
   break;
  case 0:
  default:

   btc8821a1ant_set_fw_ps_tdma(btcoexist, 0x0, 0x0, 0x0,
          0x0, 0x0);
   btc8821a1ant_set_ant_path(btcoexist, BTC_ANT_PATH_BT,
        0, 0);
   break;
  case 9:

   btc8821a1ant_set_fw_ps_tdma(btcoexist, 0x0, 0x0, 0x0,
          0x0, 0x0);
   btc8821a1ant_set_ant_path(btcoexist, BTC_ANT_PATH_WIFI,
        0, 0);
   break;
  case 10:

   btc8821a1ant_set_fw_ps_tdma(btcoexist, 0x0, 0x0, 0x0,
          0x8, 0x0);
   btc8821a1ant_set_ant_path(btcoexist, BTC_ANT_PATH_BT,
        0, 0);
   break;
  }
 }
 rssi_adjust_val = 0;
 btcoexist->btc_set(btcoexist,
   BTC_SET_U1_RSSI_ADJ_VAL_FOR_1ANT_COEX_TYPE, &rssi_adjust_val);


 coex_dm->pre_ps_tdma_on = coex_dm->cur_ps_tdma_on;
 coex_dm->pre_ps_tdma = coex_dm->cur_ps_tdma;
}
