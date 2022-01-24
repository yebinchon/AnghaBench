#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vhost_virtqueue {scalar_t__ busyloop_timeout; } ;
struct vhost_net_virtqueue {struct vhost_virtqueue vq; } ;
struct vhost_net {struct vhost_net_virtqueue* vqs; } ;
struct sock {int dummy; } ;

/* Variables and functions */
 size_t VHOST_NET_VQ_RX ; 
 size_t VHOST_NET_VQ_TX ; 
 int FUNC0 (struct vhost_net_virtqueue*,struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct vhost_net*,struct vhost_virtqueue*,struct vhost_virtqueue*,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct vhost_net_virtqueue*) ; 

__attribute__((used)) static int FUNC3(struct vhost_net *net, struct sock *sk,
				      bool *busyloop_intr)
{
	struct vhost_net_virtqueue *rnvq = &net->vqs[VHOST_NET_VQ_RX];
	struct vhost_net_virtqueue *tnvq = &net->vqs[VHOST_NET_VQ_TX];
	struct vhost_virtqueue *rvq = &rnvq->vq;
	struct vhost_virtqueue *tvq = &tnvq->vq;
	int len = FUNC0(rnvq, sk);

	if (!len && rvq->busyloop_timeout) {
		/* Flush batched heads first */
		FUNC2(rnvq);
		/* Both tx vq and rx socket were polled here */
		FUNC1(net, rvq, tvq, busyloop_intr, true);

		len = FUNC0(rnvq, sk);
	}

	return len;
}