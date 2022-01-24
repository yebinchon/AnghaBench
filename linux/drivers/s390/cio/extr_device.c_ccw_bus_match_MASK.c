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
struct device_driver {int dummy; } ;
struct device {int dummy; } ;
struct ccw_driver {struct ccw_device_id* ids; } ;
struct ccw_device_id {int /*<<< orphan*/  driver_info; } ;
struct TYPE_2__ {int /*<<< orphan*/  driver_info; } ;
struct ccw_device {TYPE_1__ id; } ;

/* Variables and functions */
 struct ccw_device_id* FUNC0 (struct ccw_device_id const*,TYPE_1__*) ; 
 struct ccw_device* FUNC1 (struct device*) ; 
 struct ccw_driver* FUNC2 (struct device_driver*) ; 

__attribute__((used)) static int
FUNC3 (struct device * dev, struct device_driver * drv)
{
	struct ccw_device *cdev = FUNC1(dev);
	struct ccw_driver *cdrv = FUNC2(drv);
	const struct ccw_device_id *ids = cdrv->ids, *found;

	if (!ids)
		return 0;

	found = FUNC0(ids, &cdev->id);
	if (!found)
		return 0;

	cdev->id.driver_info = found->driver_info;

	return 1;
}