
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cw1200_common {int bh_error; int bh_wq; int hw_bufs_used; TYPE_1__* hw; int bh_evt_wq; int * tx_queue; int tx_lock; } ;
struct TYPE_2__ {int wiphy; } ;


 int BUG_ON (int) ;
 unsigned long WSM_CMD_LAST_CHANCE_TIMEOUT ;
 int atomic_read (int *) ;
 int cw1200_queue_get_xmit_timestamp (int *,unsigned long*,int) ;
 unsigned long jiffies ;
 int pr_err (char*) ;
 scalar_t__ wait_event_timeout (int ,int,long) ;
 int wake_up (int *) ;
 int wiphy_err (int ,char*,int ) ;

bool wsm_flush_tx(struct cw1200_common *priv)
{
 unsigned long timestamp = jiffies;
 bool pending = 0;
 long timeout;
 int i;


 BUG_ON(!atomic_read(&priv->tx_lock));





 if (!priv->hw_bufs_used)
  return 1;

 if (priv->bh_error) {

  pr_err("[WSM] Fatal error occurred, will not flush TX.\n");
  return 0;
 } else {

  for (i = 0; i < 4; ++i)
   pending |= cw1200_queue_get_xmit_timestamp(
     &priv->tx_queue[i],
     &timestamp, 0xffffffff);

  if (!pending)
   return 1;

  timeout = timestamp + WSM_CMD_LAST_CHANCE_TIMEOUT - jiffies;
  if (timeout < 0 || wait_event_timeout(priv->bh_evt_wq,
            !priv->hw_bufs_used,
            timeout) <= 0) {

   priv->bh_error = 1;
   wiphy_err(priv->hw->wiphy, "[WSM] TX Frames (%d) stuck in firmware, killing BH\n", priv->hw_bufs_used);
   wake_up(&priv->bh_wq);
   return 0;
  }


  return 1;
 }
}
