
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct rtl_priv {int dummy; } ;
struct btc_coexist {int (* btc_write_1byte_bitmask ) (struct btc_coexist*,int,int,int ) ;struct rtl_priv* adapter; } ;


 int COMP_BT_COEXIST ;
 int DBG_LOUD ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int ) ;
 int stub1 (struct btc_coexist*,int,int,int ) ;

__attribute__((used)) static void btc8821a2ant_set_dac_swing_reg(struct btc_coexist *btcoexist,
        u32 level)
{
 struct rtl_priv *rtlpriv = btcoexist->adapter;
 u8 val = (u8)level;

 RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
   "[BTCoex], Write SwDacSwing = 0x%x\n", level);
 btcoexist->btc_write_1byte_bitmask(btcoexist, 0xc5b, 0x3e, val);
}
