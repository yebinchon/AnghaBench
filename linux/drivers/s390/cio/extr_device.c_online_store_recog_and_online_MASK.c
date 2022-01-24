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
struct ccw_device {TYPE_1__* drv; TYPE_3__* private; int /*<<< orphan*/  ccwlock; } ;
struct TYPE_5__ {int /*<<< orphan*/  recog_done; } ;
struct TYPE_6__ {scalar_t__ state; TYPE_2__ flags; int /*<<< orphan*/  wait_q; } ;
struct TYPE_4__ {scalar_t__ set_online; } ;

/* Variables and functions */
 scalar_t__ DEV_STATE_BOXED ; 
 scalar_t__ DEV_STATE_OFFLINE ; 
 int EAGAIN ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct ccw_device*) ; 
 int FUNC1 (struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct ccw_device *cdev)
{
	/* Do device recognition, if needed. */
	if (cdev->private->state == DEV_STATE_BOXED) {
		FUNC2(cdev->ccwlock);
		FUNC0(cdev);
		FUNC3(cdev->ccwlock);
		FUNC4(cdev->private->wait_q,
			   cdev->private->flags.recog_done);
		if (cdev->private->state != DEV_STATE_OFFLINE)
			/* recognition failed */
			return -EAGAIN;
	}
	if (cdev->drv && cdev->drv->set_online)
		return FUNC1(cdev);
	return -EINVAL;
}