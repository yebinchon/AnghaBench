
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int desc; } ;
struct TYPE_10__ {struct vring_virtqueue* desc_state; int queue_dma_addr; TYPE_4__ vring; int queue_size_in_bytes; } ;
struct TYPE_8__ {int vdev; } ;
struct TYPE_6__ {int device; int driver; int desc; } ;
struct TYPE_7__ {struct vring_virtqueue* desc_extra; struct vring_virtqueue* desc_state; int device_event_dma_addr; TYPE_1__ vring; int event_size_in_bytes; int driver_event_dma_addr; int ring_dma_addr; int ring_size_in_bytes; } ;
struct vring_virtqueue {TYPE_5__ split; TYPE_3__ vq; TYPE_2__ packed; scalar_t__ packed_ring; scalar_t__ we_own_ring; } ;
struct virtqueue {int list; } ;


 int kfree (struct vring_virtqueue*) ;
 int list_del (int *) ;
 struct vring_virtqueue* to_vvq (struct virtqueue*) ;
 int vring_free_queue (int ,int ,int ,int ) ;

void vring_del_virtqueue(struct virtqueue *_vq)
{
 struct vring_virtqueue *vq = to_vvq(_vq);

 if (vq->we_own_ring) {
  if (vq->packed_ring) {
   vring_free_queue(vq->vq.vdev,
      vq->packed.ring_size_in_bytes,
      vq->packed.vring.desc,
      vq->packed.ring_dma_addr);

   vring_free_queue(vq->vq.vdev,
      vq->packed.event_size_in_bytes,
      vq->packed.vring.driver,
      vq->packed.driver_event_dma_addr);

   vring_free_queue(vq->vq.vdev,
      vq->packed.event_size_in_bytes,
      vq->packed.vring.device,
      vq->packed.device_event_dma_addr);

   kfree(vq->packed.desc_state);
   kfree(vq->packed.desc_extra);
  } else {
   vring_free_queue(vq->vq.vdev,
      vq->split.queue_size_in_bytes,
      vq->split.vring.desc,
      vq->split.queue_dma_addr);

   kfree(vq->split.desc_state);
  }
 }
 list_del(&_vq->list);
 kfree(vq);
}
