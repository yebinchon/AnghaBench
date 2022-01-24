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
struct vhost_virtqueue {int num; int /*<<< orphan*/  mutex; int /*<<< orphan*/  iov; void* private_data; } ;
struct vhost_test {int /*<<< orphan*/  dev; struct vhost_virtqueue* vqs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t VHOST_TEST_VQ ; 
 size_t FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct vhost_virtqueue*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct vhost_virtqueue*) ; 
 int FUNC7 (int /*<<< orphan*/ *,struct vhost_virtqueue*) ; 
 int FUNC8 (struct vhost_virtqueue*,int /*<<< orphan*/ ,size_t) ; 
 int FUNC9 (struct vhost_virtqueue*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*,unsigned int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct vhost_virtqueue*,char*,...) ; 

__attribute__((used)) static void FUNC11(struct vhost_test *n)
{
	struct vhost_virtqueue *vq = &n->vqs[VHOST_TEST_VQ];
	unsigned out, in;
	int head;
	size_t len, total_len = 0;
	void *private;

	FUNC2(&vq->mutex);
	private = vq->private_data;
	if (!private) {
		FUNC3(&vq->mutex);
		return;
	}

	FUNC6(&n->dev, vq);

	for (;;) {
		head = FUNC9(vq, vq->iov,
					 FUNC0(vq->iov),
					 &out, &in,
					 NULL, NULL);
		/* On error, stop handling until the next kick. */
		if (FUNC4(head < 0))
			break;
		/* Nothing new?  Wait for eventfd to tell us they refilled. */
		if (head == vq->num) {
			if (FUNC4(FUNC7(&n->dev, vq))) {
				FUNC6(&n->dev, vq);
				continue;
			}
			break;
		}
		if (in) {
			FUNC10(vq, "Unexpected descriptor format for TX: "
			       "out %d, int %d\n", out, in);
			break;
		}
		len = FUNC1(vq->iov, out);
		/* Sanity check */
		if (!len) {
			FUNC10(vq, "Unexpected 0 len for TX\n");
			break;
		}
		FUNC5(&n->dev, vq, head, 0);
		total_len += len;
		if (FUNC4(FUNC8(vq, 0, total_len)))
			break;
	}

	FUNC3(&vq->mutex);
}