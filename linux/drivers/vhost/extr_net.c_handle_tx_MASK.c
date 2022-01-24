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
struct vhost_virtqueue {int /*<<< orphan*/  mutex; struct socket* private_data; } ;
struct vhost_net_virtqueue {struct vhost_virtqueue vq; } ;
struct vhost_net {int /*<<< orphan*/  dev; struct vhost_net_virtqueue* vqs; } ;
struct socket {int dummy; } ;

/* Variables and functions */
 size_t VHOST_NET_VQ_TX ; 
 int /*<<< orphan*/  FUNC0 (struct vhost_net*,struct socket*) ; 
 int /*<<< orphan*/  FUNC1 (struct vhost_net*,struct socket*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct vhost_virtqueue*) ; 
 int /*<<< orphan*/  FUNC5 (struct vhost_net*,struct vhost_virtqueue*) ; 
 scalar_t__ FUNC6 (struct socket*) ; 
 int /*<<< orphan*/  FUNC7 (struct vhost_virtqueue*) ; 

__attribute__((used)) static void FUNC8(struct vhost_net *net)
{
	struct vhost_net_virtqueue *nvq = &net->vqs[VHOST_NET_VQ_TX];
	struct vhost_virtqueue *vq = &nvq->vq;
	struct socket *sock;

	FUNC2(&vq->mutex, VHOST_NET_VQ_TX);
	sock = vq->private_data;
	if (!sock)
		goto out;

	if (!FUNC7(vq))
		goto out;

	FUNC4(&net->dev, vq);
	FUNC5(net, vq);

	if (FUNC6(sock))
		FUNC1(net, sock);
	else
		FUNC0(net, sock);

out:
	FUNC3(&vq->mutex);
}