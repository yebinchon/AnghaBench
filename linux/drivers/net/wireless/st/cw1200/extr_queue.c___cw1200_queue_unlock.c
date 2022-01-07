
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cw1200_queue_stats {TYPE_1__* priv; } ;
struct cw1200_queue {scalar_t__ tx_locked_cnt; int queue_id; struct cw1200_queue_stats* stats; } ;
struct TYPE_2__ {int hw; } ;


 int BUG_ON (int) ;
 int ieee80211_wake_queue (int ,int ) ;
 int pr_debug (char*,int ) ;

__attribute__((used)) static inline void __cw1200_queue_unlock(struct cw1200_queue *queue)
{
 struct cw1200_queue_stats *stats = queue->stats;
 BUG_ON(!queue->tx_locked_cnt);
 if (--queue->tx_locked_cnt == 0) {
  pr_debug("[TX] Queue %d is unlocked.\n",
    queue->queue_id);
  ieee80211_wake_queue(stats->priv->hw, queue->queue_id);
 }
}
