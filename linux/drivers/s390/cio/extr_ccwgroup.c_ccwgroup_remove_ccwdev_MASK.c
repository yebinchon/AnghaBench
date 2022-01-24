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
struct ccwgroup_device {int /*<<< orphan*/  dev; } ;
struct ccw_device {int /*<<< orphan*/  ccwlock; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct ccwgroup_device*) ; 
 struct ccwgroup_device* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(struct ccw_device *cdev)
{
	struct ccwgroup_device *gdev;

	/* Ignore offlining errors, device is gone anyway. */
	FUNC0(cdev);
	/* If one of its devices is gone, the whole group is done for. */
	FUNC5(cdev->ccwlock);
	gdev = FUNC2(&cdev->dev);
	if (!gdev) {
		FUNC6(cdev->ccwlock);
		return;
	}
	/* Get ccwgroup device reference for local processing. */
	FUNC3(&gdev->dev);
	FUNC6(cdev->ccwlock);
	/* Unregister group device. */
	FUNC1(gdev);
	/* Release ccwgroup device reference for local processing. */
	FUNC4(&gdev->dev);
}