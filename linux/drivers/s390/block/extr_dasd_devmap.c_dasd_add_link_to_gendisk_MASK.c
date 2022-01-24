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
struct gendisk {struct dasd_devmap* private_data; } ;
struct dasd_devmap {int dummy; } ;
struct dasd_device {TYPE_1__* cdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dasd_devmap*) ; 
 int /*<<< orphan*/  dasd_devmap_lock ; 
 struct dasd_devmap* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct gendisk *gdp, struct dasd_device *device)
{
	struct dasd_devmap *devmap;

	devmap = FUNC1(FUNC2(&device->cdev->dev));
	if (FUNC0(devmap))
		return;
	FUNC3(&dasd_devmap_lock);
	gdp->private_data = devmap;
	FUNC4(&dasd_devmap_lock);
}