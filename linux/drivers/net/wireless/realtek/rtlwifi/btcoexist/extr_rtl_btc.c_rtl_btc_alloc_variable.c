
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wifi_only_cfg {int dummy; } ;
struct TYPE_2__ {void* btc_context; void* wifi_only_context; } ;
struct rtl_priv {TYPE_1__ btcoexist; } ;
struct btc_coexist {int dummy; } ;


 int GFP_KERNEL ;
 void* kzalloc (int,int ) ;

__attribute__((used)) static void rtl_btc_alloc_variable(struct rtl_priv *rtlpriv, bool wifi_only)
{
 if (wifi_only)
  rtlpriv->btcoexist.wifi_only_context =
   kzalloc(sizeof(struct wifi_only_cfg), GFP_KERNEL);
 else
  rtlpriv->btcoexist.btc_context =
   kzalloc(sizeof(struct btc_coexist), GFP_KERNEL);
}
