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
struct vfio_group {int dummy; } ;
struct iommu_group {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct iommu_group* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct iommu_group*) ; 
 struct vfio_group* FUNC2 (struct iommu_group*) ; 

__attribute__((used)) static struct vfio_group *FUNC3(struct device *dev)
{
	struct iommu_group *iommu_group;
	struct vfio_group *group;

	iommu_group = FUNC0(dev);
	if (!iommu_group)
		return NULL;

	group = FUNC2(iommu_group);
	FUNC1(iommu_group);

	return group;
}