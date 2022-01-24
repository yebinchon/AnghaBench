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
struct ccwgroup_driver {int (* freeze ) (struct ccwgroup_device*) ;} ;
struct TYPE_2__ {int /*<<< orphan*/  driver; } ;
struct ccwgroup_device {scalar_t__ state; TYPE_1__ dev; } ;

/* Variables and functions */
 scalar_t__ CCWGROUP_ONLINE ; 
 int FUNC0 (struct ccwgroup_device*) ; 
 struct ccwgroup_device* FUNC1 (struct device*) ; 
 struct ccwgroup_driver* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct device *dev)
{
	struct ccwgroup_device *gdev = FUNC1(dev);
	struct ccwgroup_driver *gdrv = FUNC2(gdev->dev.driver);

	if (!gdev->dev.driver || gdev->state != CCWGROUP_ONLINE)
		return 0;

	return gdrv->freeze ? gdrv->freeze(gdev) : 0;
}