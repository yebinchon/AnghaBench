
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vhost_virtqueue {int poll; TYPE_1__* heads; } ;
struct vhost_net_ubuf_ref {struct vhost_virtqueue* vq; } ;
struct ubuf_info {size_t desc; struct vhost_net_ubuf_ref* ctx; } ;
struct TYPE_2__ {int len; } ;


 int VHOST_DMA_DONE_LEN ;
 int VHOST_DMA_FAILED_LEN ;
 int rcu_read_lock_bh () ;
 int rcu_read_unlock_bh () ;
 int vhost_net_ubuf_put (struct vhost_net_ubuf_ref*) ;
 int vhost_poll_queue (int *) ;

__attribute__((used)) static void vhost_zerocopy_callback(struct ubuf_info *ubuf, bool success)
{
 struct vhost_net_ubuf_ref *ubufs = ubuf->ctx;
 struct vhost_virtqueue *vq = ubufs->vq;
 int cnt;

 rcu_read_lock_bh();


 vq->heads[ubuf->desc].len = success ?
  VHOST_DMA_DONE_LEN : VHOST_DMA_FAILED_LEN;
 cnt = vhost_net_ubuf_put(ubufs);
 if (cnt <= 1 || !(cnt % 16))
  vhost_poll_queue(&vq->poll);

 rcu_read_unlock_bh();
}
