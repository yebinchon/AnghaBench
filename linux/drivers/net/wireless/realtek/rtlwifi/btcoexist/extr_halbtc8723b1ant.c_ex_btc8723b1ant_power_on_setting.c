
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct rtl_priv {int dummy; } ;
struct btc_board_info {int single_ant_path; void* btdm_ant_pos; } ;
struct btc_coexist {int stop_coex_dm; int (* btc_read_2byte ) (struct btc_coexist*,int) ;scalar_t__ chip_interface; int (* btc_write_local_reg_1byte ) (struct btc_coexist*,int,int) ;int (* btc_set ) (struct btc_coexist*,int ,int*) ;int (* btc_write_4byte ) (struct btc_coexist*,int,int) ;int (* btc_write_1byte ) (struct btc_coexist*,int,int) ;int (* btc_write_2byte ) (struct btc_coexist*,int,int) ;struct btc_board_info board_info; struct rtl_priv* adapter; } ;


 int BIT0 ;
 int BIT1 ;
 void* BTC_ANTENNA_AT_AUX_PORT ;
 void* BTC_ANTENNA_AT_MAIN_PORT ;
 scalar_t__ BTC_INTF_PCI ;
 scalar_t__ BTC_INTF_SDIO ;
 scalar_t__ BTC_INTF_USB ;
 int BTC_SET_ACT_ANTPOSREGRISTRY_CTRL ;
 int COMP_BT_COEXIST ;
 int DBG_LOUD ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 int stub1 (struct btc_coexist*,int,int) ;
 int stub10 (struct btc_coexist*,int ,int*) ;
 int stub11 (struct btc_coexist*,int,int) ;
 int stub12 (struct btc_coexist*,int,int) ;
 int stub2 (struct btc_coexist*,int) ;
 int stub3 (struct btc_coexist*,int,int) ;
 int stub4 (struct btc_coexist*,int,int) ;
 int stub5 (struct btc_coexist*,int,int) ;
 int stub6 (struct btc_coexist*,int,int) ;
 int stub7 (struct btc_coexist*,int,int) ;
 int stub8 (struct btc_coexist*,int,int) ;
 int stub9 (struct btc_coexist*,int,int) ;

void ex_btc8723b1ant_power_on_setting(struct btc_coexist *btcoexist)
{
 struct rtl_priv *rtlpriv = btcoexist->adapter;
 struct btc_board_info *board_info = &btcoexist->board_info;
 u8 u8tmp = 0x0;
 u16 u16tmp = 0x0;
 u32 value;

 RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
   "xxxxxxxxxxxxxxxx Execute 8723b 1-Ant PowerOn Setting xxxxxxxxxxxxxxxx!!\n");

 btcoexist->stop_coex_dm = 1;

 btcoexist->btc_write_1byte(btcoexist, 0x67, 0x20);


 u16tmp = btcoexist->btc_read_2byte(btcoexist, 0x2);
 btcoexist->btc_write_2byte(btcoexist, 0x2, u16tmp | BIT0 | BIT1);


 btcoexist->btc_write_1byte(btcoexist, 0x765, 0x18);

 btcoexist->btc_write_1byte(btcoexist, 0x76e, 0x4);
 if (btcoexist->chip_interface == BTC_INTF_USB) {

  btcoexist->btc_write_4byte(btcoexist, 0x948, 0x0);

  u8tmp |= 0x1;
  btcoexist->btc_write_local_reg_1byte(btcoexist, 0xfe08, u8tmp);

  board_info->btdm_ant_pos = BTC_ANTENNA_AT_AUX_PORT;
 } else {

  if (board_info->single_ant_path == 0) {

   btcoexist->btc_write_4byte(btcoexist, 0x948, 0x280);
   board_info->btdm_ant_pos = BTC_ANTENNA_AT_MAIN_PORT;
   value = 1;
  } else if (board_info->single_ant_path == 1) {

   btcoexist->btc_write_4byte(btcoexist, 0x948, 0x0);
   u8tmp |= 0x1;
   board_info->btdm_ant_pos = BTC_ANTENNA_AT_AUX_PORT;
   value = 0;
  }

  btcoexist->btc_set(btcoexist, BTC_SET_ACT_ANTPOSREGRISTRY_CTRL,
       &value);

  if (btcoexist->chip_interface == BTC_INTF_PCI)
   btcoexist->btc_write_local_reg_1byte(btcoexist, 0x384,
            u8tmp);
  else if (btcoexist->chip_interface == BTC_INTF_SDIO)
   btcoexist->btc_write_local_reg_1byte(btcoexist, 0x60,
            u8tmp);
 }
}
