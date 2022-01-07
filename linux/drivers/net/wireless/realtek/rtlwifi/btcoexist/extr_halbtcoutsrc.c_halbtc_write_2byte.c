
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct rtl_priv {int dummy; } ;
struct btc_coexist {struct rtl_priv* adapter; } ;


 int rtl_write_word (struct rtl_priv*,int ,int ) ;

__attribute__((used)) static void halbtc_write_2byte(void *bt_context, u32 reg_addr, u16 data)
{
 struct btc_coexist *btcoexist = (struct btc_coexist *)bt_context;
 struct rtl_priv *rtlpriv = btcoexist->adapter;

 rtl_write_word(rtlpriv, reg_addr, data);
}
