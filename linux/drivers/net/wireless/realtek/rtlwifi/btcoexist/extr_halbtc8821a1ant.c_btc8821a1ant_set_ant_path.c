
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct btc_board_info {scalar_t__ btdm_ant_pos; } ;
struct btc_coexist {int (* btc_write_1byte_bitmask ) (struct btc_coexist*,int,int,int) ;int (* btc_write_1byte ) (struct btc_coexist*,int,int) ;int (* btc_write_4byte ) (struct btc_coexist*,int,int ) ;int (* btc_read_4byte ) (struct btc_coexist*,int) ;int (* btc_fill_h2c ) (struct btc_coexist*,int,int,int*) ;struct btc_board_info board_info; } ;


 int BIT23 ;
 int BIT24 ;
 scalar_t__ BTC_ANTENNA_AT_MAIN_PORT ;



 int stub1 (struct btc_coexist*,int) ;
 int stub10 (struct btc_coexist*,int,int,int) ;
 int stub11 (struct btc_coexist*,int,int) ;
 int stub12 (struct btc_coexist*,int,int,int) ;
 int stub13 (struct btc_coexist*,int,int,int) ;
 int stub14 (struct btc_coexist*,int,int) ;
 int stub15 (struct btc_coexist*,int,int,int) ;
 int stub16 (struct btc_coexist*,int,int,int) ;
 int stub17 (struct btc_coexist*,int,int) ;
 int stub18 (struct btc_coexist*,int,int,int) ;
 int stub19 (struct btc_coexist*,int,int,int) ;
 int stub2 (struct btc_coexist*,int,int ) ;
 int stub3 (struct btc_coexist*,int,int,int) ;
 int stub4 (struct btc_coexist*,int,int) ;
 int stub5 (struct btc_coexist*,int,int,int*) ;
 int stub6 (struct btc_coexist*,int,int,int*) ;
 int stub7 (struct btc_coexist*,int) ;
 int stub8 (struct btc_coexist*,int,int ) ;
 int stub9 (struct btc_coexist*,int,int,int) ;

__attribute__((used)) static void btc8821a1ant_set_ant_path(struct btc_coexist *btcoexist,
          u8 ant_pos_type, bool init_hw_cfg,
          bool wifi_off)
{
 struct btc_board_info *board_info = &btcoexist->board_info;
 u32 u4_tmp = 0;
 u8 h2c_parameter[2] = {0};

 if (init_hw_cfg) {

  u4_tmp = btcoexist->btc_read_4byte(btcoexist, 0x4c);
  u4_tmp &= ~BIT23;
  u4_tmp |= BIT24;
  btcoexist->btc_write_4byte(btcoexist, 0x4c, u4_tmp);

  btcoexist->btc_write_1byte_bitmask(btcoexist, 0x975, 0x3, 0x3);
  btcoexist->btc_write_1byte(btcoexist, 0xcb4, 0x77);

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
 } else if (wifi_off) {



  u4_tmp = btcoexist->btc_read_4byte(btcoexist, 0x4c);
  u4_tmp &= ~BIT23;
  u4_tmp &= ~BIT24;
  btcoexist->btc_write_4byte(btcoexist, 0x4c, u4_tmp);


  btcoexist->btc_write_1byte_bitmask(btcoexist, 0x765, 0x18, 0x3);
 } else {

  btcoexist->btc_write_1byte_bitmask(btcoexist, 0x765, 0x18, 0x0);
 }


 switch (ant_pos_type) {
 case 128:
  btcoexist->btc_write_1byte(btcoexist, 0xcb4, 0x77);
  if (board_info->btdm_ant_pos == BTC_ANTENNA_AT_MAIN_PORT)
   btcoexist->btc_write_1byte_bitmask(btcoexist, 0xcb7,
          0x30, 0x1);
  else
   btcoexist->btc_write_1byte_bitmask(btcoexist, 0xcb7,
          0x30, 0x2);
  break;
 case 130:
  btcoexist->btc_write_1byte(btcoexist, 0xcb4, 0x77);
  if (board_info->btdm_ant_pos == BTC_ANTENNA_AT_MAIN_PORT)
   btcoexist->btc_write_1byte_bitmask(btcoexist, 0xcb7,
          0x30, 0x2);
  else
   btcoexist->btc_write_1byte_bitmask(btcoexist, 0xcb7,
          0x30, 0x1);
  break;
 default:
 case 129:
  btcoexist->btc_write_1byte(btcoexist, 0xcb4, 0x66);
  if (board_info->btdm_ant_pos == BTC_ANTENNA_AT_MAIN_PORT)
   btcoexist->btc_write_1byte_bitmask(btcoexist, 0xcb7,
          0x30, 0x1);
  else
   btcoexist->btc_write_1byte_bitmask(btcoexist, 0xcb7,
          0x30, 0x2);
  break;
 }
}
