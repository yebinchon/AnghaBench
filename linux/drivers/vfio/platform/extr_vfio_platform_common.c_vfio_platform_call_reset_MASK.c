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
struct vfio_platform_device {int (* of_reset ) (struct vfio_platform_device*) ;int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct vfio_platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (struct vfio_platform_device*) ; 
 int FUNC4 (struct vfio_platform_device*,char const**) ; 

__attribute__((used)) static int FUNC5(struct vfio_platform_device *vdev,
				    const char **extra_dbg)
{
	if (FUNC0(vdev)) {
		FUNC1(vdev->device, "reset\n");
		return FUNC4(vdev, extra_dbg);
	} else if (vdev->of_reset) {
		FUNC1(vdev->device, "reset\n");
		return vdev->of_reset(vdev);
	}

	FUNC2(vdev->device, "no reset function found!\n");
	return -EINVAL;
}