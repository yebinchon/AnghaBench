
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int irq_tasklet; } ;
struct rtl_priv {TYPE_3__* cfg; TYPE_1__ works; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_6__ {TYPE_2__* ops; } ;
struct TYPE_5__ {int (* hw_disable ) (struct ieee80211_hw*) ;int (* disable_interrupt ) (struct ieee80211_hw*) ;} ;


 int rtl_deinit_deferred_work (struct ieee80211_hw*,int) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int stub1 (struct ieee80211_hw*) ;
 int stub2 (struct ieee80211_hw*) ;
 int tasklet_kill (int *) ;

bool rtl_ps_disable_nic(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);


 rtl_deinit_deferred_work(hw, 1);


 rtlpriv->cfg->ops->disable_interrupt(hw);
 tasklet_kill(&rtlpriv->works.irq_tasklet);


 rtlpriv->cfg->ops->hw_disable(hw);

 return 1;
}
