#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct ccwgroup_driver {scalar_t__ ccw_driver; int (* setup ) (struct ccwgroup_device*) ;int /*<<< orphan*/  driver; } ;
struct TYPE_12__ {int /*<<< orphan*/ * driver; int /*<<< orphan*/  groups; int /*<<< orphan*/  release; struct device* parent; int /*<<< orphan*/ * bus; } ;
struct ccwgroup_device {int count; TYPE_2__ dev; int /*<<< orphan*/  reg_mutex; TYPE_3__** cdev; int /*<<< orphan*/  ungroup_work; int /*<<< orphan*/  onoff; } ;
struct ccw_dev_id {int dummy; } ;
struct TYPE_11__ {scalar_t__ driver_info; } ;
struct TYPE_13__ {scalar_t__ drv; TYPE_2__ dev; int /*<<< orphan*/  ccwlock; TYPE_1__ id; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ccwgroup_device*) ; 
 int FUNC2 (char const**,struct ccw_dev_id*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ccwgroup_attr_groups ; 
 int /*<<< orphan*/  ccwgroup_bus_type ; 
 int /*<<< orphan*/  ccwgroup_release ; 
 int /*<<< orphan*/  ccwgroup_ungroup_workfn ; 
 int /*<<< orphan*/  cdev ; 
 struct ccwgroup_device* FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,struct ccwgroup_device*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 TYPE_3__* FUNC11 (struct ccw_dev_id*) ; 
 struct ccwgroup_device* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (char const*) ; 
 int /*<<< orphan*/  FUNC20 (struct ccwgroup_device*,int /*<<< orphan*/ ,int) ; 
 int FUNC21 (struct ccwgroup_device*) ; 

int FUNC22(struct device *parent, struct ccwgroup_driver *gdrv,
			int num_devices, const char *buf)
{
	struct ccwgroup_device *gdev;
	struct ccw_dev_id dev_id;
	int rc, i;

	if (num_devices < 1)
		return -EINVAL;

	gdev = FUNC12(FUNC20(gdev, cdev, num_devices), GFP_KERNEL);
	if (!gdev)
		return -ENOMEM;

	FUNC3(&gdev->onoff, 0);
	FUNC13(&gdev->reg_mutex);
	FUNC14(&gdev->reg_mutex);
	FUNC0(&gdev->ungroup_work, ccwgroup_ungroup_workfn);
	gdev->count = num_devices;
	gdev->dev.bus = &ccwgroup_bus_type;
	gdev->dev.parent = parent;
	gdev->dev.release = ccwgroup_release;
	FUNC10(&gdev->dev);

	for (i = 0; i < num_devices && buf; i++) {
		rc = FUNC2(&buf, &dev_id);
		if (rc != 0)
			goto error;
		gdev->cdev[i] = FUNC11(&dev_id);
		/*
		 * All devices have to be of the same type in
		 * order to be grouped.
		 */
		if (!gdev->cdev[i] || !gdev->cdev[i]->drv ||
		    gdev->cdev[i]->drv != gdev->cdev[0]->drv ||
		    gdev->cdev[i]->id.driver_info !=
		    gdev->cdev[0]->id.driver_info) {
			rc = -EINVAL;
			goto error;
		}
		/* Don't allow a device to belong to more than one group. */
		FUNC17(gdev->cdev[i]->ccwlock);
		if (FUNC4(&gdev->cdev[i]->dev)) {
			FUNC18(gdev->cdev[i]->ccwlock);
			rc = -EINVAL;
			goto error;
		}
		FUNC6(&gdev->cdev[i]->dev, gdev);
		FUNC18(gdev->cdev[i]->ccwlock);
	}
	/* Check for sufficient number of bus ids. */
	if (i < num_devices) {
		rc = -EINVAL;
		goto error;
	}
	/* Check for trailing stuff. */
	if (i == num_devices && buf && FUNC19(buf) > 0) {
		rc = -EINVAL;
		goto error;
	}
	/* Check if the devices are bound to the required ccw driver. */
	if (gdrv && gdrv->ccw_driver &&
	    gdev->cdev[0]->drv != gdrv->ccw_driver) {
		rc = -EINVAL;
		goto error;
	}

	FUNC7(&gdev->dev, "%s", FUNC5(&gdev->cdev[0]->dev));
	gdev->dev.groups = ccwgroup_attr_groups;

	if (gdrv) {
		gdev->dev.driver = &gdrv->driver;
		rc = gdrv->setup ? gdrv->setup(gdev) : 0;
		if (rc)
			goto error;
	}
	rc = FUNC8(&gdev->dev);
	if (rc)
		goto error;
	rc = FUNC1(gdev);
	if (rc) {
		FUNC9(&gdev->dev);
		goto error;
	}
	FUNC15(&gdev->reg_mutex);
	return 0;
error:
	for (i = 0; i < num_devices; i++)
		if (gdev->cdev[i]) {
			FUNC17(gdev->cdev[i]->ccwlock);
			if (FUNC4(&gdev->cdev[i]->dev) == gdev)
				FUNC6(&gdev->cdev[i]->dev, NULL);
			FUNC18(gdev->cdev[i]->ccwlock);
			FUNC16(&gdev->cdev[i]->dev);
			gdev->cdev[i] = NULL;
		}
	FUNC15(&gdev->reg_mutex);
	FUNC16(&gdev->dev);
	return rc;
}