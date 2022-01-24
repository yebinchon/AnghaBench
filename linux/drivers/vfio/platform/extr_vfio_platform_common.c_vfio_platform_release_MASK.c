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
struct vfio_platform_device {int /*<<< orphan*/  parent_module; int /*<<< orphan*/  device; scalar_t__ reset_required; int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,char const*) ; 
 int /*<<< orphan*/  driver_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct vfio_platform_device*,char const**) ; 
 int /*<<< orphan*/  FUNC7 (struct vfio_platform_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct vfio_platform_device*) ; 

__attribute__((used)) static void FUNC9(void *device_data)
{
	struct vfio_platform_device *vdev = device_data;

	FUNC3(&driver_lock);

	if (!(--vdev->refcnt)) {
		const char *extra_dbg = NULL;
		int ret;

		ret = FUNC6(vdev, &extra_dbg);
		if (ret && vdev->reset_required) {
			FUNC1(vdev->device, "reset driver is required and reset call failed in release (%d) %s\n",
				 ret, extra_dbg ? extra_dbg : "");
			FUNC0(1);
		}
		FUNC5(vdev->device);
		FUNC8(vdev);
		FUNC7(vdev);
	}

	FUNC4(&driver_lock);

	FUNC2(vdev->parent_module);
}