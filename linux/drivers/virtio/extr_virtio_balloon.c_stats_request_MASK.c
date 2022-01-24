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
struct virtqueue {TYPE_1__* vdev; } ;
struct virtio_balloon {int /*<<< orphan*/  stop_update_lock; int /*<<< orphan*/  update_balloon_stats_work; int /*<<< orphan*/  stop_update; } ;
struct TYPE_2__ {struct virtio_balloon* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  system_freezable_wq ; 

__attribute__((used)) static void FUNC3(struct virtqueue *vq)
{
	struct virtio_balloon *vb = vq->vdev->priv;

	FUNC1(&vb->stop_update_lock);
	if (!vb->stop_update)
		FUNC0(system_freezable_wq, &vb->update_balloon_stats_work);
	FUNC2(&vb->stop_update_lock);
}