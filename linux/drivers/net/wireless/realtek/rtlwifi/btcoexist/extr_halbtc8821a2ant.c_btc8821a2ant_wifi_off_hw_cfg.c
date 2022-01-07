
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct btc_coexist {int (* btc_write_1byte ) (struct btc_coexist*,int,int) ;int (* btc_fill_h2c ) (struct btc_coexist*,int,int,int*) ;int (* btc_get ) (struct btc_coexist*,int ,int*) ;int (* btc_set_rf_reg ) (struct btc_coexist*,int ,int,int,int) ;} ;


 int BTC_GET_U4_WIFI_FW_VER ;
 int BTC_RF_A ;
 int stub1 (struct btc_coexist*,int,int) ;
 int stub2 (struct btc_coexist*,int ,int,int,int) ;
 int stub3 (struct btc_coexist*,int ,int*) ;
 int stub4 (struct btc_coexist*,int,int,int*) ;
 int stub5 (struct btc_coexist*,int,int) ;

__attribute__((used)) static void btc8821a2ant_wifi_off_hw_cfg(struct btc_coexist *btcoexist)
{
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
}
