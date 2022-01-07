
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct ieee80211_hw {struct cw1200_common* priv; } ;
struct cw1200_suspend_state {scalar_t__ prev_ps_mode; int beacon_skipping; void* link_id_gc; void* direct_probe; void* join_tmo; void* bss_loss_tmo; } ;
struct cw1200_pm_state {struct cw1200_suspend_state* suspend_state; int lock; int stay_awake; } ;
struct TYPE_13__ {int lock; int probe_work; } ;
struct TYPE_15__ {scalar_t__ mode; } ;
struct TYPE_9__ {scalar_t__ num_queued; } ;
struct cw1200_common {scalar_t__ join_status; int join_dtim_period; int conf_mutex; TYPE_5__ scan; int link_id_gc_work; int join_timeout; int bss_loss_work; int bh_rx; TYPE_4__* hw; int hwbus_priv; TYPE_3__* hwbus_ops; int mcast_timeout; int has_multicast_subscription; int recent_scan; int clear_recent_scan_work; int ps_mode_switch_in_progress; int ps_mode_switch_done; TYPE_7__ powersave_mode; TYPE_2__* vif; int hw_bufs_used; int bh_evt_wq; scalar_t__ join_pending; scalar_t__ channel_switch_in_progress; TYPE_1__ tx_queue_stats; struct cw1200_pm_state pm_state; } ;
struct cfg80211_wowlan {int dummy; } ;
struct TYPE_16__ {int hdr; } ;
struct TYPE_14__ {int hdr; } ;
struct TYPE_12__ {int wiphy; } ;
struct TYPE_11__ {int (* power_mgmt ) (int ,int) ;} ;
struct TYPE_10__ {int p2p; } ;


 int CW1200_BEACON_SKIPPING_MULTIPLIER ;
 scalar_t__ CW1200_JOIN_STATUS_STA ;
 int EAGAIN ;
 int EBUSY ;
 int GFP_KERNEL ;
 int HZ ;
 int WARN_ON (int ) ;
 scalar_t__ WSM_PSM_PS ;
 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int cancel_delayed_work_sync (int *) ;
 int cw1200_bh_resume (struct cw1200_common*) ;
 scalar_t__ cw1200_bh_suspend (struct cw1200_common*) ;
 int cw1200_ether_type_filter_off ;
 TYPE_8__ cw1200_ether_type_filter_on ;
 int cw1200_resume_work (struct cw1200_common*,int *,void*) ;
 int cw1200_set_pm (struct cw1200_common*,TYPE_7__*) ;
 void* cw1200_suspend_work (int *) ;
 int cw1200_udp_port_filter_off ;
 TYPE_6__ cw1200_udp_port_filter_on ;
 int cw1200_wow_resume (struct ieee80211_hw*) ;
 scalar_t__ down_trylock (int *) ;
 int kfree (struct cw1200_suspend_state*) ;
 struct cw1200_suspend_state* kzalloc (int,int ) ;
 int mutex_trylock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (int ,int) ;
 int timer_pending (int *) ;
 int up (int *) ;
 scalar_t__ wait_event_interruptible_timeout (int ,int,int) ;
 scalar_t__ wait_event_timeout (int ,int,int) ;
 int wiphy_err (int ,char*,int) ;
 int wsm_lock_tx_async (struct cw1200_common*) ;
 int wsm_set_beacon_wakeup_period (struct cw1200_common*,int,int) ;
 int wsm_set_ether_type_filter (struct cw1200_common*,int *) ;
 int wsm_set_udp_port_filter (struct cw1200_common*,int *) ;
 int wsm_unlock_tx (struct cw1200_common*) ;

int cw1200_wow_suspend(struct ieee80211_hw *hw, struct cfg80211_wowlan *wowlan)
{
 struct cw1200_common *priv = hw->priv;
 struct cw1200_pm_state *pm_state = &priv->pm_state;
 struct cw1200_suspend_state *state;
 int ret;

 spin_lock_bh(&pm_state->lock);
 ret = timer_pending(&pm_state->stay_awake);
 spin_unlock_bh(&pm_state->lock);
 if (ret)
  return -EAGAIN;


 if (priv->tx_queue_stats.num_queued)
  return -EBUSY;


 if (!mutex_trylock(&priv->conf_mutex))
  return -EBUSY;





 if (priv->channel_switch_in_progress)
  goto revert1;


 if (priv->join_pending)
  goto revert1;


 if (down_trylock(&priv->scan.lock))
  goto revert1;


 wsm_lock_tx_async(priv);




 if (wait_event_timeout(priv->bh_evt_wq,
          !priv->hw_bufs_used, HZ / 10) <= 0)
  goto revert2;


 wsm_set_udp_port_filter(priv, &cw1200_udp_port_filter_on.hdr);


 wsm_set_ether_type_filter(priv, &cw1200_ether_type_filter_on.hdr);


 state = kzalloc(sizeof(struct cw1200_suspend_state), GFP_KERNEL);
 if (!state)
  goto revert3;


 if (!priv->vif->p2p &&
     priv->join_status == CW1200_JOIN_STATUS_STA &&
     priv->powersave_mode.mode != WSM_PSM_PS) {
  state->prev_ps_mode = priv->powersave_mode.mode;
  priv->powersave_mode.mode = WSM_PSM_PS;
  cw1200_set_pm(priv, &priv->powersave_mode);
  if (wait_event_interruptible_timeout(priv->ps_mode_switch_done,
           !priv->ps_mode_switch_in_progress, 1*HZ) <= 0) {
   goto revert4;
  }
 }


 state->bss_loss_tmo =
  cw1200_suspend_work(&priv->bss_loss_work);
 state->join_tmo =
  cw1200_suspend_work(&priv->join_timeout);
 state->direct_probe =
  cw1200_suspend_work(&priv->scan.probe_work);
 state->link_id_gc =
  cw1200_suspend_work(&priv->link_id_gc_work);

 cancel_delayed_work_sync(&priv->clear_recent_scan_work);
 atomic_set(&priv->recent_scan, 0);


 if (priv->join_status == CW1200_JOIN_STATUS_STA &&
     priv->join_dtim_period &&
     !priv->has_multicast_subscription) {
  state->beacon_skipping = 1;
  wsm_set_beacon_wakeup_period(priv,
          priv->join_dtim_period,
          CW1200_BEACON_SKIPPING_MULTIPLIER * priv->join_dtim_period);
 }


 if (cw1200_bh_suspend(priv))
  goto revert5;

 ret = timer_pending(&priv->mcast_timeout);
 if (ret)
  goto revert6;


 pm_state->suspend_state = state;


 ret = priv->hwbus_ops->power_mgmt(priv->hwbus_priv, 1);
 if (ret) {
  wiphy_err(priv->hw->wiphy,
     "PM request failed: %d. WoW is disabled.\n", ret);
  cw1200_wow_resume(hw);
  return -EBUSY;
 }


 if (atomic_read(&priv->bh_rx)) {
  cw1200_wow_resume(hw);
  return -EAGAIN;
 }

 return 0;

revert6:
 WARN_ON(cw1200_bh_resume(priv));
revert5:
 cw1200_resume_work(priv, &priv->bss_loss_work,
      state->bss_loss_tmo);
 cw1200_resume_work(priv, &priv->join_timeout,
      state->join_tmo);
 cw1200_resume_work(priv, &priv->scan.probe_work,
      state->direct_probe);
 cw1200_resume_work(priv, &priv->link_id_gc_work,
      state->link_id_gc);
revert4:
 kfree(state);
revert3:
 wsm_set_udp_port_filter(priv, &cw1200_udp_port_filter_off);
 wsm_set_ether_type_filter(priv, &cw1200_ether_type_filter_off);
revert2:
 wsm_unlock_tx(priv);
 up(&priv->scan.lock);
revert1:
 mutex_unlock(&priv->conf_mutex);
 return -EBUSY;
}
