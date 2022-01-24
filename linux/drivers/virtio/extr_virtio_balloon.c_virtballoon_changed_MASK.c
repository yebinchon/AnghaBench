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
struct virtio_device {struct virtio_balloon* priv; } ;
struct virtio_balloon {int /*<<< orphan*/  stop_update_lock; int /*<<< orphan*/  update_balloon_size_work; int /*<<< orphan*/  stop_update; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  system_freezable_wq ; 
 int /*<<< orphan*/  FUNC3 (struct virtio_balloon*) ; 

__attribute__((used)) static void FUNC4(struct virtio_device *vdev)
{
	struct virtio_balloon *vb = vdev->priv;
	unsigned long flags;

	FUNC1(&vb->stop_update_lock, flags);
	if (!vb->stop_update) {
		FUNC0(system_freezable_wq,
			   &vb->update_balloon_size_work);
		FUNC3(vb);
	}
	FUNC2(&vb->stop_update_lock, flags);
}