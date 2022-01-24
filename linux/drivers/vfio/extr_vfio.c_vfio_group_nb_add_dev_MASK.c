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
struct vfio_group {int /*<<< orphan*/  iommu_group; int /*<<< orphan*/  container_users; } ;
struct vfio_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct vfio_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct vfio_device*) ; 
 struct vfio_device* FUNC5 (struct vfio_group*,struct device*) ; 

__attribute__((used)) static int FUNC6(struct vfio_group *group, struct device *dev)
{
	struct vfio_device *device;

	/* Do we already know about it?  We shouldn't */
	device = FUNC5(group, dev);
	if (FUNC0(device)) {
		FUNC4(device);
		return 0;
	}

	/* Nothing to do for idle groups */
	if (!FUNC1(&group->container_users))
		return 0;

	/* TODO Prevent device auto probing */
	FUNC2(dev, "Device added to live group %d!\n",
		 FUNC3(group->iommu_group));

	return 0;
}