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
struct TYPE_2__ {int /*<<< orphan*/  head; } ;
struct vfio_group {TYPE_1__ notifier; int /*<<< orphan*/  opened; scalar_t__ container; scalar_t__ noiommu; } ;
struct inode {int dummy; } ;
struct file {struct vfio_group* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  CAP_SYS_RAWIO ; 
 int EBUSY ; 
 int ENODEV ; 
 int EPERM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 struct vfio_group* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct vfio_group*) ; 

__attribute__((used)) static int FUNC8(struct inode *inode, struct file *filep)
{
	struct vfio_group *group;
	int opened;

	group = FUNC6(FUNC5(inode));
	if (!group)
		return -ENODEV;

	if (group->noiommu && !FUNC4(CAP_SYS_RAWIO)) {
		FUNC7(group);
		return -EPERM;
	}

	/* Do we need multiple instances of the group open?  Seems not. */
	opened = FUNC2(&group->opened, 0, 1);
	if (opened) {
		FUNC7(group);
		return -EBUSY;
	}

	/* Is something still in use from a previous open? */
	if (group->container) {
		FUNC3(&group->opened);
		FUNC7(group);
		return -EBUSY;
	}

	/* Warn if previous user didn't cleanup and re-init to drop them */
	if (FUNC1(group->notifier.head))
		FUNC0(&group->notifier);

	filep->private_data = group;

	return 0;
}