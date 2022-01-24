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
struct dasd_devmap {int features; TYPE_1__* device; } ;
struct ccw_device {int dummy; } ;
struct TYPE_2__ {int features; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dasd_devmap*) ; 
 int FUNC1 (struct dasd_devmap*) ; 
 struct dasd_devmap* FUNC2 (struct ccw_device*) ; 
 int /*<<< orphan*/  dasd_devmap_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int
FUNC5(struct ccw_device *cdev, int feature, int flag)
{
	struct dasd_devmap *devmap;

	devmap = FUNC2(cdev);
	if (FUNC0(devmap))
		return FUNC1(devmap);

	FUNC3(&dasd_devmap_lock);
	if (flag)
		devmap->features |= feature;
	else
		devmap->features &= ~feature;
	if (devmap->device)
		devmap->device->features = devmap->features;
	FUNC4(&dasd_devmap_lock);
	return 0;
}