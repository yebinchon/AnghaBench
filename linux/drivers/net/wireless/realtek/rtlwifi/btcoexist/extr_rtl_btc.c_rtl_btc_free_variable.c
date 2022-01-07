
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * wifi_only_context; int * btc_context; } ;
struct rtl_priv {TYPE_1__ btcoexist; } ;


 int kfree (int *) ;

__attribute__((used)) static void rtl_btc_free_variable(struct rtl_priv *rtlpriv)
{
 kfree(rtlpriv->btcoexist.btc_context);
 rtlpriv->btcoexist.btc_context = ((void*)0);

 kfree(rtlpriv->btcoexist.wifi_only_context);
 rtlpriv->btcoexist.wifi_only_context = ((void*)0);
}
