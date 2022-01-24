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
struct ccw_device {TYPE_1__* private; } ;
typedef  enum dev_event { ____Placeholder_dev_event } dev_event ;
struct TYPE_2__ {int /*<<< orphan*/  wait_q; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEV_STATE_NOT_OPER ; 
 int /*<<< orphan*/  FUNC0 (struct ccw_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct ccw_device *cdev, enum dev_event dev_event)
{
	FUNC0(cdev, 0);
	cdev->private->state = DEV_STATE_NOT_OPER;
	FUNC1(&cdev->private->wait_q);
}