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
typedef  int /*<<< orphan*/  u32 ;
struct subchannel {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;
struct ccw_device {TYPE_2__* private; TYPE_1__ dev; } ;
typedef  enum dev_event { ____Placeholder_dev_event } dev_event ;
typedef  scalar_t__ addr_t ;
struct TYPE_4__ {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEV_STATE_DISCONNECTED_SENSE_ID ; 
 int /*<<< orphan*/  FUNC0 (struct ccw_device*) ; 
 scalar_t__ FUNC1 (struct subchannel*,int /*<<< orphan*/ ) ; 
 struct subchannel* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct ccw_device *cdev, enum dev_event dev_event)
{
	struct subchannel *sch;

	sch = FUNC2(cdev->dev.parent);
	if (FUNC1(sch, (u32)(addr_t)sch) != 0)
		/* Couldn't enable the subchannel for i/o. Sick device. */
		return;
	cdev->private->state = DEV_STATE_DISCONNECTED_SENSE_ID;
	FUNC0(cdev);
}