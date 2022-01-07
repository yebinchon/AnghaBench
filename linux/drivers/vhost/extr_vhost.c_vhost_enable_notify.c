
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vhost_virtqueue {int used_flags; scalar_t__ avail_idx; TYPE_2__* avail; TYPE_1__* used; } ;
struct vhost_dev {int dummy; } ;
typedef int __virtio16 ;
struct TYPE_4__ {int idx; } ;
struct TYPE_3__ {int flags; } ;


 int VIRTIO_RING_F_EVENT_IDX ;
 int VRING_USED_F_NO_NOTIFY ;
 int smp_mb () ;
 scalar_t__ vhost16_to_cpu (struct vhost_virtqueue*,int ) ;
 int * vhost_avail_event (struct vhost_virtqueue*) ;
 int vhost_get_avail_idx (struct vhost_virtqueue*,int *) ;
 int vhost_has_feature (struct vhost_virtqueue*,int ) ;
 int vhost_update_avail_event (struct vhost_virtqueue*,scalar_t__) ;
 int vhost_update_used_flags (struct vhost_virtqueue*) ;
 int vq_err (struct vhost_virtqueue*,char*,int *,int) ;

bool vhost_enable_notify(struct vhost_dev *dev, struct vhost_virtqueue *vq)
{
 __virtio16 avail_idx;
 int r;

 if (!(vq->used_flags & VRING_USED_F_NO_NOTIFY))
  return 0;
 vq->used_flags &= ~VRING_USED_F_NO_NOTIFY;
 if (!vhost_has_feature(vq, VIRTIO_RING_F_EVENT_IDX)) {
  r = vhost_update_used_flags(vq);
  if (r) {
   vq_err(vq, "Failed to enable notification at %p: %d\n",
          &vq->used->flags, r);
   return 0;
  }
 } else {
  r = vhost_update_avail_event(vq, vq->avail_idx);
  if (r) {
   vq_err(vq, "Failed to update avail event index at %p: %d\n",
          vhost_avail_event(vq), r);
   return 0;
  }
 }


 smp_mb();
 r = vhost_get_avail_idx(vq, &avail_idx);
 if (r) {
  vq_err(vq, "Failed to check avail idx at %p: %d\n",
         &vq->avail->idx, r);
  return 0;
 }

 return vhost16_to_cpu(vq, avail_idx) != vq->avail_idx;
}
