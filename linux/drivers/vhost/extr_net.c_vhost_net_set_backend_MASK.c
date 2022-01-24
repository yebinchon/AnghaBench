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
struct vhost_virtqueue {int /*<<< orphan*/  mutex; struct vhost_net_ubuf_ref* private_data; } ;
struct vhost_net_virtqueue {struct vhost_net_ubuf_ref* ubufs; int /*<<< orphan*/  rx_ring; struct vhost_virtqueue vq; } ;
struct vhost_net_ubuf_ref {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  mutex; } ;
struct vhost_net {int tx_flush; TYPE_1__ dev; scalar_t__ tx_zcopy_err; scalar_t__ tx_packets; struct vhost_net_virtqueue* vqs; } ;
typedef  struct vhost_net_ubuf_ref socket ;

/* Variables and functions */
 int EFAULT ; 
 int ENOBUFS ; 
 scalar_t__ FUNC0 (struct vhost_net_ubuf_ref*) ; 
 int FUNC1 (struct vhost_net_ubuf_ref*) ; 
 unsigned int VHOST_NET_VQ_MAX ; 
 unsigned int VHOST_NET_VQ_RX ; 
 struct vhost_net_ubuf_ref* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct vhost_net_ubuf_ref*) ; 
 int FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (struct vhost_net_virtqueue*) ; 
 int /*<<< orphan*/  FUNC9 (struct vhost_net*,struct vhost_virtqueue*) ; 
 int FUNC10 (struct vhost_net*,struct vhost_virtqueue*) ; 
 int /*<<< orphan*/  FUNC11 (struct vhost_net*,unsigned int) ; 
 struct vhost_net_ubuf_ref* FUNC12 (struct vhost_virtqueue*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct vhost_net_ubuf_ref*) ; 
 scalar_t__ FUNC14 (struct vhost_net_ubuf_ref*) ; 
 int /*<<< orphan*/  FUNC15 (struct vhost_virtqueue*) ; 
 int FUNC16 (struct vhost_virtqueue*) ; 
 int /*<<< orphan*/  FUNC17 (struct vhost_net*,struct vhost_virtqueue*) ; 

__attribute__((used)) static long FUNC18(struct vhost_net *n, unsigned index, int fd)
{
	struct socket *sock, *oldsock;
	struct vhost_virtqueue *vq;
	struct vhost_net_virtqueue *nvq;
	struct vhost_net_ubuf_ref *ubufs, *oldubufs = NULL;
	int r;

	FUNC4(&n->dev.mutex);
	r = FUNC7(&n->dev);
	if (r)
		goto err;

	if (index >= VHOST_NET_VQ_MAX) {
		r = -ENOBUFS;
		goto err;
	}
	vq = &n->vqs[index].vq;
	nvq = &n->vqs[index];
	FUNC4(&vq->mutex);

	/* Verify that ring has been setup correctly. */
	if (!FUNC15(vq)) {
		r = -EFAULT;
		goto err_vq;
	}
	sock = FUNC2(fd);
	if (FUNC0(sock)) {
		r = FUNC1(sock);
		goto err_vq;
	}

	/* start polling new socket */
	oldsock = vq->private_data;
	if (sock != oldsock) {
		ubufs = FUNC12(vq,
					     sock && FUNC14(sock));
		if (FUNC0(ubufs)) {
			r = FUNC1(ubufs);
			goto err_ubufs;
		}

		FUNC9(n, vq);
		vq->private_data = sock;
		FUNC8(nvq);
		r = FUNC16(vq);
		if (r)
			goto err_used;
		r = FUNC10(n, vq);
		if (r)
			goto err_used;
		if (index == VHOST_NET_VQ_RX)
			nvq->rx_ring = FUNC3(fd);

		oldubufs = nvq->ubufs;
		nvq->ubufs = ubufs;

		n->tx_packets = 0;
		n->tx_zcopy_err = 0;
		n->tx_flush = false;
	}

	FUNC5(&vq->mutex);

	if (oldubufs) {
		FUNC13(oldubufs);
		FUNC4(&vq->mutex);
		FUNC17(n, vq);
		FUNC5(&vq->mutex);
	}

	if (oldsock) {
		FUNC11(n, index);
		FUNC6(oldsock);
	}

	FUNC5(&n->dev.mutex);
	return 0;

err_used:
	vq->private_data = oldsock;
	FUNC10(n, vq);
	if (ubufs)
		FUNC13(ubufs);
err_ubufs:
	if (sock)
		FUNC6(sock);
err_vq:
	FUNC5(&vq->mutex);
err:
	FUNC5(&n->dev.mutex);
	return r;
}