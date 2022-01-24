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
struct nubus_driver {int (* remove ) (int /*<<< orphan*/ ) ;} ;
struct device {scalar_t__ driver; } ;

/* Variables and functions */
 int ENODEV ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 struct nubus_driver* FUNC2 (scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct device *dev)
{
	struct nubus_driver *ndrv = FUNC2(dev->driver);
	int err = -ENODEV;

	if (dev->driver && ndrv->remove)
		err = ndrv->remove(FUNC1(dev));
	return err;
}