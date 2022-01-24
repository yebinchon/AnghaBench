#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct subchannel {int /*<<< orphan*/  lock; int /*<<< orphan*/  schid; } ;
struct device {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  parent; } ;
struct ccw_device {TYPE_5__* drv; scalar_t__ online; TYPE_4__* private; TYPE_1__ dev; } ;
struct TYPE_10__ {int (* restore ) (struct ccw_device*) ;} ;
struct TYPE_8__ {int /*<<< orphan*/  devno; int /*<<< orphan*/  ssid; } ;
struct TYPE_7__ {int /*<<< orphan*/  donotify; } ;
struct TYPE_9__ {int state; TYPE_3__ dev_id; scalar_t__ cmb; int /*<<< orphan*/  wait_q; TYPE_2__ flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CDEV_TODO_REBIND ; 
 int /*<<< orphan*/  CDEV_TODO_UNREG ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  CIO_OPER ; 
#define  DEV_STATE_BOXED 130 
#define  DEV_STATE_OFFLINE 129 
#define  DEV_STATE_ONLINE 128 
 int ENODEV ; 
 scalar_t__ NOTIFY_BAD ; 
 int /*<<< orphan*/  FUNC1 (struct ccw_device*) ; 
 scalar_t__ FUNC2 (struct ccw_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct ccw_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct ccw_device*) ; 
 int FUNC7 (struct ccw_device*,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ccw_device*) ; 
 int FUNC10 (struct ccw_device*) ; 
 int FUNC11 (struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (struct ccw_device*) ; 
 struct ccw_device* FUNC15 (struct device*) ; 
 struct subchannel* FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC18(struct device *dev)
{
	struct ccw_device *cdev = FUNC15(dev);
	struct subchannel *sch;
	int ret = 0;

	FUNC1(cdev);
	sch = FUNC16(cdev->dev.parent);
	FUNC12(sch->lock);
	if (FUNC8(sch->schid))
		goto out_restore;

	/* check recognition results */
	switch (cdev->private->state) {
	case DEV_STATE_OFFLINE:
	case DEV_STATE_ONLINE:
		cdev->private->flags.donotify = 0;
		break;
	case DEV_STATE_BOXED:
		ret = FUNC10(cdev);
		if (ret)
			goto out_unlock;
		goto out_restore;
	default:
		ret = FUNC11(cdev);
		if (ret)
			goto out_unlock;
		goto out_restore;
	}
	/* check if the device type has changed */
	if (!FUNC5(cdev)) {
		FUNC6(cdev);
		FUNC4(cdev, CDEV_TODO_REBIND);
		ret = -ENODEV;
		goto out_unlock;
	}
	if (!cdev->online)
		goto out_unlock;

	if (FUNC3(cdev)) {
		ret = FUNC11(cdev);
		if (ret)
			goto out_unlock;
		goto out_restore;
	}
	FUNC13(sch->lock);
	FUNC17(cdev->private->wait_q, FUNC9(cdev));
	FUNC12(sch->lock);

	if (FUNC2(cdev, CIO_OPER) == NOTIFY_BAD) {
		FUNC4(cdev, CDEV_TODO_UNREG);
		ret = -ENODEV;
		goto out_unlock;
	}

	/* reenable cmf, if needed */
	if (cdev->private->cmb) {
		FUNC13(sch->lock);
		ret = FUNC7(cdev, 1);
		FUNC12(sch->lock);
		if (ret) {
			FUNC0(2, "resume: cdev 0.%x.%04x: cmf failed "
				      "(rc=%d)\n", cdev->private->dev_id.ssid,
				      cdev->private->dev_id.devno, ret);
			ret = 0;
		}
	}

out_restore:
	FUNC13(sch->lock);
	if (cdev->online && cdev->drv && cdev->drv->restore)
		ret = cdev->drv->restore(cdev);
	return ret;

out_unlock:
	FUNC13(sch->lock);
	return ret;
}