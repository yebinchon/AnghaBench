
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtl_priv {int dummy; } ;
struct btc_coexist {int (* btc_fill_h2c ) (struct btc_coexist*,int,int,int *) ;struct rtl_priv* adapter; } ;


 int BIT0 ;
 int COMP_BT_COEXIST ;
 int DBG_LOUD ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int ) ;
 int stub1 (struct btc_coexist*,int,int,int *) ;

__attribute__((used)) static void
halbtc8723b1ant_set_fw_ignore_wlan_act(struct btc_coexist *btcoexist,
           bool enable)
{
 struct rtl_priv *rtlpriv = btcoexist->adapter;
 u8 h2c_parameter[1] = {0};

 if (enable)
  h2c_parameter[0] |= BIT0;

 RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
   "[BTCoex], set FW for BT Ignore Wlan_Act, FW write 0x63 = 0x%x\n",
   h2c_parameter[0]);

 btcoexist->btc_fill_h2c(btcoexist, 0x63, 1, h2c_parameter);
}
