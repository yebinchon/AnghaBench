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
struct subchannel {int /*<<< orphan*/  lpm; } ;
struct device_attribute {int dummy; } ;
struct device {int /*<<< orphan*/  parent; } ;
struct ccw_device {TYPE_1__* private; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int state; } ;

/* Variables and functions */
#define  DEV_STATE_BOXED 131 
#define  DEV_STATE_DISCONNECTED 130 
#define  DEV_STATE_DISCONNECTED_SENSE_ID 129 
#define  DEV_STATE_NOT_OPER 128 
 scalar_t__ FUNC0 (struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 struct ccw_device* FUNC2 (struct device*) ; 
 struct subchannel* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t
FUNC4 (struct device *dev, struct device_attribute *attr, char *buf)
{
	struct ccw_device *cdev = FUNC2(dev);
	struct subchannel *sch;

	if (FUNC0(cdev))
		return FUNC1(buf, "no device\n");
	switch (cdev->private->state) {
	case DEV_STATE_BOXED:
		return FUNC1(buf, "boxed\n");
	case DEV_STATE_DISCONNECTED:
	case DEV_STATE_DISCONNECTED_SENSE_ID:
	case DEV_STATE_NOT_OPER:
		sch = FUNC3(dev->parent);
		if (!sch->lpm)
			return FUNC1(buf, "no path\n");
		else
			return FUNC1(buf, "no device\n");
	default:
		/* All other states considered fine. */
		return FUNC1(buf, "good\n");
	}
}