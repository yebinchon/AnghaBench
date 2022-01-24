#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct subchannel {int dummy; } ;
struct device {int dummy; } ;
struct ccw_driver {int /*<<< orphan*/  (* remove ) (struct ccw_device*) ;} ;
struct TYPE_6__ {int /*<<< orphan*/  parent; } ;
struct ccw_device {int /*<<< orphan*/  ccwlock; TYPE_3__ dev; TYPE_2__* private; struct ccw_driver* drv; scalar_t__ online; } ;
struct TYPE_4__ {int /*<<< orphan*/  devno; int /*<<< orphan*/  ssid; } ;
struct TYPE_5__ {int /*<<< orphan*/  int_class; TYPE_1__ dev_id; int /*<<< orphan*/  wait_q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQIO_CIO ; 
 int /*<<< orphan*/  FUNC1 (struct ccw_device*) ; 
 int FUNC2 (struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct ccw_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct subchannel*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ccw_device*) ; 
 struct ccw_device* FUNC10 (struct device*) ; 
 struct subchannel* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct device *dev)
{
	struct ccw_device *cdev = FUNC10(dev);
	struct ccw_driver *cdrv = cdev->drv;
	struct subchannel *sch;
	int ret;

	if (cdrv->remove)
		cdrv->remove(cdev);

	FUNC7(cdev->ccwlock);
	if (cdev->online) {
		cdev->online = 0;
		ret = FUNC2(cdev);
		FUNC8(cdev->ccwlock);
		if (ret == 0)
			FUNC12(cdev->private->wait_q,
				   FUNC4(cdev));
		else
			FUNC0(0, "ccw_device_offline returned %d, "
				      "device 0.%x.%04x\n",
				      ret, cdev->private->dev_id.ssid,
				      cdev->private->dev_id.devno);
		/* Give up reference obtained in ccw_device_set_online(). */
		FUNC6(&cdev->dev);
		FUNC7(cdev->ccwlock);
	}
	FUNC3(cdev, 0);
	cdev->drv = NULL;
	cdev->private->int_class = IRQIO_CIO;
	sch = FUNC11(cdev->dev.parent);
	FUNC8(cdev->ccwlock);
	FUNC5(sch);
	FUNC1(cdev);

	return 0;
}