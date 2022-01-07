
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_7__ {int num; TYPE_2__* driver; } ;
struct TYPE_8__ {int used_wrap_counter; int event_flags_shadow; TYPE_3__ vring; } ;
struct TYPE_5__ {int num_free; } ;
struct vring_virtqueue {int last_used_idx; TYPE_4__ packed; int weak_barriers; scalar_t__ event; TYPE_1__ vq; } ;
struct virtqueue {int dummy; } ;
struct TYPE_6__ {void* flags; void* off_wrap; } ;


 int END_USE (struct vring_virtqueue*) ;
 int START_USE (struct vring_virtqueue*) ;
 int VRING_PACKED_EVENT_FLAG_DESC ;
 int VRING_PACKED_EVENT_FLAG_DISABLE ;
 int VRING_PACKED_EVENT_FLAG_ENABLE ;
 int VRING_PACKED_EVENT_F_WRAP_CTR ;
 void* cpu_to_le16 (int) ;
 scalar_t__ is_used_desc_packed (struct vring_virtqueue*,int,int) ;
 struct vring_virtqueue* to_vvq (struct virtqueue*) ;
 int virtio_mb (int ) ;
 int virtio_wmb (int ) ;

__attribute__((used)) static bool virtqueue_enable_cb_delayed_packed(struct virtqueue *_vq)
{
 struct vring_virtqueue *vq = to_vvq(_vq);
 u16 used_idx, wrap_counter;
 u16 bufs;

 START_USE(vq);






 if (vq->event) {

  bufs = (vq->packed.vring.num - vq->vq.num_free) * 3 / 4;
  wrap_counter = vq->packed.used_wrap_counter;

  used_idx = vq->last_used_idx + bufs;
  if (used_idx >= vq->packed.vring.num) {
   used_idx -= vq->packed.vring.num;
   wrap_counter ^= 1;
  }

  vq->packed.vring.driver->off_wrap = cpu_to_le16(used_idx |
   (wrap_counter << VRING_PACKED_EVENT_F_WRAP_CTR));





  virtio_wmb(vq->weak_barriers);
 }

 if (vq->packed.event_flags_shadow == VRING_PACKED_EVENT_FLAG_DISABLE) {
  vq->packed.event_flags_shadow = vq->event ?
    VRING_PACKED_EVENT_FLAG_DESC :
    VRING_PACKED_EVENT_FLAG_ENABLE;
  vq->packed.vring.driver->flags =
    cpu_to_le16(vq->packed.event_flags_shadow);
 }





 virtio_mb(vq->weak_barriers);

 if (is_used_desc_packed(vq,
    vq->last_used_idx,
    vq->packed.used_wrap_counter)) {
  END_USE(vq);
  return 0;
 }

 END_USE(vq);
 return 1;
}
