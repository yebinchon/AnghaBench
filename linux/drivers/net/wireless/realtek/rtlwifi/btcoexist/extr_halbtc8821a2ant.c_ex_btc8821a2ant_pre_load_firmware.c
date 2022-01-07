
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct btc_board_info {int single_ant_path; } ;
struct btc_coexist {scalar_t__ chip_interface; int (* btc_write_local_reg_1byte ) (struct btc_coexist*,int,int) ;struct btc_board_info board_info; } ;


 scalar_t__ BTC_INTF_PCI ;
 scalar_t__ BTC_INTF_SDIO ;
 scalar_t__ BTC_INTF_USB ;
 int stub1 (struct btc_coexist*,int,int) ;
 int stub2 (struct btc_coexist*,int,int) ;
 int stub3 (struct btc_coexist*,int,int) ;

void ex_btc8821a2ant_pre_load_firmware(struct btc_coexist *btcoexist)
{
 struct btc_board_info *board_info = &btcoexist->board_info;
 u8 u8tmp = 0x4;
 if (btcoexist->chip_interface == BTC_INTF_USB) {

  u8tmp |= 0x1;
  btcoexist->btc_write_local_reg_1byte(btcoexist, 0xfe08, u8tmp);
 } else {

  if (board_info->single_ant_path == 0) {
  } else if (board_info->single_ant_path == 1) {

   u8tmp |= 0x1;
  }

  if (btcoexist->chip_interface == BTC_INTF_PCI)
   btcoexist->btc_write_local_reg_1byte(btcoexist, 0x384,
            u8tmp);
  else if (btcoexist->chip_interface == BTC_INTF_SDIO)
   btcoexist->btc_write_local_reg_1byte(btcoexist, 0x60,
            u8tmp);
 }
}
