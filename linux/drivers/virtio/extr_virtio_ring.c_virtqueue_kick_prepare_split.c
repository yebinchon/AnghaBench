
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_6__ {TYPE_1__* used; } ;
struct TYPE_5__ {TYPE_3__ vring; scalar_t__ avail_idx_shadow; } ;
struct vring_virtqueue {TYPE_2__ split; scalar_t__ event; scalar_t__ num_added; int weak_barriers; } ;
struct virtqueue {int vdev; } ;
struct TYPE_4__ {int flags; } ;


 int END_USE (struct vring_virtqueue*) ;
 int LAST_ADD_TIME_CHECK (struct vring_virtqueue*) ;
 int LAST_ADD_TIME_INVALID (struct vring_virtqueue*) ;
 int START_USE (struct vring_virtqueue*) ;
 int VRING_USED_F_NO_NOTIFY ;
 int cpu_to_virtio16 (int ,int ) ;
 struct vring_virtqueue* to_vvq (struct virtqueue*) ;
 int virtio16_to_cpu (int ,int ) ;
 int virtio_mb (int ) ;
 int vring_avail_event (TYPE_3__*) ;
 int vring_need_event (int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static bool virtqueue_kick_prepare_split(struct virtqueue *_vq)
{
 struct vring_virtqueue *vq = to_vvq(_vq);
 u16 new, old;
 bool needs_kick;

 START_USE(vq);


 virtio_mb(vq->weak_barriers);

 old = vq->split.avail_idx_shadow - vq->num_added;
 new = vq->split.avail_idx_shadow;
 vq->num_added = 0;

 LAST_ADD_TIME_CHECK(vq);
 LAST_ADD_TIME_INVALID(vq);

 if (vq->event) {
  needs_kick = vring_need_event(virtio16_to_cpu(_vq->vdev,
     vring_avail_event(&vq->split.vring)),
           new, old);
 } else {
  needs_kick = !(vq->split.vring.used->flags &
     cpu_to_virtio16(_vq->vdev,
      VRING_USED_F_NO_NOTIFY));
 }
 END_USE(vq);
 return needs_kick;
}
