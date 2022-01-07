
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int wait_link_id_empty; } ;
struct cw1200_common {TYPE_1__ tx_queue_stats; int * tx_queue; } ;


 int ETIMEDOUT ;
 int HZ ;
 int cw1200_queue_clear (int *) ;
 int cw1200_queue_stats_is_empty (TYPE_1__*,int) ;
 int wait_event_timeout (int ,int ,int) ;
 int wsm_lock_tx (struct cw1200_common*) ;
 int wsm_unlock_tx (struct cw1200_common*) ;

__attribute__((used)) static int __cw1200_flush(struct cw1200_common *priv, bool drop)
{
 int i, ret;

 for (;;) {



  if (drop) {
   for (i = 0; i < 4; ++i)
    cw1200_queue_clear(&priv->tx_queue[i]);
  } else {
   ret = wait_event_timeout(
    priv->tx_queue_stats.wait_link_id_empty,
    cw1200_queue_stats_is_empty(
     &priv->tx_queue_stats, -1),
    2 * HZ);
  }

  if (!drop && ret <= 0) {
   ret = -ETIMEDOUT;
   break;
  } else {
   ret = 0;
  }

  wsm_lock_tx(priv);
  if (!cw1200_queue_stats_is_empty(&priv->tx_queue_stats, -1)) {

   wsm_unlock_tx(priv);
   continue;
  }
  break;
 }
 return ret;
}
