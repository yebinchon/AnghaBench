
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vhost_virtqueue {int used_flags; TYPE_1__* used; } ;
struct vhost_dev {int dummy; } ;
struct TYPE_2__ {int flags; } ;


 int VIRTIO_RING_F_EVENT_IDX ;
 int VRING_USED_F_NO_NOTIFY ;
 int vhost_has_feature (struct vhost_virtqueue*,int ) ;
 int vhost_update_used_flags (struct vhost_virtqueue*) ;
 int vq_err (struct vhost_virtqueue*,char*,int *,int) ;

void vhost_disable_notify(struct vhost_dev *dev, struct vhost_virtqueue *vq)
{
 int r;

 if (vq->used_flags & VRING_USED_F_NO_NOTIFY)
  return;
 vq->used_flags |= VRING_USED_F_NO_NOTIFY;
 if (!vhost_has_feature(vq, VIRTIO_RING_F_EVENT_IDX)) {
  r = vhost_update_used_flags(vq);
  if (r)
   vq_err(vq, "Failed to enable notification at %p: %d\n",
          &vq->used->flags, r);
 }
}
