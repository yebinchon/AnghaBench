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
struct vfio_platform_device {int reset_required; struct vfio_platform_device* name; int /*<<< orphan*/  parent_module; int /*<<< orphan*/  get_irq; int /*<<< orphan*/  get_resource; int /*<<< orphan*/  flags; void* opaque; } ;
struct amba_id {int dummy; } ;
struct amba_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  periphid; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  VFIO_DEVICE_FLAGS_AMBA ; 
 int /*<<< orphan*/  get_amba_irq ; 
 int /*<<< orphan*/  get_amba_resource ; 
 struct vfio_platform_device* FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vfio_platform_device*) ; 
 struct vfio_platform_device* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct vfio_platform_device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct amba_device *adev, const struct amba_id *id)
{
	struct vfio_platform_device *vdev;
	int ret;

	vdev = FUNC2(sizeof(*vdev), GFP_KERNEL);
	if (!vdev)
		return -ENOMEM;

	vdev->name = FUNC0(GFP_KERNEL, "vfio-amba-%08x", adev->periphid);
	if (!vdev->name) {
		FUNC1(vdev);
		return -ENOMEM;
	}

	vdev->opaque = (void *) adev;
	vdev->flags = VFIO_DEVICE_FLAGS_AMBA;
	vdev->get_resource = get_amba_resource;
	vdev->get_irq = get_amba_irq;
	vdev->parent_module = THIS_MODULE;
	vdev->reset_required = false;

	ret = FUNC3(vdev, &adev->dev);
	if (ret) {
		FUNC1(vdev->name);
		FUNC1(vdev);
	}

	return ret;
}