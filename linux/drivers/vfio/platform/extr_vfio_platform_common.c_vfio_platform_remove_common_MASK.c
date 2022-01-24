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
struct vfio_platform_device {int /*<<< orphan*/  device; } ;
struct device {int /*<<< orphan*/  iommu_group; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct vfio_platform_device* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct vfio_platform_device*) ; 

struct vfio_platform_device *FUNC4(struct device *dev)
{
	struct vfio_platform_device *vdev;

	vdev = FUNC1(dev);

	if (vdev) {
		FUNC0(vdev->device);
		FUNC3(vdev);
		FUNC2(dev->iommu_group, dev);
	}

	return vdev;
}