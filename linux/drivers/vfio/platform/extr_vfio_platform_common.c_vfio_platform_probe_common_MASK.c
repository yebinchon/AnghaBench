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
struct vfio_platform_device {struct device* device; int /*<<< orphan*/  igate; int /*<<< orphan*/  name; scalar_t__ reset_required; } ;
struct iommu_group {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int FUNC3 (struct device*,int /*<<< orphan*/ *,struct vfio_platform_device*) ; 
 struct iommu_group* FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct iommu_group*,struct device*) ; 
 int FUNC6 (struct vfio_platform_device*,struct device*) ; 
 int FUNC7 (struct vfio_platform_device*) ; 
 int FUNC8 (struct vfio_platform_device*,struct device*) ; 
 int /*<<< orphan*/  vfio_platform_ops ; 
 int /*<<< orphan*/  FUNC9 (struct vfio_platform_device*) ; 

int FUNC10(struct vfio_platform_device *vdev,
			       struct device *dev)
{
	struct iommu_group *group;
	int ret;

	if (!vdev)
		return -EINVAL;

	ret = FUNC6(vdev, dev);
	if (ret)
		ret = FUNC8(vdev, dev);

	if (ret)
		return ret;

	vdev->device = dev;

	ret = FUNC7(vdev);
	if (ret && vdev->reset_required) {
		FUNC0(dev, "No reset function found for device %s\n",
			vdev->name);
		return ret;
	}

	group = FUNC4(dev);
	if (!group) {
		FUNC0(dev, "No IOMMU group for device %s\n", vdev->name);
		ret = -EINVAL;
		goto put_reset;
	}

	ret = FUNC3(dev, &vfio_platform_ops, vdev);
	if (ret)
		goto put_iommu;

	FUNC1(&vdev->igate);

	FUNC2(vdev->device);
	return 0;

put_iommu:
	FUNC5(group, dev);
put_reset:
	FUNC9(vdev);
	return ret;
}