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
struct regulator_dev {int /*<<< orphan*/  ref_cnt; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int EDEADLK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  regulator_list_mutex ; 
 int FUNC2 (struct regulator_dev*,struct regulator_dev**,struct regulator_dev**,struct ww_acquire_ctx*) ; 
 int /*<<< orphan*/  FUNC3 (struct regulator_dev*) ; 
 int /*<<< orphan*/  regulator_ww_class ; 
 int /*<<< orphan*/  FUNC4 (struct ww_acquire_ctx*) ; 
 int /*<<< orphan*/  FUNC5 (struct ww_acquire_ctx*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct ww_acquire_ctx*) ; 

__attribute__((used)) static void FUNC7(struct regulator_dev *rdev,
				     struct ww_acquire_ctx *ww_ctx)
{
	struct regulator_dev *new_contended_rdev = NULL;
	struct regulator_dev *old_contended_rdev = NULL;
	int err;

	FUNC0(&regulator_list_mutex);

	FUNC5(ww_ctx, &regulator_ww_class);

	do {
		if (new_contended_rdev) {
			FUNC6(&new_contended_rdev->mutex, ww_ctx);
			old_contended_rdev = new_contended_rdev;
			old_contended_rdev->ref_cnt++;
		}

		err = FUNC2(rdev,
					       &new_contended_rdev,
					       &old_contended_rdev,
					       ww_ctx);

		if (old_contended_rdev)
			FUNC3(old_contended_rdev);

	} while (err == -EDEADLK);

	FUNC4(ww_ctx);

	FUNC1(&regulator_list_mutex);
}