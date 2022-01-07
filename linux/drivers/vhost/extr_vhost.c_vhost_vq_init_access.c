
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vhost_virtqueue {int is_le; int signalled_used_valid; int last_used_idx; TYPE_1__* used; int iotlb; int private_data; } ;
typedef int __virtio16 ;
struct TYPE_2__ {int idx; } ;


 int EFAULT ;
 int access_ok (int *,int) ;
 int vhost16_to_cpu (struct vhost_virtqueue*,int ) ;
 int vhost_get_used_idx (struct vhost_virtqueue*,int *) ;
 int vhost_init_is_le (struct vhost_virtqueue*) ;
 int vhost_update_used_flags (struct vhost_virtqueue*) ;
 int vq_err (struct vhost_virtqueue*,char*,int *) ;

int vhost_vq_init_access(struct vhost_virtqueue *vq)
{
 __virtio16 last_used_idx;
 int r;
 bool is_le = vq->is_le;

 if (!vq->private_data)
  return 0;

 vhost_init_is_le(vq);

 r = vhost_update_used_flags(vq);
 if (r)
  goto err;
 vq->signalled_used_valid = 0;
 if (!vq->iotlb &&
     !access_ok(&vq->used->idx, sizeof vq->used->idx)) {
  r = -EFAULT;
  goto err;
 }
 r = vhost_get_used_idx(vq, &last_used_idx);
 if (r) {
  vq_err(vq, "Can't access used idx at %p\n",
         &vq->used->idx);
  goto err;
 }
 vq->last_used_idx = vhost16_to_cpu(vq, last_used_idx);
 return 0;

err:
 vq->is_le = is_le;
 return r;
}
