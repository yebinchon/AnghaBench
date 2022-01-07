
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct ieee80211_hw* hw; } ;
struct rtl_priv {TYPE_3__* cfg; TYPE_1__ mac80211; } ;
struct ieee80211_hw {int dummy; } ;
struct btc_coexist {struct rtl_priv* adapter; } ;
struct TYPE_6__ {TYPE_2__* ops; } ;
struct TYPE_5__ {int (* set_default_port_id_cmd ) (struct ieee80211_hw*) ;} ;


 int stub1 (struct ieee80211_hw*) ;

void halbtc_set_default_port_id_cmd(void *bt_context)
{
 struct btc_coexist *btcoexist = (struct btc_coexist *)bt_context;
 struct rtl_priv *rtlpriv = btcoexist->adapter;
 struct ieee80211_hw *hw = rtlpriv->mac80211.hw;

 if (!rtlpriv->cfg->ops->set_default_port_id_cmd)
  return;

 rtlpriv->cfg->ops->set_default_port_id_cmd(hw);
}
