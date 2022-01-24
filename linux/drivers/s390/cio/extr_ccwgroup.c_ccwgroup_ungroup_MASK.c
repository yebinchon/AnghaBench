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
struct ccwgroup_device {int /*<<< orphan*/  reg_mutex; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ccwgroup_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct ccwgroup_device*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct ccwgroup_device *gdev)
{
	FUNC4(&gdev->reg_mutex);
	if (FUNC2(&gdev->dev)) {
		FUNC1(gdev);
		FUNC3(&gdev->dev);
		FUNC0(gdev);
	}
	FUNC5(&gdev->reg_mutex);
}