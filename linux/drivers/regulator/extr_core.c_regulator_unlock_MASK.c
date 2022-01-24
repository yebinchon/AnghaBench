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
struct regulator_dev {scalar_t__ ref_cnt; int /*<<< orphan*/  mutex; int /*<<< orphan*/ * mutex_owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  regulator_nesting_mutex ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct regulator_dev *rdev)
{
	FUNC1(&regulator_nesting_mutex);

	if (--rdev->ref_cnt == 0) {
		rdev->mutex_owner = NULL;
		FUNC3(&rdev->mutex);
	}

	FUNC0(rdev->ref_cnt < 0);

	FUNC2(&regulator_nesting_mutex);
}