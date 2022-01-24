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
struct urdev {scalar_t__ open_flag; } ;
struct ccw_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (char*,struct ccw_device*) ; 
 struct urdev* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ur_banner ; 

__attribute__((used)) static int FUNC4(struct ccw_device *cdev)
{
	struct urdev *urd = FUNC1(&cdev->dev);

	FUNC0("ur_pm_suspend: cdev=%p\n", cdev);
	if (urd->open_flag) {
		FUNC3("Unit record device %s is busy, %s refusing to "
		       "suspend.\n", FUNC2(&cdev->dev), ur_banner);
		return -EBUSY;
	}
	return 0;
}