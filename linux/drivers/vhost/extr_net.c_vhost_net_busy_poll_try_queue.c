
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhost_virtqueue {int poll; } ;
struct vhost_net {int dev; } ;


 scalar_t__ unlikely (int ) ;
 int vhost_disable_notify (int *,struct vhost_virtqueue*) ;
 int vhost_enable_notify (int *,struct vhost_virtqueue*) ;
 int vhost_poll_queue (int *) ;
 int vhost_vq_avail_empty (int *,struct vhost_virtqueue*) ;

__attribute__((used)) static void vhost_net_busy_poll_try_queue(struct vhost_net *net,
       struct vhost_virtqueue *vq)
{
 if (!vhost_vq_avail_empty(&net->dev, vq)) {
  vhost_poll_queue(&vq->poll);
 } else if (unlikely(vhost_enable_notify(&net->dev, vq))) {
  vhost_disable_notify(&net->dev, vq);
  vhost_poll_queue(&vq->poll);
 }
}
