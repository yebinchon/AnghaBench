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
struct vfio_group {struct vfio_container* container; } ;
struct vfio_container {int /*<<< orphan*/  iommu_data; struct vfio_iommu_driver* iommu_driver; } ;
struct notifier_block {int dummy; } ;
struct TYPE_2__ {int (* unregister_notifier ) (int /*<<< orphan*/ ,struct notifier_block*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int ENOTTY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct notifier_block*) ; 
 int FUNC2 (struct vfio_group*) ; 
 int /*<<< orphan*/  FUNC3 (struct vfio_group*) ; 

__attribute__((used)) static int FUNC4(struct vfio_group *group,
					  struct notifier_block *nb)
{
	struct vfio_container *container;
	struct vfio_iommu_driver *driver;
	int ret;

	ret = FUNC2(group);
	if (ret)
		return -EINVAL;

	container = group->container;
	driver = container->iommu_driver;
	if (FUNC0(driver && driver->ops->unregister_notifier))
		ret = driver->ops->unregister_notifier(container->iommu_data,
						       nb);
	else
		ret = -ENOTTY;

	FUNC3(group);

	return ret;
}