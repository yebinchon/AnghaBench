
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhost_virtqueue {int last_avail_idx; int avail_idx; } ;
struct vhost_dev {int dummy; } ;
typedef int __virtio16 ;


 scalar_t__ unlikely (int) ;
 int vhost16_to_cpu (struct vhost_virtqueue*,int ) ;
 int vhost_get_avail_idx (struct vhost_virtqueue*,int *) ;

bool vhost_vq_avail_empty(struct vhost_dev *dev, struct vhost_virtqueue *vq)
{
 __virtio16 avail_idx;
 int r;

 if (vq->avail_idx != vq->last_avail_idx)
  return 0;

 r = vhost_get_avail_idx(vq, &avail_idx);
 if (unlikely(r))
  return 0;
 vq->avail_idx = vhost16_to_cpu(vq, avail_idx);

 return vq->avail_idx == vq->last_avail_idx;
}
