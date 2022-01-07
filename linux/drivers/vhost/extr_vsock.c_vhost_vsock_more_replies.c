
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhost_vsock {int queued_replies; struct vhost_virtqueue* vqs; } ;
struct vhost_virtqueue {int num; } ;


 size_t VSOCK_VQ_TX ;
 int atomic_read (int *) ;
 int smp_rmb () ;

__attribute__((used)) static bool vhost_vsock_more_replies(struct vhost_vsock *vsock)
{
 struct vhost_virtqueue *vq = &vsock->vqs[VSOCK_VQ_TX];
 int val;

 smp_rmb();
 val = atomic_read(&vsock->queued_replies);

 return val < vq->num;
}
