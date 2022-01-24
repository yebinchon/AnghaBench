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
struct vhost_virtqueue {int /*<<< orphan*/  mutex; int /*<<< orphan*/ * private_data; } ;
struct vhost_test {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void *FUNC2(struct vhost_test *n,
				struct vhost_virtqueue *vq)
{
	void *private;

	FUNC0(&vq->mutex);
	private = vq->private_data;
	vq->private_data = NULL;
	FUNC1(&vq->mutex);
	return private;
}