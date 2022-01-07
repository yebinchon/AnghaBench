
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int drv_priv; } ;
struct ieee80211_hw {struct cw1200_common* priv; } ;
struct cw1200_sta_priv {int link_id; } ;
struct cw1200_link_entry {int timestamp; int status; } ;
struct cw1200_common {scalar_t__ mode; int workqueue; int ps_state_lock; int link_id_work; struct cw1200_link_entry* link_id_db; } ;


 int CW1200_LINK_RESERVE ;
 scalar_t__ NL80211_IFTYPE_AP ;
 int flush_workqueue (int ) ;
 int jiffies ;
 scalar_t__ queue_work (int ,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int wsm_lock_tx_async (struct cw1200_common*) ;
 int wsm_unlock_tx (struct cw1200_common*) ;

int cw1200_sta_remove(struct ieee80211_hw *hw, struct ieee80211_vif *vif,
        struct ieee80211_sta *sta)
{
 struct cw1200_common *priv = hw->priv;
 struct cw1200_sta_priv *sta_priv =
   (struct cw1200_sta_priv *)&sta->drv_priv;
 struct cw1200_link_entry *entry;

 if (priv->mode != NL80211_IFTYPE_AP || !sta_priv->link_id)
  return 0;

 entry = &priv->link_id_db[sta_priv->link_id - 1];
 spin_lock_bh(&priv->ps_state_lock);
 entry->status = CW1200_LINK_RESERVE;
 entry->timestamp = jiffies;
 wsm_lock_tx_async(priv);
 if (queue_work(priv->workqueue, &priv->link_id_work) <= 0)
  wsm_unlock_tx(priv);
 spin_unlock_bh(&priv->ps_state_lock);
 flush_workqueue(priv->workqueue);
 return 0;
}
