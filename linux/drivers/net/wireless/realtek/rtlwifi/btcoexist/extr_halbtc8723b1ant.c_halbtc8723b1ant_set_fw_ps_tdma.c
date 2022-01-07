
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct rtl_priv {int dummy; } ;
struct btc_coexist {int (* btc_fill_h2c ) (struct btc_coexist*,int,int,int*) ;int (* btc_get ) (struct btc_coexist*,int ,int*) ;struct rtl_priv* adapter; } ;
struct TYPE_2__ {int* ps_tdma_para; } ;


 int BIT4 ;
 int BIT5 ;
 int BIT6 ;
 int BTC_GET_BL_WIFI_AP_MODE_ENABLE ;
 int COMP_BT_COEXIST ;
 int DBG_LOUD ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,...) ;
 TYPE_1__* coex_dm ;
 int stub1 (struct btc_coexist*,int ,int*) ;
 int stub2 (struct btc_coexist*,int,int,int*) ;

__attribute__((used)) static void halbtc8723b1ant_set_fw_ps_tdma(struct btc_coexist *btcoexist,
        u8 byte1, u8 byte2, u8 byte3,
        u8 byte4, u8 byte5)
{
 struct rtl_priv *rtlpriv = btcoexist->adapter;
 u8 h2c_parameter[5] = {0};
 u8 real_byte1 = byte1, real_byte5 = byte5;
 bool ap_enable = 0;

 btcoexist->btc_get(btcoexist, BTC_GET_BL_WIFI_AP_MODE_ENABLE,
      &ap_enable);

 if (ap_enable) {
  if ((byte1 & BIT4) && !(byte1 & BIT5)) {
   RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
     "[BTCoex], FW for 1Ant AP mode\n");
   real_byte1 &= ~BIT4;
   real_byte1 |= BIT5;

   real_byte5 |= BIT5;
   real_byte5 &= ~BIT6;
  }
 }

 h2c_parameter[0] = real_byte1;
 h2c_parameter[1] = byte2;
 h2c_parameter[2] = byte3;
 h2c_parameter[3] = byte4;
 h2c_parameter[4] = real_byte5;

 coex_dm->ps_tdma_para[0] = real_byte1;
 coex_dm->ps_tdma_para[1] = byte2;
 coex_dm->ps_tdma_para[2] = byte3;
 coex_dm->ps_tdma_para[3] = byte4;
 coex_dm->ps_tdma_para[4] = real_byte5;

 RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
   "[BTCoex], PS-TDMA H2C cmd =0x%x%08x\n",
      h2c_parameter[0],
      h2c_parameter[1] << 24 |
      h2c_parameter[2] << 16 |
      h2c_parameter[3] << 8 |
      h2c_parameter[4]);

 btcoexist->btc_fill_h2c(btcoexist, 0x60, 5, h2c_parameter);
}
