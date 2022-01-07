
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {scalar_t__ data; } ;
struct ieee80211_sta {int drv_priv; } ;
struct ieee80211_pspoll {int ta; int bssid; } ;
struct cw1200_sta_priv {int link_id; } ;
struct cw1200_common {scalar_t__ join_status; int * tx_queue; int pspoll_mask; TYPE_1__* vif; } ;
struct TYPE_2__ {int addr; } ;


 int BIT (int) ;
 scalar_t__ CW1200_JOIN_STATUS_AP ;
 int ETH_ALEN ;
 int cw1200_bh_wakeup (struct cw1200_common*) ;
 scalar_t__ cw1200_queue_get_num_queued (int *,int ) ;
 struct ieee80211_sta* ieee80211_find_sta (TYPE_1__*,int ) ;
 scalar_t__ memcmp (int ,int ,int ) ;
 int pr_debug (char*,char*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static int cw1200_handle_pspoll(struct cw1200_common *priv,
    struct sk_buff *skb)
{
 struct ieee80211_sta *sta;
 struct ieee80211_pspoll *pspoll = (struct ieee80211_pspoll *)skb->data;
 int link_id = 0;
 u32 pspoll_mask = 0;
 int drop = 1;
 int i;

 if (priv->join_status != CW1200_JOIN_STATUS_AP)
  goto done;
 if (memcmp(priv->vif->addr, pspoll->bssid, ETH_ALEN))
  goto done;

 rcu_read_lock();
 sta = ieee80211_find_sta(priv->vif, pspoll->ta);
 if (sta) {
  struct cw1200_sta_priv *sta_priv;
  sta_priv = (struct cw1200_sta_priv *)&sta->drv_priv;
  link_id = sta_priv->link_id;
  pspoll_mask = BIT(sta_priv->link_id);
 }
 rcu_read_unlock();
 if (!link_id)
  goto done;

 priv->pspoll_mask |= pspoll_mask;
 drop = 0;


 for (i = 0; i < 4; ++i) {
  if (cw1200_queue_get_num_queued(&priv->tx_queue[i],
      pspoll_mask)) {
   cw1200_bh_wakeup(priv);
   drop = 1;
   break;
  }
 }
 pr_debug("[RX] PSPOLL: %s\n", drop ? "local" : "fwd");
done:
 return drop;
}
