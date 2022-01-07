
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_hw {struct cw1200_common* priv; } ;
struct cw1200_common {int pm_state; int tx_queue_stats; int * tx_queue; int * sdd; int * workqueue; int wsm_cmd_buf; int conf_mutex; int mcast_timeout; } ;


 int cw1200_debug_release (struct cw1200_common*) ;
 int cw1200_pm_deinit (int *) ;
 int cw1200_queue_deinit (int *) ;
 int cw1200_queue_stats_deinit (int *) ;
 int cw1200_unregister_bh (struct cw1200_common*) ;
 int del_timer_sync (int *) ;
 int destroy_workqueue (int *) ;
 int ieee80211_unregister_hw (struct ieee80211_hw*) ;
 int mutex_destroy (int *) ;
 int release_firmware (int *) ;
 int wsm_buf_deinit (int *) ;

__attribute__((used)) static void cw1200_unregister_common(struct ieee80211_hw *dev)
{
 struct cw1200_common *priv = dev->priv;
 int i;

 ieee80211_unregister_hw(dev);

 del_timer_sync(&priv->mcast_timeout);
 cw1200_unregister_bh(priv);

 cw1200_debug_release(priv);

 mutex_destroy(&priv->conf_mutex);

 wsm_buf_deinit(&priv->wsm_cmd_buf);

 destroy_workqueue(priv->workqueue);
 priv->workqueue = ((void*)0);

 if (priv->sdd) {
  release_firmware(priv->sdd);
  priv->sdd = ((void*)0);
 }

 for (i = 0; i < 4; ++i)
  cw1200_queue_deinit(&priv->tx_queue[i]);

 cw1200_queue_stats_deinit(&priv->tx_queue_stats);



}
