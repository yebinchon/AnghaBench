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
struct vhost_virtqueue {int /*<<< orphan*/  mutex; struct vhost_umem* iotlb; } ;
struct vhost_umem {int dummy; } ;
struct vhost_dev {int nvqs; struct vhost_virtqueue** vqs; struct vhost_umem* iotlb; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct vhost_virtqueue*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct vhost_umem* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct vhost_umem*) ; 

int FUNC5(struct vhost_dev *d, bool enabled)
{
	struct vhost_umem *niotlb, *oiotlb;
	int i;

	niotlb = FUNC3();
	if (!niotlb)
		return -ENOMEM;

	oiotlb = d->iotlb;
	d->iotlb = niotlb;

	for (i = 0; i < d->nvqs; ++i) {
		struct vhost_virtqueue *vq = d->vqs[i];

		FUNC1(&vq->mutex);
		vq->iotlb = niotlb;
		FUNC0(vq);
		FUNC2(&vq->mutex);
	}

	FUNC4(oiotlb);

	return 0;
}