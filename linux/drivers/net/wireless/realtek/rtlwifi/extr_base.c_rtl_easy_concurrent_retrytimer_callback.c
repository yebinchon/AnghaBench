
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct rtl_priv {TYPE_2__* cfg; struct rtl_priv* buddy_priv; struct ieee80211_hw* hw; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_6__ {int dualmac_easyconcurrent_retrytimer; } ;
struct TYPE_5__ {TYPE_1__* ops; } ;
struct TYPE_4__ {int (* dualmac_easy_concurrent ) (struct ieee80211_hw*) ;} ;


 struct rtl_priv* from_timer (int ,struct timer_list*,int ) ;
 struct rtl_priv* rtlpriv ;
 int stub1 (struct ieee80211_hw*) ;
 TYPE_3__ works ;

void rtl_easy_concurrent_retrytimer_callback(struct timer_list *t)
{
 struct rtl_priv *rtlpriv =
  from_timer(rtlpriv, t, works.dualmac_easyconcurrent_retrytimer);
 struct ieee80211_hw *hw = rtlpriv->hw;
 struct rtl_priv *buddy_priv = rtlpriv->buddy_priv;

 if (buddy_priv == ((void*)0))
  return;

 rtlpriv->cfg->ops->dualmac_easy_concurrent(hw);
}
