
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl_priv {int dummy; } ;


 int exhalbtc_bind_bt_coex_withadapter (struct rtl_priv*) ;
 int exhalbtc_initlize_variables (struct rtl_priv*) ;
 int rtl_btc_alloc_variable (struct rtl_priv*,int) ;

void rtl_btc_init_variables(struct rtl_priv *rtlpriv)
{
 rtl_btc_alloc_variable(rtlpriv, 0);

 exhalbtc_initlize_variables(rtlpriv);
 exhalbtc_bind_bt_coex_withadapter(rtlpriv);
}
