
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cw1200_queue_stats {TYPE_1__* priv; } ;
struct cw1200_queue {int queue_id; int tx_locked_cnt; struct cw1200_queue_stats* stats; } ;
struct TYPE_2__ {int hw; } ;


 int ieee80211_stop_queue (int ,int ) ;
 int pr_debug (char*,int ) ;

__attribute__((used)) static inline void __cw1200_queue_lock(struct cw1200_queue *queue)
{
 struct cw1200_queue_stats *stats = queue->stats;
 if (queue->tx_locked_cnt++ == 0) {
  pr_debug("[TX] Queue %d is locked.\n",
    queue->queue_id);
  ieee80211_stop_queue(stats->priv->hw, queue->queue_id);
 }
}
