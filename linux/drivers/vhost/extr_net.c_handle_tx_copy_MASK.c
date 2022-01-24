#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vhost_virtqueue {int num; TYPE_3__* heads; int /*<<< orphan*/  poll; } ;
struct vhost_net_virtqueue {size_t done_idx; struct vhost_virtqueue vq; } ;
struct vhost_net {int /*<<< orphan*/  dev; struct vhost_net_virtqueue* vqs; } ;
struct socket {TYPE_2__* ops; TYPE_1__* sk; } ;
struct msghdr {int /*<<< orphan*/  msg_flags; int /*<<< orphan*/ * msg_control; int /*<<< orphan*/  msg_iter; int /*<<< orphan*/  msg_controllen; int /*<<< orphan*/  msg_namelen; int /*<<< orphan*/ * msg_name; } ;
struct TYPE_6__ {scalar_t__ len; int /*<<< orphan*/  id; } ;
struct TYPE_5__ {int (* sendmsg ) (struct socket*,struct msghdr*,size_t) ;} ;
struct TYPE_4__ {scalar_t__ sk_sndbuf; } ;

/* Variables and functions */
 int ENOSPC ; 
 scalar_t__ INT_MAX ; 
 int /*<<< orphan*/  MSG_DONTWAIT ; 
 int /*<<< orphan*/  MSG_MORE ; 
 size_t VHOST_NET_BATCH ; 
 size_t VHOST_NET_VQ_TX ; 
 int /*<<< orphan*/  FUNC0 (struct vhost_virtqueue*,int) ; 
 int FUNC1 (struct vhost_net*,struct vhost_net_virtqueue*,struct msghdr*,unsigned int*,unsigned int*,size_t*,int*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,size_t) ; 
 int FUNC4 (struct socket*,struct msghdr*,size_t) ; 
 scalar_t__ FUNC5 (struct vhost_virtqueue*,size_t) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct vhost_virtqueue*) ; 
 int /*<<< orphan*/  FUNC8 (struct vhost_virtqueue*,int) ; 
 int FUNC9 (int /*<<< orphan*/ *,struct vhost_virtqueue*) ; 
 int /*<<< orphan*/  FUNC10 (struct vhost_virtqueue*,int,size_t) ; 
 int FUNC11 (struct vhost_net_virtqueue*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct vhost_net*,struct vhost_virtqueue*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct vhost_net*,struct vhost_net_virtqueue*,struct socket*,struct msghdr*) ; 

__attribute__((used)) static void FUNC15(struct vhost_net *net, struct socket *sock)
{
	struct vhost_net_virtqueue *nvq = &net->vqs[VHOST_NET_VQ_TX];
	struct vhost_virtqueue *vq = &nvq->vq;
	unsigned out, in;
	int head;
	struct msghdr msg = {
		.msg_name = NULL,
		.msg_namelen = 0,
		.msg_control = NULL,
		.msg_controllen = 0,
		.msg_flags = MSG_DONTWAIT,
	};
	size_t len, total_len = 0;
	int err;
	int sent_pkts = 0;
	bool sock_can_batch = (sock->sk->sk_sndbuf == INT_MAX);

	do {
		bool busyloop_intr = false;

		if (nvq->done_idx == VHOST_NET_BATCH)
			FUNC14(net, nvq, sock, &msg);

		head = FUNC1(net, nvq, &msg, &out, &in, &len,
				   &busyloop_intr);
		/* On error, stop handling until the next kick. */
		if (FUNC6(head < 0))
			break;
		/* Nothing new?  Wait for eventfd to tell us they refilled. */
		if (head == vq->num) {
			if (FUNC6(busyloop_intr)) {
				FUNC13(&vq->poll);
			} else if (FUNC6(FUNC9(&net->dev,
								vq))) {
				FUNC7(&net->dev, vq);
				continue;
			}
			break;
		}

		total_len += len;

		/* For simplicity, TX batching is only enabled if
		 * sndbuf is unlimited.
		 */
		if (sock_can_batch) {
			err = FUNC11(nvq, &msg.msg_iter);
			if (!err) {
				goto done;
			} else if (FUNC6(err != -ENOSPC)) {
				FUNC14(net, nvq, sock, &msg);
				FUNC8(vq, 1);
				FUNC12(net, vq);
				break;
			}

			/* We can't build XDP buff, go for single
			 * packet path but let's flush batched
			 * packets.
			 */
			FUNC14(net, nvq, sock, &msg);
			msg.msg_control = NULL;
		} else {
			if (FUNC5(vq, total_len))
				msg.msg_flags |= MSG_MORE;
			else
				msg.msg_flags &= ~MSG_MORE;
		}

		/* TODO: Check specific error and bomb out unless ENOBUFS? */
		err = sock->ops->sendmsg(sock, &msg, len);
		if (FUNC6(err < 0)) {
			FUNC8(vq, 1);
			FUNC12(net, vq);
			break;
		}
		if (err != len)
			FUNC3("Truncated TX packet: len %d != %zd\n",
				 err, len);
done:
		vq->heads[nvq->done_idx].id = FUNC0(vq, head);
		vq->heads[nvq->done_idx].len = 0;
		++nvq->done_idx;
	} while (FUNC2(!FUNC10(vq, ++sent_pkts, total_len)));

	FUNC14(net, nvq, sock, &msg);
}