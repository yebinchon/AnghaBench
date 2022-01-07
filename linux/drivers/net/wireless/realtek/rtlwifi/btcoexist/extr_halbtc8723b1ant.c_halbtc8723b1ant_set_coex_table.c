
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct rtl_priv {int dummy; } ;
struct btc_coexist {int (* btc_write_1byte ) (struct btc_coexist*,int,int ) ;int (* btc_write_4byte ) (struct btc_coexist*,int,int ) ;struct rtl_priv* adapter; } ;


 int COMP_BT_COEXIST ;
 int DBG_LOUD ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int ) ;
 int stub1 (struct btc_coexist*,int,int ) ;
 int stub2 (struct btc_coexist*,int,int ) ;
 int stub3 (struct btc_coexist*,int,int ) ;
 int stub4 (struct btc_coexist*,int,int ) ;

__attribute__((used)) static void halbtc8723b1ant_set_coex_table(struct btc_coexist *btcoexist,
        u32 val0x6c0, u32 val0x6c4,
        u32 val0x6c8, u8 val0x6cc)
{
 struct rtl_priv *rtlpriv = btcoexist->adapter;

 RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
   "[BTCoex], set coex table, set 0x6c0 = 0x%x\n", val0x6c0);
 btcoexist->btc_write_4byte(btcoexist, 0x6c0, val0x6c0);

 RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
   "[BTCoex], set coex table, set 0x6c4 = 0x%x\n", val0x6c4);
 btcoexist->btc_write_4byte(btcoexist, 0x6c4, val0x6c4);

 RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
   "[BTCoex], set coex table, set 0x6c8 = 0x%x\n", val0x6c8);
 btcoexist->btc_write_4byte(btcoexist, 0x6c8, val0x6c8);

 RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
   "[BTCoex], set coex table, set 0x6cc = 0x%x\n", val0x6cc);
 btcoexist->btc_write_1byte(btcoexist, 0x6cc, val0x6cc);
}
