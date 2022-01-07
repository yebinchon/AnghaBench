
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct TYPE_3__ {scalar_t__ num; scalar_t__ device; } ;
struct TYPE_4__ {TYPE_1__ vring; scalar_t__ avail_wrap_counter; scalar_t__ next_avail_idx; } ;
struct vring_virtqueue {TYPE_2__ packed; scalar_t__ num_added; int weak_barriers; } ;
struct virtqueue {int dummy; } ;
typedef scalar_t__ __le16 ;


 int END_USE (struct vring_virtqueue*) ;
 int LAST_ADD_TIME_CHECK (struct vring_virtqueue*) ;
 int LAST_ADD_TIME_INVALID (struct vring_virtqueue*) ;
 int START_USE (struct vring_virtqueue*) ;
 scalar_t__ VRING_PACKED_EVENT_FLAG_DESC ;
 scalar_t__ VRING_PACKED_EVENT_FLAG_DISABLE ;
 scalar_t__ VRING_PACKED_EVENT_F_WRAP_CTR ;
 scalar_t__ le16_to_cpu (scalar_t__) ;
 struct vring_virtqueue* to_vvq (struct virtqueue*) ;
 int virtio_mb (int ) ;
 int vring_need_event (scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static bool virtqueue_kick_prepare_packed(struct virtqueue *_vq)
{
 struct vring_virtqueue *vq = to_vvq(_vq);
 u16 new, old, off_wrap, flags, wrap_counter, event_idx;
 bool needs_kick;
 union {
  struct {
   __le16 off_wrap;
   __le16 flags;
  };
  u32 u32;
 } snapshot;

 START_USE(vq);





 virtio_mb(vq->weak_barriers);

 old = vq->packed.next_avail_idx - vq->num_added;
 new = vq->packed.next_avail_idx;
 vq->num_added = 0;

 snapshot.u32 = *(u32 *)vq->packed.vring.device;
 flags = le16_to_cpu(snapshot.flags);

 LAST_ADD_TIME_CHECK(vq);
 LAST_ADD_TIME_INVALID(vq);

 if (flags != VRING_PACKED_EVENT_FLAG_DESC) {
  needs_kick = (flags != VRING_PACKED_EVENT_FLAG_DISABLE);
  goto out;
 }

 off_wrap = le16_to_cpu(snapshot.off_wrap);

 wrap_counter = off_wrap >> VRING_PACKED_EVENT_F_WRAP_CTR;
 event_idx = off_wrap & ~(1 << VRING_PACKED_EVENT_F_WRAP_CTR);
 if (wrap_counter != vq->packed.avail_wrap_counter)
  event_idx -= vq->packed.vring.num;

 needs_kick = vring_need_event(event_idx, new, old);
out:
 END_USE(vq);
 return needs_kick;
}
