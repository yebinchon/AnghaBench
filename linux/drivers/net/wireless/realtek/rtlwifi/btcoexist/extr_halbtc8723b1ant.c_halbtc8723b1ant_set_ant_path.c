
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct rtl_priv {int dummy; } ;
struct btc_board_info {scalar_t__ btdm_ant_pos; } ;
struct btc_coexist {int (* btc_read_4byte ) (struct btc_coexist*,int) ;int (* btc_read_1byte ) (struct btc_coexist*,int) ;int (* btc_write_4byte ) (struct btc_coexist*,int,int) ;int (* btc_fill_h2c ) (struct btc_coexist*,int,int,int*) ;int (* btc_write_1byte_bitmask ) (struct btc_coexist*,int,int,int) ;int (* btc_write_1byte ) (struct btc_coexist*,int,int) ;int (* btc_get ) (struct btc_coexist*,int ,int*) ;int (* btc_set_rf_reg ) (struct btc_coexist*,int ,int,int,int) ;struct btc_board_info board_info; struct rtl_priv* adapter; } ;
struct TYPE_2__ {int cur_ant_pos_type; scalar_t__ pre_ant_pos_type; } ;


 int BIT (int ) ;
 int BIT23 ;
 int BIT24 ;
 scalar_t__ BTC_ANTENNA_AT_MAIN_PORT ;



 int BTC_GET_BL_EXT_SWITCH ;
 int BTC_GET_BL_WIFI_IS_IN_MP_MODE ;
 int BTC_GET_U4_WIFI_FW_VER ;
 int BTC_RF_A ;
 int COMP_BT_COEXIST ;
 int DBG_LOUD ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int) ;
 TYPE_1__* coex_dm ;
 int mdelay (int) ;
 int stub1 (struct btc_coexist*,int ,int*) ;
 int stub10 (struct btc_coexist*,int,int,int) ;
 int stub11 (struct btc_coexist*,int,int) ;
 int stub12 (struct btc_coexist*,int,int,int*) ;
 int stub13 (struct btc_coexist*,int,int) ;
 int stub14 (struct btc_coexist*,int,int) ;
 int stub15 (struct btc_coexist*,int ,int*) ;
 int stub16 (struct btc_coexist*,int,int,int) ;
 int stub17 (struct btc_coexist*,int,int,int) ;
 int stub18 (struct btc_coexist*,int) ;
 int stub19 (struct btc_coexist*,int,int) ;
 int stub2 (struct btc_coexist*,int ,int*) ;
 int stub20 (struct btc_coexist*,int) ;
 int stub21 (struct btc_coexist*,int,int,int*) ;
 int stub22 (struct btc_coexist*,int) ;
 int stub23 (struct btc_coexist*,int,int) ;
 int stub24 (struct btc_coexist*,int) ;
 int stub25 (struct btc_coexist*,int,int) ;
 int stub26 (struct btc_coexist*,int,int,int) ;
 int stub27 (struct btc_coexist*,int) ;
 int stub28 (struct btc_coexist*,int,int) ;
 int stub29 (struct btc_coexist*,int,int) ;
 int stub3 (struct btc_coexist*,int ,int,int,int) ;
 int stub30 (struct btc_coexist*,int,int,int*) ;
 int stub31 (struct btc_coexist*,int,int,int*) ;
 int stub32 (struct btc_coexist*,int,int,int) ;
 int stub33 (struct btc_coexist*,int,int,int) ;
 int stub34 (struct btc_coexist*,int,int,int) ;
 int stub35 (struct btc_coexist*,int,int,int) ;
 int stub36 (struct btc_coexist*,int,int,int) ;
 int stub37 (struct btc_coexist*,int,int,int) ;
 int stub38 (struct btc_coexist*,int) ;
 int stub39 (struct btc_coexist*,int,int) ;
 int stub4 (struct btc_coexist*,int,int,int*) ;
 int stub40 (struct btc_coexist*,int,int,int) ;
 int stub41 (struct btc_coexist*,int,int,int*) ;
 int stub42 (struct btc_coexist*,int,int,int*) ;
 int stub43 (struct btc_coexist*,int,int) ;
 int stub44 (struct btc_coexist*,int,int) ;
 int stub45 (struct btc_coexist*,int,int) ;
 int stub46 (struct btc_coexist*,int,int) ;
 int stub47 (struct btc_coexist*,int,int) ;
 int stub48 (struct btc_coexist*,int,int) ;
 int stub5 (struct btc_coexist*,int,int) ;
 int stub6 (struct btc_coexist*,int,int) ;
 int stub7 (struct btc_coexist*,int,int,int) ;
 int stub8 (struct btc_coexist*,int,int,int) ;
 int stub9 (struct btc_coexist*,int,int) ;

__attribute__((used)) static void halbtc8723b1ant_set_ant_path(struct btc_coexist *btcoexist,
      u8 ant_pos_type, bool force_exec,
      bool init_hw_cfg, bool wifi_off)
{
 struct rtl_priv *rtlpriv = btcoexist->adapter;
 struct btc_board_info *board_info = &btcoexist->board_info;
 u32 fw_ver = 0, u32tmp = 0, cnt_bt_cal_chk = 0;
 bool pg_ext_switch = 0;
 bool use_ext_switch = 0;
 bool is_in_mp_mode = 0;
 u8 h2c_parameter[2] = {0}, u8tmp = 0;

 coex_dm->cur_ant_pos_type = ant_pos_type;

 btcoexist->btc_get(btcoexist, BTC_GET_BL_EXT_SWITCH, &pg_ext_switch);

 btcoexist->btc_get(btcoexist, BTC_GET_U4_WIFI_FW_VER, &fw_ver);

 if ((fw_ver < 0xc0000) || pg_ext_switch)
  use_ext_switch = 1;

 if (init_hw_cfg) {

  btcoexist->btc_set_rf_reg(btcoexist, BTC_RF_A, 0x1, 0xfffff,
       0x780);




  if (fw_ver >= 0x180000) {

   h2c_parameter[0] = 1;
   btcoexist->btc_fill_h2c(btcoexist, 0x6E, 1,
      h2c_parameter);
  } else {

   btcoexist->btc_write_1byte(btcoexist, 0x765, 0x18);
  }

  btcoexist->btc_write_1byte(btcoexist, 0x76e, 0x4);


  btcoexist->btc_write_1byte_bitmask(btcoexist, 0x67, 0x20, 0x0);
  btcoexist->btc_write_1byte_bitmask(btcoexist, 0x39, 0x8, 0x1);
  btcoexist->btc_write_1byte(btcoexist, 0x974, 0xff);
  btcoexist->btc_write_1byte_bitmask(btcoexist, 0x944, 0x3, 0x3);
  btcoexist->btc_write_1byte(btcoexist, 0x930, 0x77);
 } else if (wifi_off) {
  if (fw_ver >= 0x180000) {

   h2c_parameter[0] = 1;
   btcoexist->btc_fill_h2c(btcoexist, 0x6E, 1,
      h2c_parameter);
  } else {

   btcoexist->btc_write_1byte(btcoexist, 0x765, 0x18);
  }

  btcoexist->btc_write_1byte(btcoexist, 0x76e, 0x4);

  btcoexist->btc_get(btcoexist, BTC_GET_BL_WIFI_IS_IN_MP_MODE,
       &is_in_mp_mode);
  if (!is_in_mp_mode)

   btcoexist->btc_write_1byte_bitmask(btcoexist, 0x67,
          0x20, 0x0);
  else

   btcoexist->btc_write_1byte_bitmask(btcoexist, 0x67,
          0x20, 0x1);




  u32tmp = btcoexist->btc_read_4byte(btcoexist, 0x4c);
  u32tmp &= ~BIT23;
  u32tmp &= ~BIT24;
  btcoexist->btc_write_4byte(btcoexist, 0x4c, u32tmp);
 } else {

  if (fw_ver >= 0x180000) {
   if (btcoexist->btc_read_1byte(btcoexist, 0x765) != 0) {
    h2c_parameter[0] = 0;
    btcoexist->btc_fill_h2c(btcoexist, 0x6E, 1,
       h2c_parameter);
   }
  } else {

   while (cnt_bt_cal_chk <= 20) {
    u8tmp = btcoexist->btc_read_1byte(btcoexist,
          0x49d);
    cnt_bt_cal_chk++;
    if (u8tmp & BIT(0)) {
     RT_TRACE(rtlpriv, COMP_BT_COEXIST,
       DBG_LOUD,
       "[BTCoex], ########### BT is calibrating (wait cnt=%d) ###########\n",
       cnt_bt_cal_chk);
     mdelay(50);
    } else {
     RT_TRACE(rtlpriv, COMP_BT_COEXIST,
       DBG_LOUD,
       "[BTCoex], ********** BT is NOT calibrating (wait cnt=%d)**********\n",
       cnt_bt_cal_chk);
     break;
    }
   }


   btcoexist->btc_write_1byte(btcoexist, 0x765, 0x0);
  }

  if (btcoexist->btc_read_1byte(btcoexist, 0x76e) != 0xc) {

   btcoexist->btc_write_1byte(btcoexist, 0x76e, 0xc);
  }

  btcoexist->btc_write_1byte_bitmask(
   btcoexist, 0x67, 0x20,
   0x1);
 }

 if (use_ext_switch) {
  if (init_hw_cfg) {



   u32tmp = btcoexist->btc_read_4byte(btcoexist, 0x4c);
   u32tmp &= ~BIT23;
   u32tmp |= BIT24;
   btcoexist->btc_write_4byte(btcoexist, 0x4c, u32tmp);


   btcoexist->btc_write_4byte(btcoexist, 0x948, 0x0);

   if (board_info->btdm_ant_pos ==
       BTC_ANTENNA_AT_MAIN_PORT) {

    h2c_parameter[0] = 0;

    h2c_parameter[1] = 1;
    btcoexist->btc_fill_h2c(btcoexist, 0x65, 2,
       h2c_parameter);
   } else {

    h2c_parameter[0] = 1;

    h2c_parameter[1] = 1;
    btcoexist->btc_fill_h2c(btcoexist, 0x65, 2,
       h2c_parameter);
   }
  }

  if (force_exec ||
      (coex_dm->cur_ant_pos_type != coex_dm->pre_ant_pos_type)) {

   switch (ant_pos_type) {
   case 128:
    if (board_info->btdm_ant_pos ==
        BTC_ANTENNA_AT_MAIN_PORT)
     btcoexist->btc_write_1byte_bitmask(
      btcoexist, 0x92c, 0x3, 0x1);
    else
     btcoexist->btc_write_1byte_bitmask(
      btcoexist, 0x92c, 0x3, 0x2);
    break;
   case 130:
    if (board_info->btdm_ant_pos ==
        BTC_ANTENNA_AT_MAIN_PORT)
     btcoexist->btc_write_1byte_bitmask(
      btcoexist, 0x92c, 0x3, 0x2);
    else
     btcoexist->btc_write_1byte_bitmask(
      btcoexist, 0x92c, 0x3, 0x1);
    break;
   default:
   case 129:
    if (board_info->btdm_ant_pos ==
        BTC_ANTENNA_AT_MAIN_PORT)
     btcoexist->btc_write_1byte_bitmask(
      btcoexist, 0x92c, 0x3, 0x1);
    else
     btcoexist->btc_write_1byte_bitmask(
      btcoexist, 0x92c, 0x3, 0x2);
    break;
   }
  }
 } else {
  if (init_hw_cfg) {



   u32tmp = btcoexist->btc_read_4byte(btcoexist, 0x4c);
   u32tmp |= BIT23;
   u32tmp &= ~BIT24;
   btcoexist->btc_write_4byte(btcoexist, 0x4c, u32tmp);


   btcoexist->btc_write_1byte_bitmask(btcoexist, 0x64, 0x1,
          0x0);

   if (board_info->btdm_ant_pos ==
       BTC_ANTENNA_AT_MAIN_PORT) {

    h2c_parameter[0] = 0;

    h2c_parameter[1] = 0;
    btcoexist->btc_fill_h2c(btcoexist, 0x65, 2,
       h2c_parameter);
   } else {

    h2c_parameter[0] = 1;

    h2c_parameter[1] = 0;
    btcoexist->btc_fill_h2c(btcoexist, 0x65, 2,
       h2c_parameter);
   }
  }

  if (force_exec ||
      (coex_dm->cur_ant_pos_type != coex_dm->pre_ant_pos_type)) {

   switch (ant_pos_type) {
   case 128:
    if (board_info->btdm_ant_pos ==
        BTC_ANTENNA_AT_MAIN_PORT)
     btcoexist->btc_write_4byte(btcoexist,
       0x948, 0x0);
    else
     btcoexist->btc_write_4byte(btcoexist,
       0x948, 0x280);
    break;
   case 130:
    if (board_info->btdm_ant_pos ==
        BTC_ANTENNA_AT_MAIN_PORT)
     btcoexist->btc_write_4byte(btcoexist,
       0x948, 0x280);
    else
     btcoexist->btc_write_4byte(btcoexist,
       0x948, 0x0);
    break;
   default:
   case 129:
    if (board_info->btdm_ant_pos ==
        BTC_ANTENNA_AT_MAIN_PORT)
     btcoexist->btc_write_4byte(btcoexist,
       0x948, 0x200);
    else
     btcoexist->btc_write_4byte(btcoexist,
       0x948, 0x80);
    break;
   }
  }
 }

 coex_dm->pre_ant_pos_type = coex_dm->cur_ant_pos_type;
}
