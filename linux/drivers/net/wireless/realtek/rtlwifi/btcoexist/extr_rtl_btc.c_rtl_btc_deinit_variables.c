
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl_priv {int dummy; } ;


 int rtl_btc_free_variable (struct rtl_priv*) ;

void rtl_btc_deinit_variables(struct rtl_priv *rtlpriv)
{
 rtl_btc_free_variable(rtlpriv);
}
