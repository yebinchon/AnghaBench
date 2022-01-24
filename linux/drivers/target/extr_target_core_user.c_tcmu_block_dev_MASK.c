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
struct tcmu_dev {int /*<<< orphan*/  cmdr_lock; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  TCMU_DEV_BIT_BLOCKED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct tcmu_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct tcmu_dev*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct tcmu_dev *udev)
{
	FUNC0(&udev->cmdr_lock);

	if (FUNC4(TCMU_DEV_BIT_BLOCKED, &udev->flags))
		goto unlock;

	/* complete IO that has executed successfully */
	FUNC3(udev);
	/* fail IO waiting to be queued */
	FUNC2(udev, true);

unlock:
	FUNC1(&udev->cmdr_lock);
}