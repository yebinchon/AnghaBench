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
struct vhost_virtqueue {int /*<<< orphan*/  mutex; void* private_data; } ;
struct TYPE_2__ {int nvqs; int /*<<< orphan*/  mutex; } ;
struct vhost_test {TYPE_1__ dev; struct vhost_virtqueue* vqs; } ;

/* Variables and functions */
 int EFAULT ; 
 long EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct vhost_test*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct vhost_virtqueue*) ; 
 int FUNC5 (struct vhost_virtqueue*) ; 

__attribute__((used)) static long FUNC6(struct vhost_test *n, int test)
{
	void *priv, *oldpriv;
	struct vhost_virtqueue *vq;
	int r, index;

	if (test < 0 || test > 1)
		return -EINVAL;

	FUNC0(&n->dev.mutex);
	r = FUNC2(&n->dev);
	if (r)
		goto err;

	for (index = 0; index < n->dev.nvqs; ++index) {
		/* Verify that ring has been setup correctly. */
		if (!FUNC4(&n->vqs[index])) {
			r = -EFAULT;
			goto err;
		}
	}

	for (index = 0; index < n->dev.nvqs; ++index) {
		vq = n->vqs + index;
		FUNC0(&vq->mutex);
		priv = test ? n : NULL;

		/* start polling new socket */
		oldpriv = vq->private_data;
		vq->private_data = priv;

		r = FUNC5(&n->vqs[index]);

		FUNC1(&vq->mutex);

		if (r)
			goto err;

		if (oldpriv) {
			FUNC3(n, index);
		}
	}

	FUNC1(&n->dev.mutex);
	return 0;

err:
	FUNC1(&n->dev.mutex);
	return r;
}