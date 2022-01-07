
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ieee80211_hw {struct cw1200_common* priv; } ;
struct cw1200_suspend_state {int beacon_skipping; int link_id_gc; int direct_probe; int join_tmo; int bss_loss_tmo; int prev_ps_mode; } ;
struct cw1200_pm_state {struct cw1200_suspend_state* suspend_state; } ;
struct TYPE_7__ {int probe_work; int lock; } ;
struct TYPE_8__ {int mode; } ;
struct cw1200_common {scalar_t__ join_status; int beacon_int; int join_dtim_period; int conf_mutex; int link_id_gc_work; TYPE_3__ scan; int join_timeout; int bss_loss_work; TYPE_4__ powersave_mode; TYPE_2__* vif; int hwbus_priv; TYPE_1__* hwbus_ops; struct cw1200_pm_state pm_state; } ;
struct TYPE_6__ {int p2p; } ;
struct TYPE_5__ {int (* power_mgmt ) (int ,int) ;} ;


 scalar_t__ CW1200_JOIN_STATUS_STA ;
 int MAX_BEACON_SKIP_TIME_MS ;
 int WARN_ON (int ) ;
 int cw1200_bh_resume (struct cw1200_common*) ;
 int cw1200_ether_type_filter_off ;
 int cw1200_resume_work (struct cw1200_common*,int *,int ) ;
 int cw1200_set_pm (struct cw1200_common*,TYPE_4__*) ;
 int cw1200_udp_port_filter_off ;
 int kfree (struct cw1200_suspend_state*) ;
 int mutex_unlock (int *) ;
 int stub1 (int ,int) ;
 int up (int *) ;
 int wsm_set_beacon_wakeup_period (struct cw1200_common*,int,int ) ;
 int wsm_set_ether_type_filter (struct cw1200_common*,int *) ;
 int wsm_set_udp_port_filter (struct cw1200_common*,int *) ;
 int wsm_unlock_tx (struct cw1200_common*) ;

int cw1200_wow_resume(struct ieee80211_hw *hw)
{
 struct cw1200_common *priv = hw->priv;
 struct cw1200_pm_state *pm_state = &priv->pm_state;
 struct cw1200_suspend_state *state;

 state = pm_state->suspend_state;
 pm_state->suspend_state = ((void*)0);


 priv->hwbus_ops->power_mgmt(priv->hwbus_priv, 0);





 up(&priv->scan.lock);


 WARN_ON(cw1200_bh_resume(priv));


 if (!priv->vif->p2p && priv->join_status == CW1200_JOIN_STATUS_STA) {
  priv->powersave_mode.mode = state->prev_ps_mode;
  cw1200_set_pm(priv, &priv->powersave_mode);
 }

 if (state->beacon_skipping) {
  wsm_set_beacon_wakeup_period(priv, priv->beacon_int *
          priv->join_dtim_period >
          MAX_BEACON_SKIP_TIME_MS ? 1 :
          priv->join_dtim_period, 0);
  state->beacon_skipping = 0;
 }


 cw1200_resume_work(priv, &priv->bss_loss_work,
      state->bss_loss_tmo);
 cw1200_resume_work(priv, &priv->join_timeout,
      state->join_tmo);
 cw1200_resume_work(priv, &priv->scan.probe_work,
      state->direct_probe);
 cw1200_resume_work(priv, &priv->link_id_gc_work,
      state->link_id_gc);


 wsm_set_udp_port_filter(priv, &cw1200_udp_port_filter_off);


 wsm_set_ether_type_filter(priv, &cw1200_ether_type_filter_off);


 wsm_unlock_tx(priv);


 mutex_unlock(&priv->conf_mutex);


 kfree(state);

 return 0;
}
