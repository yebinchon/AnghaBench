
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ sring; } ;
struct TYPE_3__ {scalar_t__ sring; } ;
struct xenvif_queue {TYPE_2__ rx; int vif; TYPE_1__ tx; } ;


 int xenbus_unmap_ring_vfree (int ,scalar_t__) ;
 int xenvif_to_xenbus_device (int ) ;

void xenvif_unmap_frontend_data_rings(struct xenvif_queue *queue)
{
 if (queue->tx.sring)
  xenbus_unmap_ring_vfree(xenvif_to_xenbus_device(queue->vif),
     queue->tx.sring);
 if (queue->rx.sring)
  xenbus_unmap_ring_vfree(xenvif_to_xenbus_device(queue->vif),
     queue->rx.sring);
}
