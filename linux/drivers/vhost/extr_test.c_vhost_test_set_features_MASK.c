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
typedef  int u64 ;
struct vhost_virtqueue {int acked_features; int /*<<< orphan*/  mutex; } ;
struct TYPE_2__ {int /*<<< orphan*/  mutex; } ;
struct vhost_test {TYPE_1__ dev; struct vhost_virtqueue* vqs; } ;

/* Variables and functions */
 int EFAULT ; 
 int VHOST_F_LOG_ALL ; 
 size_t VHOST_TEST_VQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC3(struct vhost_test *n, u64 features)
{
	struct vhost_virtqueue *vq;

	FUNC0(&n->dev.mutex);
	if ((features & (1 << VHOST_F_LOG_ALL)) &&
	    !FUNC2(&n->dev)) {
		FUNC1(&n->dev.mutex);
		return -EFAULT;
	}
	vq = &n->vqs[VHOST_TEST_VQ];
	FUNC0(&vq->mutex);
	vq->acked_features = features;
	FUNC1(&vq->mutex);
	FUNC1(&n->dev.mutex);
	return 0;
}