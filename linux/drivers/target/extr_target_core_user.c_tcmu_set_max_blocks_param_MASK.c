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
typedef  int /*<<< orphan*/  substring_t ;
struct tcmu_dev {int /*<<< orphan*/  cmdr_lock; int /*<<< orphan*/  max_blocks; scalar_t__ data_bitmap; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  tcmu_global_max_blocks ; 

__attribute__((used)) static int FUNC6(struct tcmu_dev *udev, substring_t *arg)
{
	int val, ret;

	ret = FUNC2(arg, &val);
	if (ret < 0) {
		FUNC5("match_int() failed for max_data_area_mb=. Error %d.\n",
		       ret);
		return ret;
	}

	if (val <= 0) {
		FUNC5("Invalid max_data_area %d.\n", val);
		return -EINVAL;
	}

	FUNC3(&udev->cmdr_lock);
	if (udev->data_bitmap) {
		FUNC5("Cannot set max_data_area_mb after it has been enabled.\n");
		ret = -EINVAL;
		goto unlock;
	}

	udev->max_blocks = FUNC1(val);
	if (udev->max_blocks > tcmu_global_max_blocks) {
		FUNC5("%d is too large. Adjusting max_data_area_mb to global limit of %u\n",
		       val, FUNC0(tcmu_global_max_blocks));
		udev->max_blocks = tcmu_global_max_blocks;
	}

unlock:
	FUNC4(&udev->cmdr_lock);
	return ret;
}