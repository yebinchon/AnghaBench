#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct soc_camera_host_desc {int (* add_device ) (struct soc_camera_device*) ;int /*<<< orphan*/  (* del_device ) (struct soc_camera_device*) ;scalar_t__ board_info; scalar_t__ module_name; } ;
struct soc_camera_host {int /*<<< orphan*/  host_lock; } ;
struct soc_camera_device {int /*<<< orphan*/  ctrl_handler; int /*<<< orphan*/ * vdev; int /*<<< orphan*/  pdev; } ;
struct soc_camera_desc {struct soc_camera_host_desc host_desc; } ;
struct device {TYPE_1__* driver; } ;
struct TYPE_2__ {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (scalar_t__) ; 
 int FUNC7 (struct soc_camera_host*) ; 
 int /*<<< orphan*/  FUNC8 (struct soc_camera_host*) ; 
 int /*<<< orphan*/  FUNC9 (struct soc_camera_device*) ; 
 int FUNC10 (struct soc_camera_device*,struct soc_camera_desc*) ; 
 int FUNC11 (struct soc_camera_device*) ; 
 int FUNC12 (struct soc_camera_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct soc_camera_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct soc_camera_device*) ; 
 struct device* FUNC15 (struct soc_camera_device*) ; 
 struct soc_camera_desc* FUNC16 (struct soc_camera_device*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int FUNC19 (int /*<<< orphan*/ *,int) ; 
 int FUNC20 (struct soc_camera_device*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC22(struct soc_camera_host *ici,
			    struct soc_camera_device *icd)
{
	struct soc_camera_desc *sdesc = FUNC16(icd);
	struct soc_camera_host_desc *shd = &sdesc->host_desc;
	struct device *control = NULL;
	int ret;

	FUNC1(icd->pdev, "Probing %s\n", FUNC2(icd->pdev));

	/*
	 * Currently the subdev with the largest number of controls (13) is
	 * ov6550. So let's pick 16 as a hint for the control handler. Note
	 * that this is a hint only: too large and you waste some memory, too
	 * small and there is a (very) small performance hit when looking up
	 * controls in the internal hash.
	 */
	ret = FUNC19(&icd->ctrl_handler, 16);
	if (ret < 0)
		return ret;

	/* Must have icd->vdev before registering the device */
	ret = FUNC20(icd);
	if (ret < 0)
		goto evdc;

	/*
	 * ..._video_start() will create a device node, video_register_device()
	 * itself is protected against concurrent open() calls, but we also have
	 * to protect our data also during client probing.
	 */

	/* Non-i2c cameras, e.g., soc_camera_platform, have no board_info */
	if (shd->board_info) {
		ret = FUNC10(icd, sdesc);
		if (ret < 0 && ret != -EPROBE_DEFER)
			goto eadd;
	} else if (!shd->add_device || !shd->del_device) {
		ret = -EINVAL;
		goto eadd;
	} else {
		ret = FUNC7(ici);
		if (ret < 0)
			goto eadd;

		if (shd->module_name)
			ret = FUNC6(shd->module_name);

		ret = shd->add_device(icd);
		if (ret < 0)
			goto eadddev;

		/*
		 * FIXME: this is racy, have to use driver-binding notification,
		 * when it is available
		 */
		control = FUNC15(icd);
		if (!control || !control->driver || !FUNC0(control) ||
		    !FUNC17(control->driver->owner)) {
			shd->del_device(icd);
			ret = -ENODEV;
			goto enodrv;
		}
	}

	FUNC4(&ici->host_lock);
	ret = FUNC11(icd);
	FUNC5(&ici->host_lock);
	if (ret < 0)
		goto efinish;

	return 0;

efinish:
	if (shd->board_info) {
		FUNC9(icd);
	} else {
		shd->del_device(icd);
		FUNC3(control->driver->owner);
enodrv:
eadddev:
		FUNC8(ici);
	}
eadd:
	if (icd->vdev) {
		FUNC21(icd->vdev);
		icd->vdev = NULL;
	}
evdc:
	FUNC18(&icd->ctrl_handler);
	return ret;
}