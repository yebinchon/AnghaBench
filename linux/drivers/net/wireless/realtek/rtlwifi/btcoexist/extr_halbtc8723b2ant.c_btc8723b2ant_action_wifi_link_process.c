
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct rtl_priv {int dummy; } ;
struct btc_coexist {int (* btc_read_1byte ) (struct btc_coexist*,int) ;int (* btc_read_4byte ) (struct btc_coexist*,int) ;struct rtl_priv* adapter; } ;


 int COMP_BT_COEXIST ;
 int DBG_LOUD ;
 int NORMAL_EXEC ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int ,int ,int ) ;
 int btc8723b2ant_coex_table_with_type (struct btc_coexist*,int ,int) ;
 int btc8723b2ant_ps_tdma (struct btc_coexist*,int ,int,int) ;
 int btc8723b2ant_sw_mechanism (struct btc_coexist*,int,int,int,int) ;
 int stub1 (struct btc_coexist*,int) ;
 int stub2 (struct btc_coexist*,int) ;
 int stub3 (struct btc_coexist*,int) ;

__attribute__((used)) static void btc8723b2ant_action_wifi_link_process(struct btc_coexist
           *btcoexist)
{
 struct rtl_priv *rtlpriv = btcoexist->adapter;
 u32 u32tmp;
 u8 u8tmpa, u8tmpb;

 btc8723b2ant_coex_table_with_type(btcoexist, NORMAL_EXEC, 15);
 btc8723b2ant_ps_tdma(btcoexist, NORMAL_EXEC, 1, 22);

 btc8723b2ant_sw_mechanism(btcoexist, 0, 0, 0, 0);

 u32tmp = btcoexist->btc_read_4byte(btcoexist, 0x948);
 u8tmpa = btcoexist->btc_read_1byte(btcoexist, 0x765);
 u8tmpb = btcoexist->btc_read_1byte(btcoexist, 0x76e);

 RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
   "[BTCoex], 0x948 = 0x%x, 0x765 = 0x%x, 0x76e = 0x%x\n",
   u32tmp, u8tmpa, u8tmpb);
}
