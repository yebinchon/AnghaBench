
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct rtl_priv {int dummy; } ;
struct btc_coexist {struct rtl_priv* adapter; } ;


 int rtl_read_word (struct rtl_priv*,int ) ;

__attribute__((used)) static u16 halbtc_read_2byte(void *bt_context, u32 reg_addr)
{
 struct btc_coexist *btcoexist = (struct btc_coexist *)bt_context;
 struct rtl_priv *rtlpriv = btcoexist->adapter;

 return rtl_read_word(rtlpriv, reg_addr);
}
