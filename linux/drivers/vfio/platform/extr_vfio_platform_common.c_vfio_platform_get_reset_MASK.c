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
struct vfio_platform_device {void* of_reset; int /*<<< orphan*/  reset_module; int /*<<< orphan*/  compat; } ;

/* Variables and functions */
 int ENOENT ; 
 scalar_t__ FUNC0 (struct vfio_platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct vfio_platform_device*) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct vfio_platform_device *vdev)
{
	if (FUNC0(vdev))
		return FUNC2(vdev) ? 0 : -ENOENT;

	vdev->of_reset = FUNC3(vdev->compat,
						    &vdev->reset_module);
	if (!vdev->of_reset) {
		FUNC1("vfio-reset:%s", vdev->compat);
		vdev->of_reset = FUNC3(vdev->compat,
							&vdev->reset_module);
	}

	return vdev->of_reset ? 0 : -ENOENT;
}