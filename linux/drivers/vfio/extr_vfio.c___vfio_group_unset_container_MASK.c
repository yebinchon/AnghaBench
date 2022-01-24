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
struct vfio_iommu_driver {TYPE_1__* ops; } ;
struct vfio_group {int /*<<< orphan*/  container_next; int /*<<< orphan*/  container_q; struct vfio_container* container; int /*<<< orphan*/  iommu_group; } ;
struct vfio_container {int /*<<< orphan*/  group_lock; int /*<<< orphan*/ * iommu_data; struct vfio_iommu_driver* iommu_driver; int /*<<< orphan*/  group_list; } ;
struct TYPE_2__ {int /*<<< orphan*/  owner; int /*<<< orphan*/  (* release ) (int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* detach_group ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct vfio_container*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct vfio_group *group)
{
	struct vfio_container *container = group->container;
	struct vfio_iommu_driver *driver;

	FUNC0(&container->group_lock);

	driver = container->iommu_driver;
	if (driver)
		driver->ops->detach_group(container->iommu_data,
					  group->iommu_group);

	group->container = NULL;
	FUNC8(&group->container_q);
	FUNC1(&group->container_next);

	/* Detaching the last group deprivileges a container, remove iommu */
	if (driver && FUNC2(&container->group_list)) {
		driver->ops->release(container->iommu_data);
		FUNC3(driver->ops->owner);
		container->iommu_driver = NULL;
		container->iommu_data = NULL;
	}

	FUNC6(&container->group_lock);

	FUNC7(container);
}