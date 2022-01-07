
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_5__ {TYPE_1__* driver; } ;
struct TYPE_6__ {int used_wrap_counter; int event_flags_shadow; TYPE_2__ vring; } ;
struct vring_virtqueue {int last_used_idx; TYPE_3__ packed; scalar_t__ event; int weak_barriers; } ;
struct virtqueue {int dummy; } ;
struct TYPE_4__ {void* flags; void* off_wrap; } ;


 int END_USE (struct vring_virtqueue*) ;
 int START_USE (struct vring_virtqueue*) ;
 int VRING_PACKED_EVENT_FLAG_DESC ;
 int VRING_PACKED_EVENT_FLAG_DISABLE ;
 int VRING_PACKED_EVENT_FLAG_ENABLE ;
 int VRING_PACKED_EVENT_F_WRAP_CTR ;
 void* cpu_to_le16 (int) ;
 struct vring_virtqueue* to_vvq (struct virtqueue*) ;
 int virtio_wmb (int ) ;

__attribute__((used)) static unsigned virtqueue_enable_cb_prepare_packed(struct virtqueue *_vq)
{
 struct vring_virtqueue *vq = to_vvq(_vq);

 START_USE(vq);






 if (vq->event) {
  vq->packed.vring.driver->off_wrap =
   cpu_to_le16(vq->last_used_idx |
    (vq->packed.used_wrap_counter <<
     VRING_PACKED_EVENT_F_WRAP_CTR));




  virtio_wmb(vq->weak_barriers);
 }

 if (vq->packed.event_flags_shadow == VRING_PACKED_EVENT_FLAG_DISABLE) {
  vq->packed.event_flags_shadow = vq->event ?
    VRING_PACKED_EVENT_FLAG_DESC :
    VRING_PACKED_EVENT_FLAG_ENABLE;
  vq->packed.vring.driver->flags =
    cpu_to_le16(vq->packed.event_flags_shadow);
 }

 END_USE(vq);
 return vq->last_used_idx | ((u16)vq->packed.used_wrap_counter <<
   VRING_PACKED_EVENT_F_WRAP_CTR);
}
