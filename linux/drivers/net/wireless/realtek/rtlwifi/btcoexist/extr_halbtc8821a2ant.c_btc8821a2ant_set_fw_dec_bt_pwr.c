
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtl_priv {int dummy; } ;
struct btc_coexist {int (* btc_fill_h2c ) (struct btc_coexist*,int,int,int *) ;struct rtl_priv* adapter; } ;


 int COMP_BT_COEXIST ;
 int DBG_LOUD ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int ,int ) ;
 int stub1 (struct btc_coexist*,int,int,int *) ;

__attribute__((used)) static void btc8821a2ant_set_fw_dec_bt_pwr(struct btc_coexist *btcoexist,
        u8 dec_bt_pwr_lvl)
{
 struct rtl_priv *rtlpriv = btcoexist->adapter;
 u8 h2c_parameter[1] = {0};

 h2c_parameter[0] = dec_bt_pwr_lvl;

 RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
   "[BTCoex], decrease Bt Power Level : %u, FW write 0x62 = 0x%x\n",
   dec_bt_pwr_lvl, h2c_parameter[0]);

 btcoexist->btc_fill_h2c(btcoexist, 0x62, 1, h2c_parameter);
}
