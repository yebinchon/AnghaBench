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
struct device {int dummy; } ;
struct ccw_device {TYPE_2__* drv; scalar_t__ online; TYPE_1__* private; } ;
struct TYPE_4__ {int (* prepare ) (struct ccw_device*) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  onoff; int /*<<< orphan*/  todo_work; } ;

/* Variables and functions */
 int EAGAIN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct ccw_device*) ; 
 struct ccw_device* FUNC2 (struct device*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct device *dev)
{
	struct ccw_device *cdev = FUNC2(dev);

	if (FUNC3(&cdev->private->todo_work))
		return -EAGAIN;
	/* Fail while device is being set online/offline. */
	if (FUNC0(&cdev->private->onoff))
		return -EAGAIN;

	if (cdev->online && cdev->drv && cdev->drv->prepare)
		return cdev->drv->prepare(cdev);

	return 0;
}