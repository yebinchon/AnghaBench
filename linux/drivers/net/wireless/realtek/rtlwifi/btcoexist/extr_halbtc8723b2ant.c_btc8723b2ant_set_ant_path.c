
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct btc_board_info {scalar_t__ btdm_ant_pos; } ;
struct btc_coexist {int (* btc_read_4byte ) (struct btc_coexist*,int) ;int (* btc_write_2byte ) (struct btc_coexist*,int,int) ;int (* btc_write_1byte_bitmask ) (struct btc_coexist*,int,int,int) ;int (* btc_write_4byte ) (struct btc_coexist*,int,int) ;int (* btc_write_1byte ) (struct btc_coexist*,int,int) ;int (* btc_fill_h2c ) (struct btc_coexist*,int,int,int*) ;int (* btc_set_rf_reg ) (struct btc_coexist*,int ,int,int,int) ;int (* btc_get ) (struct btc_coexist*,int ,int*) ;struct btc_board_info board_info; } ;


 int BIT23 ;
 int BIT24 ;
 scalar_t__ BTC_ANTENNA_AT_MAIN_PORT ;


 int BTC_GET_BL_EXT_SWITCH ;
 int BTC_GET_U4_WIFI_FW_VER ;
 int BTC_RF_A ;
 int stub1 (struct btc_coexist*,int ,int*) ;
 int stub10 (struct btc_coexist*,int,int) ;
 int stub11 (struct btc_coexist*,int ,int,int,int) ;
 int stub12 (struct btc_coexist*,int,int,int*) ;
 int stub13 (struct btc_coexist*,int,int,int*) ;
 int stub14 (struct btc_coexist*,int,int) ;
 int stub15 (struct btc_coexist*,int) ;
 int stub16 (struct btc_coexist*,int,int) ;
 int stub17 (struct btc_coexist*,int,int) ;
 int stub18 (struct btc_coexist*,int,int) ;
 int stub19 (struct btc_coexist*,int,int,int) ;
 int stub2 (struct btc_coexist*,int ,int*) ;
 int stub20 (struct btc_coexist*,int,int,int) ;
 int stub21 (struct btc_coexist*,int) ;
 int stub22 (struct btc_coexist*,int,int) ;
 int stub23 (struct btc_coexist*,int,int,int) ;
 int stub24 (struct btc_coexist*,int,int) ;
 int stub25 (struct btc_coexist*,int,int) ;
 int stub3 (struct btc_coexist*,int,int,int) ;
 int stub4 (struct btc_coexist*,int,int) ;
 int stub5 (struct btc_coexist*,int,int,int) ;
 int stub6 (struct btc_coexist*,int,int) ;
 int stub7 (struct btc_coexist*,int,int,int) ;
 int stub8 (struct btc_coexist*,int,int,int*) ;
 int stub9 (struct btc_coexist*,int,int) ;

__attribute__((used)) static void btc8723b2ant_set_ant_path(struct btc_coexist *btcoexist,
          u8 antpos_type, bool init_hwcfg,
          bool wifi_off)
{
 struct btc_board_info *board_info = &btcoexist->board_info;
 u32 fw_ver = 0, u32tmp = 0;
 bool pg_ext_switch = 0;
 bool use_ext_switch = 0;
 u8 h2c_parameter[2] = {0};

 btcoexist->btc_get(btcoexist, BTC_GET_BL_EXT_SWITCH, &pg_ext_switch);
 btcoexist->btc_get(btcoexist, BTC_GET_U4_WIFI_FW_VER, &fw_ver);

 if ((fw_ver < 0xc0000) || pg_ext_switch)
  use_ext_switch = 1;

 if (init_hwcfg) {
  btcoexist->btc_write_1byte_bitmask(btcoexist, 0x39, 0x8, 0x1);
  btcoexist->btc_write_1byte(btcoexist, 0x974, 0xff);
  btcoexist->btc_write_1byte_bitmask(btcoexist, 0x944, 0x3, 0x3);
  btcoexist->btc_write_1byte(btcoexist, 0x930, 0x77);
  btcoexist->btc_write_1byte_bitmask(btcoexist, 0x67, 0x20, 0x1);

  if (fw_ver >= 0x180000) {

   h2c_parameter[0] = 1;
   btcoexist->btc_fill_h2c(btcoexist, 0x6E, 1,
      h2c_parameter);
  } else {
   btcoexist->btc_write_1byte(btcoexist, 0x765, 0x18);
  }

  btcoexist->btc_write_4byte(btcoexist, 0x948, 0x0);


  btcoexist->btc_set_rf_reg(btcoexist, BTC_RF_A,
       0x1, 0xfffff, 0x0);

  if (board_info->btdm_ant_pos == BTC_ANTENNA_AT_MAIN_PORT) {

   h2c_parameter[0] = 0;
  } else {

   h2c_parameter[0] = 1;
  }

  if (use_ext_switch) {

   h2c_parameter[1] = 1;
  } else {

   h2c_parameter[1] = 0;
  }
  btcoexist->btc_fill_h2c(btcoexist, 0x65, 2, h2c_parameter);
 } else {
  if (fw_ver >= 0x180000) {

   h2c_parameter[0] = 0;
   btcoexist->btc_fill_h2c(btcoexist, 0x6E, 1,
      h2c_parameter);
  } else {
   btcoexist->btc_write_1byte(btcoexist, 0x765, 0x0);
  }
 }


 if (use_ext_switch) {
  if (init_hwcfg) {

   u32tmp = btcoexist->btc_read_4byte(btcoexist, 0x4c);
   u32tmp &= ~BIT23;
   u32tmp |= BIT24;
   btcoexist->btc_write_4byte(btcoexist, 0x4c, u32tmp);
  }


  if (board_info->btdm_ant_pos == BTC_ANTENNA_AT_MAIN_PORT)
   btcoexist->btc_write_2byte(btcoexist, 0x948, 0x0);
  else
   btcoexist->btc_write_2byte(btcoexist, 0x948, 0x280);

  switch (antpos_type) {
  case 128:

   btcoexist->btc_write_1byte_bitmask(btcoexist, 0x92c,
          0x3, 0x1);
   break;
  case 129:

   btcoexist->btc_write_1byte_bitmask(btcoexist,
          0x92c, 0x3, 0x2);
   break;
  }
 } else {

  if (init_hwcfg) {

   u32tmp = btcoexist->btc_read_4byte(btcoexist, 0x4c);
   u32tmp |= BIT23;
   u32tmp &= ~BIT24;
   btcoexist->btc_write_4byte(btcoexist, 0x4c, u32tmp);
  }


  btcoexist->btc_write_1byte_bitmask(btcoexist, 0x64, 0x1, 0x0);
  switch (antpos_type) {
  case 128:

   btcoexist->btc_write_2byte(btcoexist, 0x948, 0x0);
   break;
  case 129:

   btcoexist->btc_write_2byte(btcoexist, 0x948, 0x280);
   break;
  }
 }
}
