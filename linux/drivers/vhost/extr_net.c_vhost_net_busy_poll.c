
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhost_virtqueue {unsigned long busyloop_timeout; int mutex; struct socket* private_data; } ;
struct vhost_net {int dev; } ;
struct socket {int dummy; } ;


 unsigned long busy_clock () ;
 int cpu_relax () ;
 int mutex_trylock (int *) ;
 int mutex_unlock (int *) ;
 int preempt_disable () ;
 int preempt_enable () ;
 scalar_t__ sock_has_rx_data (struct socket*) ;
 scalar_t__ vhost_can_busy_poll (unsigned long) ;
 int vhost_disable_notify (int *,struct vhost_virtqueue*) ;
 int vhost_enable_notify (int *,struct vhost_virtqueue*) ;
 scalar_t__ vhost_has_work (int *) ;
 int vhost_net_busy_poll_try_queue (struct vhost_net*,struct vhost_virtqueue*) ;
 int vhost_vq_avail_empty (int *,struct vhost_virtqueue*) ;

__attribute__((used)) static void vhost_net_busy_poll(struct vhost_net *net,
    struct vhost_virtqueue *rvq,
    struct vhost_virtqueue *tvq,
    bool *busyloop_intr,
    bool poll_rx)
{
 unsigned long busyloop_timeout;
 unsigned long endtime;
 struct socket *sock;
 struct vhost_virtqueue *vq = poll_rx ? tvq : rvq;





 if (!mutex_trylock(&vq->mutex))
  return;

 vhost_disable_notify(&net->dev, vq);
 sock = rvq->private_data;

 busyloop_timeout = poll_rx ? rvq->busyloop_timeout:
         tvq->busyloop_timeout;

 preempt_disable();
 endtime = busy_clock() + busyloop_timeout;

 while (vhost_can_busy_poll(endtime)) {
  if (vhost_has_work(&net->dev)) {
   *busyloop_intr = 1;
   break;
  }

  if ((sock_has_rx_data(sock) &&
       !vhost_vq_avail_empty(&net->dev, rvq)) ||
      !vhost_vq_avail_empty(&net->dev, tvq))
   break;

  cpu_relax();
 }

 preempt_enable();

 if (poll_rx || sock_has_rx_data(sock))
  vhost_net_busy_poll_try_queue(net, vq);
 else if (!poll_rx)
  vhost_enable_notify(&net->dev, rvq);

 mutex_unlock(&vq->mutex);
}
