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
struct ww_acquire_ctx {int dummy; } ;
struct regulator_dev {scalar_t__ mutex_owner; int /*<<< orphan*/  ref_cnt; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int EDEADLK ; 
 scalar_t__ current ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  regulator_nesting_mutex ; 
 int FUNC2 (int /*<<< orphan*/ *,struct ww_acquire_ctx*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC4(struct regulator_dev *rdev,
					struct ww_acquire_ctx *ww_ctx)
{
	bool lock = false;
	int ret = 0;

	FUNC0(&regulator_nesting_mutex);

	if (ww_ctx || !FUNC3(&rdev->mutex)) {
		if (rdev->mutex_owner == current)
			rdev->ref_cnt++;
		else
			lock = true;

		if (lock) {
			FUNC1(&regulator_nesting_mutex);
			ret = FUNC2(&rdev->mutex, ww_ctx);
			FUNC0(&regulator_nesting_mutex);
		}
	} else {
		lock = true;
	}

	if (lock && ret != -EDEADLK) {
		rdev->ref_cnt++;
		rdev->mutex_owner = current;
	}

	FUNC1(&regulator_nesting_mutex);

	return ret;
}