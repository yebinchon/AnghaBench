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
struct mdev_driver {int (* probe ) (struct device*) ;} ;
struct mdev_device {int dummy; } ;
struct device {int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int FUNC0 (struct mdev_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct mdev_device*) ; 
 int FUNC2 (struct device*) ; 
 struct mdev_device* FUNC3 (struct device*) ; 
 struct mdev_driver* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct device *dev)
{
	struct mdev_driver *drv = FUNC4(dev->driver);
	struct mdev_device *mdev = FUNC3(dev);
	int ret;

	ret = FUNC0(mdev);
	if (ret)
		return ret;

	if (drv && drv->probe) {
		ret = drv->probe(dev);
		if (ret)
			FUNC1(mdev);
	}

	return ret;
}