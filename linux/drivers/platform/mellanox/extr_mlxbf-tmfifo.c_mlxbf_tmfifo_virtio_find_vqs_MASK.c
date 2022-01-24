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
typedef  int /*<<< orphan*/  vq_callback_t ;
struct virtqueue {struct mlxbf_tmfifo_vring* priv; } ;
struct virtio_device {int /*<<< orphan*/  dev; } ;
struct mlxbf_tmfifo_vring {struct virtqueue* vq; int /*<<< orphan*/  va; int /*<<< orphan*/  align; int /*<<< orphan*/  num; } ;
struct mlxbf_tmfifo_vdev {struct mlxbf_tmfifo_vring* vrings; } ;
struct irq_affinity {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct mlxbf_tmfifo_vring*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct virtio_device*) ; 
 int /*<<< orphan*/  mlxbf_tmfifo_virtio_notify ; 
 struct mlxbf_tmfifo_vdev* FUNC4 (struct virtio_device*) ; 
 struct virtqueue* FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct virtio_device*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const* const) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct virtio_device *vdev,
					unsigned int nvqs,
					struct virtqueue *vqs[],
					vq_callback_t *callbacks[],
					const char * const names[],
					const bool *ctx,
					struct irq_affinity *desc)
{
	struct mlxbf_tmfifo_vdev *tm_vdev = FUNC4(vdev);
	struct mlxbf_tmfifo_vring *vring;
	struct virtqueue *vq;
	int i, ret, size;

	if (nvqs > FUNC0(tm_vdev->vrings))
		return -EINVAL;

	for (i = 0; i < nvqs; ++i) {
		if (!names[i]) {
			ret = -EINVAL;
			goto error;
		}
		vring = &tm_vdev->vrings[i];

		/* zero vring */
		size = FUNC6(vring->num, vring->align);
		FUNC2(vring->va, 0, size);
		vq = FUNC5(i, vring->num, vring->align, vdev,
					 false, false, vring->va,
					 mlxbf_tmfifo_virtio_notify,
					 callbacks[i], names[i]);
		if (!vq) {
			FUNC1(&vdev->dev, "vring_new_virtqueue failed\n");
			ret = -ENOMEM;
			goto error;
		}

		vqs[i] = vq;
		vring->vq = vq;
		vq->priv = vring;
	}

	return 0;

error:
	FUNC3(vdev);
	return ret;
}