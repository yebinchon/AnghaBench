
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct cw1200_common* priv; } ;
struct cw1200_common {int link_id_map; int sta_asleep_mask; int pspoll_mask; int multicast_stop_work; int workqueue; int tx_multicast; int multicast_start_work; int buffered_multicasts; } ;
typedef enum sta_notify_cmd { ____Placeholder_sta_notify_cmd } sta_notify_cmd ;


 int BIT (int) ;


 scalar_t__ WARN_ON_ONCE (int) ;
 int cw1200_bh_wakeup (struct cw1200_common*) ;
 int queue_work (int ,int *) ;

__attribute__((used)) static void __cw1200_sta_notify(struct ieee80211_hw *dev,
    struct ieee80211_vif *vif,
    enum sta_notify_cmd notify_cmd,
    int link_id)
{
 struct cw1200_common *priv = dev->priv;
 u32 bit, prev;


 if (link_id)
  bit = BIT(link_id);
 else if (WARN_ON_ONCE(notify_cmd != 129))
  bit = 0;
 else
  bit = priv->link_id_map;
 prev = priv->sta_asleep_mask & bit;

 switch (notify_cmd) {
 case 128:
  if (!prev) {
   if (priv->buffered_multicasts &&
       !priv->sta_asleep_mask)
    queue_work(priv->workqueue,
        &priv->multicast_start_work);
   priv->sta_asleep_mask |= bit;
  }
  break;
 case 129:
  if (prev) {
   priv->sta_asleep_mask &= ~bit;
   priv->pspoll_mask &= ~bit;
   if (priv->tx_multicast && link_id &&
       !priv->sta_asleep_mask)
    queue_work(priv->workqueue,
        &priv->multicast_stop_work);
   cw1200_bh_wakeup(priv);
  }
  break;
 }
}
