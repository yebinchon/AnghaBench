
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenvif_queue {int dummy; } ;
struct xenvif {unsigned int num_queues; int dev; struct xenvif_queue* queues; } ;


 int THIS_MODULE ;
 int free_netdev (int ) ;
 int module_put (int ) ;
 int unregister_netdev (int ) ;
 int vfree (struct xenvif_queue*) ;
 int xenvif_deinit_queue (struct xenvif_queue*) ;

void xenvif_free(struct xenvif *vif)
{
 struct xenvif_queue *queues = vif->queues;
 unsigned int num_queues = vif->num_queues;
 unsigned int queue_index;

 unregister_netdev(vif->dev);
 free_netdev(vif->dev);

 for (queue_index = 0; queue_index < num_queues; ++queue_index)
  xenvif_deinit_queue(&queues[queue_index]);
 vfree(queues);

 module_put(THIS_MODULE);
}
