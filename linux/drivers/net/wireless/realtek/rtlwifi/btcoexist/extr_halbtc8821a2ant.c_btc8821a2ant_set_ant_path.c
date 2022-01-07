
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct btc_board_info {scalar_t__ btdm_ant_pos; } ;
struct btc_coexist {int (* btc_read_4byte ) (struct btc_coexist*,int) ;int (* btc_write_1byte_bitmask ) (struct btc_coexist*,int,int,int) ;int (* btc_fill_h2c ) (struct btc_coexist*,int,int,int*) ;int (* btc_write_4byte ) (struct btc_coexist*,int,int) ;struct btc_board_info board_info; } ;


 int BIT23 ;
 int BIT24 ;
 scalar_t__ BTC_ANTENNA_AT_MAIN_PORT ;


 int stub1 (struct btc_coexist*,int) ;
 int stub2 (struct btc_coexist*,int,int) ;
 int stub3 (struct btc_coexist*,int,int) ;
 int stub4 (struct btc_coexist*,int,int,int*) ;
 int stub5 (struct btc_coexist*,int,int,int*) ;
 int stub6 (struct btc_coexist*,int,int,int) ;
 int stub7 (struct btc_coexist*,int,int,int) ;

__attribute__((used)) static void btc8821a2ant_set_ant_path(struct btc_coexist *btcoexist,
          u8 ant_pos_type, bool init_hw_cfg,
          bool wifi_off)
{
 struct btc_board_info *board_info = &btcoexist->board_info;
 u32 u4tmp = 0;
 u8 h2c_parameter[2] = {0};

 if (init_hw_cfg) {

  u4tmp = btcoexist->btc_read_4byte(btcoexist, 0x4c);
  u4tmp &= ~BIT23;
  u4tmp |= BIT24;
  btcoexist->btc_write_4byte(btcoexist, 0x4c, u4tmp);

  btcoexist->btc_write_4byte(btcoexist, 0x974, 0x3ff);

  if (board_info->btdm_ant_pos == BTC_ANTENNA_AT_MAIN_PORT) {



   h2c_parameter[0] = 1;
   h2c_parameter[1] = 1;
   btcoexist->btc_fill_h2c(btcoexist, 0x65, 2,
      h2c_parameter);
  } else {



   h2c_parameter[0] = 0;
   h2c_parameter[1] = 1;
   btcoexist->btc_fill_h2c(btcoexist, 0x65, 2,
      h2c_parameter);
  }
 }


 switch (ant_pos_type) {
 case 128:
  btcoexist->btc_write_1byte_bitmask(btcoexist, 0xcb7, 0x30, 0x1);
  break;
 case 129:
  btcoexist->btc_write_1byte_bitmask(btcoexist, 0xcb7, 0x30, 0x2);
  break;
 }
}
