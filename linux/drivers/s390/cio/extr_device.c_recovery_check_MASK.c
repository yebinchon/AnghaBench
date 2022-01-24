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
struct TYPE_7__ {int pam; } ;
struct TYPE_8__ {TYPE_2__ pmcw; } ;
struct subchannel {int opm; int vpm; TYPE_3__ schib; } ;
struct device {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  parent; } ;
struct ccw_device {int /*<<< orphan*/  ccwlock; TYPE_5__* private; TYPE_1__ dev; } ;
struct TYPE_9__ {int /*<<< orphan*/  devno; int /*<<< orphan*/  ssid; } ;
struct TYPE_10__ {int state; TYPE_4__ dev_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DEV_EVENT_VERIFY ; 
#define  DEV_STATE_DISCONNECTED 130 
#define  DEV_STATE_DISCONNECTED_SENSE_ID 129 
#define  DEV_STATE_ONLINE 128 
 int /*<<< orphan*/  FUNC1 (struct ccw_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct ccw_device* FUNC4 (struct device*) ; 
 struct subchannel* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct device *dev, void *data)
{
	struct ccw_device *cdev = FUNC4(dev);
	struct subchannel *sch;
	int *redo = data;

	FUNC2(cdev->ccwlock);
	switch (cdev->private->state) {
	case DEV_STATE_ONLINE:
		sch = FUNC5(cdev->dev.parent);
		if ((sch->schib.pmcw.pam & sch->opm) == sch->vpm)
			break;
		/* fall through */
	case DEV_STATE_DISCONNECTED:
		FUNC0(3, "recovery: trigger 0.%x.%04x\n",
			      cdev->private->dev_id.ssid,
			      cdev->private->dev_id.devno);
		FUNC1(cdev, DEV_EVENT_VERIFY);
		*redo = 1;
		break;
	case DEV_STATE_DISCONNECTED_SENSE_ID:
		*redo = 1;
		break;
	}
	FUNC3(cdev->ccwlock);

	return 0;
}