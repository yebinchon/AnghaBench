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
struct device {int dummy; } ;
struct ccw_device {TYPE_1__* drv; scalar_t__ online; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* complete ) (struct ccw_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ccw_device*) ; 
 struct ccw_device* FUNC1 (struct device*) ; 

__attribute__((used)) static void FUNC2(struct device *dev)
{
	struct ccw_device *cdev = FUNC1(dev);

	if (cdev->online && cdev->drv && cdev->drv->complete)
		cdev->drv->complete(cdev);
}