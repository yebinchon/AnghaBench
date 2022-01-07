
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xenvif_queue {unsigned int id; TYPE_1__* vif; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {struct net_device* dev; } ;


 int netdev_get_tx_queue (struct net_device*,unsigned int) ;
 int netif_tx_queue_stopped (int ) ;

int xenvif_queue_stopped(struct xenvif_queue *queue)
{
 struct net_device *dev = queue->vif->dev;
 unsigned int id = queue->id;
 return netif_tx_queue_stopped(netdev_get_tx_queue(dev, id));
}
