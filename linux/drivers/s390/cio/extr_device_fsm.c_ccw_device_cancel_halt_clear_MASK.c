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
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct ccw_device {TYPE_2__* private; TYPE_1__ dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  devno; int /*<<< orphan*/  ssid; } ;
struct TYPE_5__ {TYPE_3__ dev_id; int /*<<< orphan*/  iretry; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EIO ; 
 int FUNC1 (struct subchannel*,int /*<<< orphan*/ *) ; 
 struct subchannel* FUNC2 (int /*<<< orphan*/ ) ; 

int
FUNC3(struct ccw_device *cdev)
{
	struct subchannel *sch;
	int ret;

	sch = FUNC2(cdev->dev.parent);
	ret = FUNC1(sch, &cdev->private->iretry);

	if (ret == -EIO)
		FUNC0(0, "0.%x.%04x: could not stop I/O\n",
			      cdev->private->dev_id.ssid,
			      cdev->private->dev_id.devno);

	return ret;
}