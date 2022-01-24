#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct device {int /*<<< orphan*/  driver; } ;
struct ccwgroup_driver {int /*<<< orphan*/  (* remove ) (struct ccwgroup_device*) ;} ;
struct ccwgroup_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ccwgroup_device*) ; 
 struct ccwgroup_device* FUNC1 (struct device*) ; 
 struct ccwgroup_driver* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct device *dev)
{
	struct ccwgroup_device *gdev = FUNC1(dev);
	struct ccwgroup_driver *gdrv = FUNC2(dev->driver);

	if (!dev->driver)
		return 0;
	if (gdrv->remove)
		gdrv->remove(gdev);

	return 0;
}