
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_hw {struct cw1200_common* priv; } ;
struct TYPE_2__ {int timeout; int probe_work; int lock; int * req; } ;
struct cw1200_common {int listening; int join_pending; int tx_lock; int conf_mutex; int * tx_queue; int join_status; int event_queue_lock; int event_queue; int mode; int mcast_timeout; int workqueue; int link_id_gc_work; int unjoin_work; int join_timeout; int clear_recent_scan_work; TYPE_1__ scan; } ;


 int CW1200_JOIN_STATUS_PASSIVE ;
 int LIST_HEAD (int ) ;
 int NL80211_IFTYPE_UNSPECIFIED ;
 int __cw1200_free_event_queue (int *) ;
 int atomic_xchg (int *,int) ;
 int cancel_delayed_work_sync (int *) ;
 int cancel_work_sync (int *) ;
 int cw1200_cqm_bssloss_sm (struct cw1200_common*,int ,int ,int ) ;
 int cw1200_queue_clear (int *) ;
 int del_timer_sync (int *) ;
 scalar_t__ down_trylock (int *) ;
 int flush_workqueue (int ) ;
 int list ;
 int list_splice_init (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*) ;
 int schedule () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tx_policy_clean (struct cw1200_common*) ;
 int up (int *) ;
 int wsm_lock_tx (struct cw1200_common*) ;
 int wsm_unlock_tx (struct cw1200_common*) ;

void cw1200_stop(struct ieee80211_hw *dev)
{
 struct cw1200_common *priv = dev->priv;
 LIST_HEAD(list);
 int i;

 wsm_lock_tx(priv);

 while (down_trylock(&priv->scan.lock)) {

  priv->scan.req = ((void*)0);
  schedule();
 }
 up(&priv->scan.lock);

 cancel_delayed_work_sync(&priv->scan.probe_work);
 cancel_delayed_work_sync(&priv->scan.timeout);
 cancel_delayed_work_sync(&priv->clear_recent_scan_work);
 cancel_delayed_work_sync(&priv->join_timeout);
 cw1200_cqm_bssloss_sm(priv, 0, 0, 0);
 cancel_work_sync(&priv->unjoin_work);
 cancel_delayed_work_sync(&priv->link_id_gc_work);
 flush_workqueue(priv->workqueue);
 del_timer_sync(&priv->mcast_timeout);
 mutex_lock(&priv->conf_mutex);
 priv->mode = NL80211_IFTYPE_UNSPECIFIED;
 priv->listening = 0;

 spin_lock(&priv->event_queue_lock);
 list_splice_init(&priv->event_queue, &list);
 spin_unlock(&priv->event_queue_lock);
 __cw1200_free_event_queue(&list);


 priv->join_status = CW1200_JOIN_STATUS_PASSIVE;
 priv->join_pending = 0;

 for (i = 0; i < 4; i++)
  cw1200_queue_clear(&priv->tx_queue[i]);
 mutex_unlock(&priv->conf_mutex);
 tx_policy_clean(priv);


 if (atomic_xchg(&priv->tx_lock, 1) != 1)
  pr_debug("[STA] TX is force-unlocked due to stop request.\n");

 wsm_unlock_tx(priv);
 atomic_xchg(&priv->tx_lock, 0);
}
