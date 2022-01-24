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
struct vfio_group {int /*<<< orphan*/  nb; int /*<<< orphan*/  iommu_group; } ;
struct TYPE_2__ {int /*<<< orphan*/  group_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct vfio_group*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__ vfio ; 

__attribute__((used)) static void FUNC3(struct vfio_group *group)
{
	FUNC2(&vfio.group_lock);
	/*
	 * Unregister outside of lock.  A spurious callback is harmless now
	 * that the group is no longer in vfio.group_list.
	 */
	FUNC0(group->iommu_group, &group->nb);
	FUNC1(group);
}