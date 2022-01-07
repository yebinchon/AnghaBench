
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* avail; } ;
struct TYPE_6__ {int avail_flags_shadow; TYPE_2__ vring; } ;
struct vring_virtqueue {TYPE_3__ split; int event; } ;
struct virtqueue {int vdev; } ;
struct TYPE_4__ {int flags; } ;


 int VRING_AVAIL_F_NO_INTERRUPT ;
 int cpu_to_virtio16 (int ,int) ;
 struct vring_virtqueue* to_vvq (struct virtqueue*) ;

__attribute__((used)) static void virtqueue_disable_cb_split(struct virtqueue *_vq)
{
 struct vring_virtqueue *vq = to_vvq(_vq);

 if (!(vq->split.avail_flags_shadow & VRING_AVAIL_F_NO_INTERRUPT)) {
  vq->split.avail_flags_shadow |= VRING_AVAIL_F_NO_INTERRUPT;
  if (!vq->event)
   vq->split.vring.avail->flags =
    cpu_to_virtio16(_vq->vdev,
      vq->split.avail_flags_shadow);
 }
}
