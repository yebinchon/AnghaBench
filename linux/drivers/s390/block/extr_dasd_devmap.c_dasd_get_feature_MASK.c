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
struct dasd_devmap {int features; } ;
struct ccw_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dasd_devmap*) ; 
 int FUNC1 (struct dasd_devmap*) ; 
 struct dasd_devmap* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int
FUNC4(struct ccw_device *cdev, int feature)
{
	struct dasd_devmap *devmap;

	devmap = FUNC2(FUNC3(&cdev->dev));
	if (FUNC0(devmap))
		return FUNC1(devmap);

	return ((devmap->features & feature) != 0);
}