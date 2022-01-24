#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct video_device {int dummy; } ;
struct soc_camera_device {TYPE_2__* sasc; int /*<<< orphan*/ * clk; scalar_t__ num_user_formats; struct video_device* vdev; int /*<<< orphan*/  ctrl_handler; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* del_device ) (struct soc_camera_device*) ;scalar_t__ board_info; } ;
struct soc_camera_desc {TYPE_1__ host_desc; } ;
struct device_driver {int /*<<< orphan*/  owner; } ;
struct device {struct device_driver* driver; } ;
struct TYPE_4__ {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct soc_camera_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct soc_camera_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct soc_camera_device*) ; 
 struct device* FUNC5 (struct soc_camera_device*) ; 
 struct soc_camera_desc* FUNC6 (struct soc_camera_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct video_device*) ; 

__attribute__((used)) static int FUNC10(struct soc_camera_device *icd)
{
	struct soc_camera_desc *sdesc = FUNC6(icd);
	struct video_device *vdev = icd->vdev;

	FUNC8(&icd->ctrl_handler);
	if (vdev) {
		FUNC9(vdev);
		icd->vdev = NULL;
	}

	if (sdesc->host_desc.board_info) {
		FUNC3(icd);
	} else {
		struct device *dev = FUNC5(icd);
		struct device_driver *drv = dev ? dev->driver : NULL;
		if (drv) {
			sdesc->host_desc.del_device(icd);
			FUNC0(drv->owner);
		}
	}

	if (icd->num_user_formats)
		FUNC2(icd);

	if (icd->clk) {
		/* For the synchronous case */
		FUNC7(icd->clk);
		icd->clk = NULL;
	}

	if (icd->sasc)
		FUNC1(icd->sasc->pdev);

	return 0;
}