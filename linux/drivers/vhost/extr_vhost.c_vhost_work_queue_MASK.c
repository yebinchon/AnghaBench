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
struct vhost_work {int /*<<< orphan*/  node; int /*<<< orphan*/  flags; } ;
struct vhost_dev {int /*<<< orphan*/  worker; int /*<<< orphan*/  work_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  VHOST_WORK_QUEUED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct vhost_dev *dev, struct vhost_work *work)
{
	if (!dev->worker)
		return;

	if (!FUNC1(VHOST_WORK_QUEUED, &work->flags)) {
		/* We can only add the work to the list after we're
		 * sure it was not in the list.
		 * test_and_set_bit() implies a memory barrier.
		 */
		FUNC0(&work->node, &dev->work_list);
		FUNC2(dev->worker);
	}
}