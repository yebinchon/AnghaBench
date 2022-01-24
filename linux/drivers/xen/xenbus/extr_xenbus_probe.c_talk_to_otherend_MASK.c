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
struct xenbus_driver {int (* read_otherend_details ) (struct xenbus_device*) ;} ;
struct TYPE_2__ {int /*<<< orphan*/  driver; } ;
struct xenbus_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct xenbus_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct xenbus_device*) ; 
 int FUNC2 (struct xenbus_device*) ; 
 struct xenbus_driver* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct xenbus_device *dev)
{
	struct xenbus_driver *drv = FUNC3(dev->dev.driver);

	FUNC1(dev);
	FUNC0(dev);

	return drv->read_otherend_details(dev);
}