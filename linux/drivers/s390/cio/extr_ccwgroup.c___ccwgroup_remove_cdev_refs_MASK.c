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
struct ccwgroup_device {int count; struct ccw_device** cdev; } ;
struct ccw_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  ccwlock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct ccwgroup_device *gdev)
{
	struct ccw_device *cdev;
	int i;

	for (i = 0; i < gdev->count; i++) {
		cdev = gdev->cdev[i];
		if (!cdev)
			continue;
		FUNC2(cdev->ccwlock);
		FUNC0(&cdev->dev, NULL);
		FUNC3(cdev->ccwlock);
		gdev->cdev[i] = NULL;
		FUNC1(&cdev->dev);
	}
}