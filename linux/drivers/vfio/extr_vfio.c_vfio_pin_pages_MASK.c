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
struct device {int dummy; } ;
struct TYPE_2__ {int (* pin_pages ) (int /*<<< orphan*/ ,unsigned long*,int,int,unsigned long*) ;} ;

/* Variables and functions */
 int E2BIG ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOTTY ; 
 int VFIO_PIN_PAGES_MAX_ENTRIES ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned long*,int,int,unsigned long*) ; 
 int FUNC2 (struct vfio_group*) ; 
 struct vfio_group* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct vfio_group*) ; 
 int /*<<< orphan*/  FUNC5 (struct vfio_group*) ; 

int FUNC6(struct device *dev, unsigned long *user_pfn, int npage,
		   int prot, unsigned long *phys_pfn)
{
	struct vfio_container *container;
	struct vfio_group *group;
	struct vfio_iommu_driver *driver;
	int ret;

	if (!dev || !user_pfn || !phys_pfn || !npage)
		return -EINVAL;

	if (npage > VFIO_PIN_PAGES_MAX_ENTRIES)
		return -E2BIG;

	group = FUNC3(dev);
	if (!group)
		return -ENODEV;

	ret = FUNC2(group);
	if (ret)
		goto err_pin_pages;

	container = group->container;
	driver = container->iommu_driver;
	if (FUNC0(driver && driver->ops->pin_pages))
		ret = driver->ops->pin_pages(container->iommu_data, user_pfn,
					     npage, prot, phys_pfn);
	else
		ret = -ENOTTY;

	FUNC5(group);

err_pin_pages:
	FUNC4(group);
	return ret;
}