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
struct mdev_driver {int /*<<< orphan*/  (* remove ) (struct device*) ;} ;
struct mdev_device {int dummy; } ;
struct device {int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mdev_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 struct mdev_device* FUNC2 (struct device*) ; 
 struct mdev_driver* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct device *dev)
{
	struct mdev_driver *drv = FUNC3(dev->driver);
	struct mdev_device *mdev = FUNC2(dev);

	if (drv && drv->remove)
		drv->remove(dev);

	FUNC0(mdev);

	return 0;
}