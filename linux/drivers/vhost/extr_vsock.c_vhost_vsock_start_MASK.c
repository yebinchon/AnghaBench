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
struct TYPE_2__ {int /*<<< orphan*/  mutex; } ;
struct vhost_vsock {TYPE_1__ dev; struct vhost_virtqueue* vqs; } ;
struct vhost_virtqueue {int /*<<< orphan*/  mutex; struct vhost_vsock* private_data; } ;

/* Variables and functions */
 size_t FUNC0 (struct vhost_virtqueue*) ; 
 int EFAULT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct vhost_virtqueue*) ; 
 int FUNC5 (struct vhost_virtqueue*) ; 

__attribute__((used)) static int FUNC6(struct vhost_vsock *vsock)
{
	struct vhost_virtqueue *vq;
	size_t i;
	int ret;

	FUNC1(&vsock->dev.mutex);

	ret = FUNC3(&vsock->dev);
	if (ret)
		goto err;

	for (i = 0; i < FUNC0(vsock->vqs); i++) {
		vq = &vsock->vqs[i];

		FUNC1(&vq->mutex);

		if (!FUNC4(vq)) {
			ret = -EFAULT;
			goto err_vq;
		}

		if (!vq->private_data) {
			vq->private_data = vsock;
			ret = FUNC5(vq);
			if (ret)
				goto err_vq;
		}

		FUNC2(&vq->mutex);
	}

	FUNC2(&vsock->dev.mutex);
	return 0;

err_vq:
	vq->private_data = NULL;
	FUNC2(&vq->mutex);

	for (i = 0; i < FUNC0(vsock->vqs); i++) {
		vq = &vsock->vqs[i];

		FUNC1(&vq->mutex);
		vq->private_data = NULL;
		FUNC2(&vq->mutex);
	}
err:
	FUNC2(&vsock->dev.mutex);
	return ret;
}