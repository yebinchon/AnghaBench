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
struct tcmu_dev {int /*<<< orphan*/  timedout_entry; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tcmu_unmap_work ; 
 int /*<<< orphan*/  timed_out_udevs ; 
 int /*<<< orphan*/  timed_out_udevs_lock ; 

__attribute__((used)) static void FUNC5(struct tcmu_dev *udev)
{
	FUNC3(&timed_out_udevs_lock);
	if (FUNC1(&udev->timedout_entry))
		FUNC0(&udev->timedout_entry, &timed_out_udevs);
	FUNC4(&timed_out_udevs_lock);

	FUNC2(&tcmu_unmap_work, 0);
}