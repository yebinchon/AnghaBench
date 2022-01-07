
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenvif_queue {int stalled; struct xenvif* vif; } ;
struct xenvif {int lock; int dev; int stalled_queues; } ;


 int netdev_info (int ,char*) ;
 int netif_carrier_off (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void xenvif_queue_carrier_off(struct xenvif_queue *queue)
{
 struct xenvif *vif = queue->vif;

 queue->stalled = 1;


 spin_lock(&vif->lock);
 if (vif->stalled_queues++ == 0) {
  netdev_info(vif->dev, "Guest Rx stalled");
  netif_carrier_off(vif->dev);
 }
 spin_unlock(&vif->lock);
}
