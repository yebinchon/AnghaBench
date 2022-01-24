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
struct vfio_platform_device {int /*<<< orphan*/  device; int /*<<< orphan*/  refcnt; scalar_t__ reset_required; int /*<<< orphan*/  parent_module; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,char const*) ; 
 int /*<<< orphan*/  driver_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct vfio_platform_device*,char const**) ; 
 int /*<<< orphan*/  FUNC8 (struct vfio_platform_device*) ; 
 int FUNC9 (struct vfio_platform_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct vfio_platform_device*) ; 
 int FUNC11 (struct vfio_platform_device*) ; 

__attribute__((used)) static int FUNC12(void *device_data)
{
	struct vfio_platform_device *vdev = device_data;
	int ret;

	if (!FUNC6(vdev->parent_module))
		return -ENODEV;

	FUNC2(&driver_lock);

	if (!vdev->refcnt) {
		const char *extra_dbg = NULL;

		ret = FUNC11(vdev);
		if (ret)
			goto err_reg;

		ret = FUNC9(vdev);
		if (ret)
			goto err_irq;

		ret = FUNC4(vdev->device);
		if (ret < 0)
			goto err_pm;

		ret = FUNC7(vdev, &extra_dbg);
		if (ret && vdev->reset_required) {
			FUNC0(vdev->device, "reset driver is required and reset call failed in open (%d) %s\n",
				 ret, extra_dbg ? extra_dbg : "");
			goto err_rst;
		}
	}

	vdev->refcnt++;

	FUNC3(&driver_lock);
	return 0;

err_rst:
	FUNC5(vdev->device);
err_pm:
	FUNC8(vdev);
err_irq:
	FUNC10(vdev);
err_reg:
	FUNC3(&driver_lock);
	FUNC1(THIS_MODULE);
	return ret;
}