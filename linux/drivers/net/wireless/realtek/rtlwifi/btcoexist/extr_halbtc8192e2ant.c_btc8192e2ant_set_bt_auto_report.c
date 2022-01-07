
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
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,char*,int ) ;
 int stub1 (struct btc_coexist*,int,int,int *) ;

__attribute__((used)) static void btc8192e2ant_set_bt_auto_report(struct btc_coexist *btcoexist,
         bool enable_auto_report)
{
 struct rtl_priv *rtlpriv = btcoexist->adapter;
 u8 h2c_parameter[1] = {0};

 h2c_parameter[0] = 0;

 if (enable_auto_report)
  h2c_parameter[0] |= BIT0;

 RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
   "[BTCoex], BT FW auto report : %s, FW write 0x68 = 0x%x\n",
   (enable_auto_report ? "Enabled!!" : "Disabled!!"),
   h2c_parameter[0]);

 btcoexist->btc_fill_h2c(btcoexist, 0x68, 1, h2c_parameter);
}
