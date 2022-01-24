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
struct vfio_device_ops {int dummy; } ;
typedef  struct vfio_group vfio_device ;
struct iommu_group {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct vfio_group*) ; 
 int FUNC1 (struct vfio_group*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct iommu_group* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct iommu_group*) ; 
 int /*<<< orphan*/  FUNC5 (struct iommu_group*) ; 
 struct vfio_group* FUNC6 (struct iommu_group*) ; 
 int /*<<< orphan*/  FUNC7 (struct vfio_group*) ; 
 struct vfio_group* FUNC8 (struct vfio_group*,struct device*,struct vfio_device_ops const*,void*) ; 
 struct vfio_group* FUNC9 (struct vfio_group*,struct device*) ; 
 struct vfio_group* FUNC10 (struct iommu_group*) ; 
 int /*<<< orphan*/  FUNC11 (struct vfio_group*) ; 

int FUNC12(struct device *dev,
		       const struct vfio_device_ops *ops, void *device_data)
{
	struct iommu_group *iommu_group;
	struct vfio_group *group;
	struct vfio_device *device;

	iommu_group = FUNC3(dev);
	if (!iommu_group)
		return -EINVAL;

	group = FUNC10(iommu_group);
	if (!group) {
		group = FUNC6(iommu_group);
		if (FUNC0(group)) {
			FUNC5(iommu_group);
			return FUNC1(group);
		}
	} else {
		/*
		 * A found vfio_group already holds a reference to the
		 * iommu_group.  A created vfio_group keeps the reference.
		 */
		FUNC5(iommu_group);
	}

	device = FUNC9(group, dev);
	if (device) {
		FUNC2(dev, "Device already exists on group %d\n",
			 FUNC4(iommu_group));
		FUNC7(device);
		FUNC11(group);
		return -EBUSY;
	}

	device = FUNC8(group, dev, ops, device_data);
	if (FUNC0(device)) {
		FUNC11(group);
		return FUNC1(device);
	}

	/*
	 * Drop all but the vfio_device reference.  The vfio_device holds
	 * a reference to the vfio_group, which holds a reference to the
	 * iommu_group.
	 */
	FUNC11(group);

	return 0;
}