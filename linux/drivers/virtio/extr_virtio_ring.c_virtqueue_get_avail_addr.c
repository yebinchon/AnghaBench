
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ desc; scalar_t__ avail; } ;
struct TYPE_6__ {TYPE_2__ vring; scalar_t__ queue_dma_addr; } ;
struct TYPE_4__ {scalar_t__ driver_event_dma_addr; } ;
struct vring_virtqueue {TYPE_3__ split; TYPE_1__ packed; scalar_t__ packed_ring; int we_own_ring; } ;
struct virtqueue {int dummy; } ;
typedef scalar_t__ dma_addr_t ;


 int BUG_ON (int) ;
 struct vring_virtqueue* to_vvq (struct virtqueue*) ;

dma_addr_t virtqueue_get_avail_addr(struct virtqueue *_vq)
{
 struct vring_virtqueue *vq = to_vvq(_vq);

 BUG_ON(!vq->we_own_ring);

 if (vq->packed_ring)
  return vq->packed.driver_event_dma_addr;

 return vq->split.queue_dma_addr +
  ((char *)vq->split.vring.avail - (char *)vq->split.vring.desc);
}
