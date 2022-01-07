
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {TYPE_3__* btc_ops; } ;
struct rtl_priv {TYPE_4__ btcoexist; TYPE_2__* cfg; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_7__ {int (* btc_init_hw_config ) (struct rtl_priv*) ;} ;
struct TYPE_6__ {TYPE_1__* ops; } ;
struct TYPE_5__ {scalar_t__ (* get_btc_status ) () ;} ;


 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 scalar_t__ stub1 () ;
 int stub2 (struct rtl_priv*) ;

void rtl92ee_bt_hw_init(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);

 if (rtlpriv->cfg->ops->get_btc_status())
  rtlpriv->btcoexist.btc_ops->btc_init_hw_config(rtlpriv);
}
