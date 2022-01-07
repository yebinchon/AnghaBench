
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhost_virtqueue {int num; int signalled_used_valid; int log_used; unsigned long long log_addr; int * iotlb; int * umem; scalar_t__ busyloop_timeout; int * log_ctx; int * call_ctx; int * kick; int * error_ctx; int * log_base; scalar_t__ acked_backend_features; scalar_t__ acked_features; int * private_data; scalar_t__ used_flags; scalar_t__ signalled_used; scalar_t__ last_used_idx; scalar_t__ avail_idx; scalar_t__ last_avail_idx; int * used; int * avail; int * desc; } ;
struct vhost_dev {int dummy; } ;


 int __vhost_vq_meta_reset (struct vhost_virtqueue*) ;
 int vhost_disable_cross_endian (struct vhost_virtqueue*) ;
 int vhost_reset_is_le (struct vhost_virtqueue*) ;

__attribute__((used)) static void vhost_vq_reset(struct vhost_dev *dev,
      struct vhost_virtqueue *vq)
{
 vq->num = 1;
 vq->desc = ((void*)0);
 vq->avail = ((void*)0);
 vq->used = ((void*)0);
 vq->last_avail_idx = 0;
 vq->avail_idx = 0;
 vq->last_used_idx = 0;
 vq->signalled_used = 0;
 vq->signalled_used_valid = 0;
 vq->used_flags = 0;
 vq->log_used = 0;
 vq->log_addr = -1ull;
 vq->private_data = ((void*)0);
 vq->acked_features = 0;
 vq->acked_backend_features = 0;
 vq->log_base = ((void*)0);
 vq->error_ctx = ((void*)0);
 vq->kick = ((void*)0);
 vq->call_ctx = ((void*)0);
 vq->log_ctx = ((void*)0);
 vhost_reset_is_le(vq);
 vhost_disable_cross_endian(vq);
 vq->busyloop_timeout = 0;
 vq->umem = ((void*)0);
 vq->iotlb = ((void*)0);
 __vhost_vq_meta_reset(vq);
}
