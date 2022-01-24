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
struct TYPE_3__ {scalar_t__ cu_type; } ;
struct ccw_device {TYPE_2__* private; TYPE_1__ id; } ;
struct TYPE_4__ {scalar_t__ state; } ;

/* Variables and functions */
 scalar_t__ DEV_STATE_BOXED ; 
 scalar_t__ DEV_STATE_NOT_OPER ; 
 int FUNC0 (struct ccw_device*) ; 
 int FUNC1 (struct ccw_device*) ; 

__attribute__((used)) static int FUNC2(struct ccw_device *cdev, int force)
{
	int ret;

	ret = FUNC1(cdev);
	if (ret && !force)
		return ret;
	if (force && cdev->private->state == DEV_STATE_BOXED) {
		ret = FUNC0(cdev);
		if (ret)
			return ret;
		if (cdev->id.cu_type == 0)
			cdev->private->state = DEV_STATE_NOT_OPER;
		ret = FUNC1(cdev);
		if (ret)
			return ret;
	}
	return 0;
}