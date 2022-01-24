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
struct urdev {int dummy; } ;
struct ccw_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct urdev* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct urdev*) ; 

__attribute__((used)) static struct urdev *FUNC5(struct ccw_device *cdev)
{
	struct urdev *urd;
	unsigned long flags;

	FUNC2(FUNC1(cdev), flags);
	urd = FUNC0(&cdev->dev);
	if (urd)
		FUNC4(urd);
	FUNC3(FUNC1(cdev), flags);
	return urd;
}