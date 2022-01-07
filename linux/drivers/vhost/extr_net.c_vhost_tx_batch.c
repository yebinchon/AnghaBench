
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vhost_net_virtqueue {scalar_t__ batched_xdp; int vq; int xdp; } ;
struct vhost_net {int dummy; } ;
struct tun_msg_ctl {scalar_t__ num; int ptr; int type; } ;
struct socket {TYPE_1__* ops; } ;
struct msghdr {struct tun_msg_ctl* msg_control; } ;
struct TYPE_2__ {int (* sendmsg ) (struct socket*,struct msghdr*,int ) ;} ;


 int TUN_MSG_PTR ;
 int stub1 (struct socket*,struct msghdr*,int ) ;
 scalar_t__ unlikely (int) ;
 int vhost_net_signal_used (struct vhost_net_virtqueue*) ;
 int vq_err (int *,char*) ;

__attribute__((used)) static void vhost_tx_batch(struct vhost_net *net,
      struct vhost_net_virtqueue *nvq,
      struct socket *sock,
      struct msghdr *msghdr)
{
 struct tun_msg_ctl ctl = {
  .type = TUN_MSG_PTR,
  .num = nvq->batched_xdp,
  .ptr = nvq->xdp,
 };
 int err;

 if (nvq->batched_xdp == 0)
  goto signal_used;

 msghdr->msg_control = &ctl;
 err = sock->ops->sendmsg(sock, msghdr, 0);
 if (unlikely(err < 0)) {
  vq_err(&nvq->vq, "Fail to batch sending packets\n");
  return;
 }

signal_used:
 vhost_net_signal_used(nvq);
 nvq->batched_xdp = 0;
}
