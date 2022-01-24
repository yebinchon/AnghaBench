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
struct vhost_virtqueue {unsigned long busyloop_timeout; int /*<<< orphan*/  mutex; struct socket* private_data; } ;
struct vhost_net {int /*<<< orphan*/  dev; } ;
struct socket {int dummy; } ;

/* Variables and functions */
 unsigned long FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (struct socket*) ; 
 scalar_t__ FUNC7 (unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct vhost_virtqueue*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct vhost_virtqueue*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct vhost_net*,struct vhost_virtqueue*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,struct vhost_virtqueue*) ; 

__attribute__((used)) static void FUNC13(struct vhost_net *net,
				struct vhost_virtqueue *rvq,
				struct vhost_virtqueue *tvq,
				bool *busyloop_intr,
				bool poll_rx)
{
	unsigned long busyloop_timeout;
	unsigned long endtime;
	struct socket *sock;
	struct vhost_virtqueue *vq = poll_rx ? tvq : rvq;

	/* Try to hold the vq mutex of the paired virtqueue. We can't
	 * use mutex_lock() here since we could not guarantee a
	 * consistenet lock ordering.
	 */
	if (!FUNC2(&vq->mutex))
		return;

	FUNC8(&net->dev, vq);
	sock = rvq->private_data;

	busyloop_timeout = poll_rx ? rvq->busyloop_timeout:
				     tvq->busyloop_timeout;

	FUNC4();
	endtime = FUNC0() + busyloop_timeout;

	while (FUNC7(endtime)) {
		if (FUNC10(&net->dev)) {
			*busyloop_intr = true;
			break;
		}

		if ((FUNC6(sock) &&
		     !FUNC12(&net->dev, rvq)) ||
		    !FUNC12(&net->dev, tvq))
			break;

		FUNC1();
	}

	FUNC5();

	if (poll_rx || FUNC6(sock))
		FUNC11(net, vq);
	else if (!poll_rx) /* On tx here, sock has no rx data. */
		FUNC9(&net->dev, rvq);

	FUNC3(&vq->mutex);
}