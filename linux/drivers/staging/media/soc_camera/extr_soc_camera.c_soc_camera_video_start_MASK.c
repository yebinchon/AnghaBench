#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct soc_camera_device {TYPE_2__* vdev; int /*<<< orphan*/  pdev; int /*<<< orphan*/  parent; } ;
typedef  struct device_type const device_type ;
struct TYPE_5__ {struct device_type const* type; } ;
struct TYPE_6__ {scalar_t__ tvnorms; TYPE_1__ dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  VFL_TYPE_GRABBER ; 
 int /*<<< orphan*/  VIDIOC_ENUMSTD ; 
 int /*<<< orphan*/  VIDIOC_G_STD ; 
 int /*<<< orphan*/  VIDIOC_S_STD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,struct soc_camera_device*) ; 

__attribute__((used)) static int FUNC4(struct soc_camera_device *icd)
{
	const struct device_type *type = icd->vdev->dev.type;
	int ret;

	if (!icd->parent)
		return -ENODEV;

	FUNC3(icd->vdev, icd);
	if (icd->vdev->tvnorms == 0) {
		/* disable the STD API if there are no tvnorms defined */
		FUNC1(icd->vdev, VIDIOC_G_STD);
		FUNC1(icd->vdev, VIDIOC_S_STD);
		FUNC1(icd->vdev, VIDIOC_ENUMSTD);
	}
	ret = FUNC2(icd->vdev, VFL_TYPE_GRABBER, -1);
	if (ret < 0) {
		FUNC0(icd->pdev, "video_register_device failed: %d\n", ret);
		return ret;
	}

	/* Restore device type, possibly set by the subdevice driver */
	icd->vdev->dev.type = type;

	return 0;
}