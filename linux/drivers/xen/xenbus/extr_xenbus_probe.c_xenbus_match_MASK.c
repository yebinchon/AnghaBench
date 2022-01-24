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
struct xenbus_driver {int /*<<< orphan*/  ids; } ;
struct device_driver {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 struct xenbus_driver* FUNC2 (struct device_driver*) ; 

int FUNC3(struct device *_dev, struct device_driver *_drv)
{
	struct xenbus_driver *drv = FUNC2(_drv);

	if (!drv->ids)
		return 0;

	return FUNC0(drv->ids, FUNC1(_dev)) != NULL;
}