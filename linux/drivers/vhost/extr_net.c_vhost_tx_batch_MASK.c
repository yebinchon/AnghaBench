#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vhost_net_virtqueue {scalar_t__ batched_xdp; int /*<<< orphan*/  vq; int /*<<< orphan*/  xdp; } ;
struct vhost_net {int dummy; } ;
struct tun_msg_ctl {scalar_t__ num; int /*<<< orphan*/  ptr; int /*<<< orphan*/  type; } ;
struct socket {TYPE_1__* ops; } ;
struct msghdr {struct tun_msg_ctl* msg_control; } ;
struct TYPE_2__ {int (* sendmsg ) (struct socket*,struct msghdr*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  TUN_MSG_PTR ; 
 int FUNC0 (struct socket*,struct msghdr*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct vhost_net_virtqueue*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC4(struct vhost_net *net,
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
	if (FUNC1(err < 0)) {
		FUNC3(&nvq->vq, "Fail to batch sending packets\n");
		return;
	}

signal_used:
	FUNC2(nvq);
	nvq->batched_xdp = 0;
}