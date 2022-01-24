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
struct vhost_virtqueue {int num; int /*<<< orphan*/  iov; int /*<<< orphan*/  private_data; scalar_t__ busyloop_timeout; } ;
struct vhost_net_virtqueue {struct vhost_virtqueue vq; } ;
struct vhost_net {struct vhost_net_virtqueue* vqs; } ;
struct msghdr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t VHOST_NET_VQ_RX ; 
 int FUNC1 (struct vhost_virtqueue*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*,unsigned int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct vhost_net*,struct vhost_virtqueue*,struct vhost_virtqueue*,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct vhost_net*,struct vhost_net_virtqueue*,int /*<<< orphan*/ ,struct msghdr*) ; 

__attribute__((used)) static int FUNC5(struct vhost_net *net,
				    struct vhost_net_virtqueue *tnvq,
				    unsigned int *out_num, unsigned int *in_num,
				    struct msghdr *msghdr, bool *busyloop_intr)
{
	struct vhost_net_virtqueue *rnvq = &net->vqs[VHOST_NET_VQ_RX];
	struct vhost_virtqueue *rvq = &rnvq->vq;
	struct vhost_virtqueue *tvq = &tnvq->vq;

	int r = FUNC1(tvq, tvq->iov, FUNC0(tvq->iov),
				  out_num, in_num, NULL, NULL);

	if (r == tvq->num && tvq->busyloop_timeout) {
		/* Flush batched packets first */
		if (!FUNC3(tvq->private_data))
			FUNC4(net, tnvq, tvq->private_data, msghdr);

		FUNC2(net, rvq, tvq, busyloop_intr, false);

		r = FUNC1(tvq, tvq->iov, FUNC0(tvq->iov),
				      out_num, in_num, NULL, NULL);
	}

	return r;
}