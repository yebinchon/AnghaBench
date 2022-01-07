
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtl_priv {int dummy; } ;
struct btc_coexist {int (* btc_fill_h2c ) (struct btc_coexist*,int,int,int *) ;struct rtl_priv* adapter; } ;


 int COMP_BT_COEXIST ;
 int DBG_LOUD ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int ) ;
 int stub1 (struct btc_coexist*,int,int,int *) ;

__attribute__((used)) static void btc8723b2ant_set_fw_dac_swing_level(struct btc_coexist *btcoexist,
      u8 dac_swing_lvl)
{
 struct rtl_priv *rtlpriv = btcoexist->adapter;
 u8 h2c_parameter[1] = {0};




 h2c_parameter[0] = dac_swing_lvl;

 RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
   "[BTCoex], Set Dac Swing Level=0x%x\n", dac_swing_lvl);
 RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
   "[BTCoex], FW write 0x64=0x%x\n", h2c_parameter[0]);

 btcoexist->btc_fill_h2c(btcoexist, 0x64, 1, h2c_parameter);
}
