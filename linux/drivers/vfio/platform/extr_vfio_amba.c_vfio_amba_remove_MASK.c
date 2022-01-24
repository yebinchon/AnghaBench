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
struct vfio_platform_device {struct vfio_platform_device* name; } ;
struct amba_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct vfio_platform_device*) ; 
 struct vfio_platform_device* FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct amba_device *adev)
{
	struct vfio_platform_device *vdev;

	vdev = FUNC1(&adev->dev);
	if (vdev) {
		FUNC0(vdev->name);
		FUNC0(vdev);
		return 0;
	}

	return -EINVAL;
}