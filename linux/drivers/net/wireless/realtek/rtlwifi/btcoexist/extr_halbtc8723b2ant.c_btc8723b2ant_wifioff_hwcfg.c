
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct btc_coexist {int (* btc_write_1byte_bitmask ) (struct btc_coexist*,int,int,int) ;int (* btc_get ) (struct btc_coexist*,int ,int*) ;int (* btc_write_1byte ) (struct btc_coexist*,int,int) ;int (* btc_fill_h2c ) (struct btc_coexist*,int,int,int*) ;int (* btc_set_rf_reg ) (struct btc_coexist*,int ,int,int,int) ;} ;


 int BTC_GET_BL_WIFI_IS_IN_MP_MODE ;
 int BTC_GET_U4_WIFI_FW_VER ;
 int BTC_RF_A ;
 int stub1 (struct btc_coexist*,int,int) ;
 int stub2 (struct btc_coexist*,int ,int,int,int) ;
 int stub3 (struct btc_coexist*,int ,int*) ;
 int stub4 (struct btc_coexist*,int,int,int*) ;
 int stub5 (struct btc_coexist*,int,int) ;
 int stub6 (struct btc_coexist*,int ,int*) ;
 int stub7 (struct btc_coexist*,int,int,int) ;
 int stub8 (struct btc_coexist*,int,int,int) ;

__attribute__((used)) static void btc8723b2ant_wifioff_hwcfg(struct btc_coexist *btcoexist)
{
 bool is_in_mp_mode = 0;
 u8 h2c_parameter[2] = {0};
 u32 fw_ver = 0;


 btcoexist->btc_write_1byte(btcoexist, 0x76e, 0x4);


 btcoexist->btc_set_rf_reg(btcoexist, BTC_RF_A, 0x1, 0xfffff, 0x780);

 btcoexist->btc_get(btcoexist, BTC_GET_U4_WIFI_FW_VER, &fw_ver);
 if (fw_ver >= 0x180000) {

  h2c_parameter[0] = 1;
  btcoexist->btc_fill_h2c(btcoexist, 0x6E, 1, h2c_parameter);
 } else {
  btcoexist->btc_write_1byte(btcoexist, 0x765, 0x18);
 }

 btcoexist->btc_get(btcoexist, BTC_GET_BL_WIFI_IS_IN_MP_MODE,
      &is_in_mp_mode);
 if (!is_in_mp_mode)

  btcoexist->btc_write_1byte_bitmask(btcoexist, 0x67, 0x20, 0x0);
 else

  btcoexist->btc_write_1byte_bitmask(btcoexist, 0x67, 0x20, 0x1);
}
