
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenvif_queue {int stalled; int last_rx_time; struct xenvif* vif; } ;
struct xenvif {scalar_t__ stalled_queues; int lock; int dev; } ;


 int jiffies ;
 int netdev_info (int ,char*) ;
 int netif_carrier_on (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void xenvif_queue_carrier_on(struct xenvif_queue *queue)
{
 struct xenvif *vif = queue->vif;

 queue->last_rx_time = jiffies;
 queue->stalled = 0;


 spin_lock(&vif->lock);
 if (--vif->stalled_queues == 0) {
  netdev_info(vif->dev, "Guest Rx ready");
  netif_carrier_on(vif->dev);
 }
 spin_unlock(&vif->lock);
}
