#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct reset_control {int /*<<< orphan*/  id; TYPE_2__* rcdev; int /*<<< orphan*/  acquired; int /*<<< orphan*/  deassert_count; int /*<<< orphan*/  triggered_count; scalar_t__ shared; } ;
struct TYPE_5__ {TYPE_1__* ops; } ;
struct TYPE_4__ {int (* assert ) (TYPE_2__*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int ENOTSUPP ; 
 int EPERM ; 
 int FUNC0 (struct reset_control*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct reset_control*) ; 
 int /*<<< orphan*/  FUNC8 (struct reset_control*) ; 
 int FUNC9 (TYPE_2__*,int /*<<< orphan*/ ) ; 

int FUNC10(struct reset_control *rstc)
{
	if (!rstc)
		return 0;

	if (FUNC2(FUNC0(rstc)))
		return -EINVAL;

	if (FUNC7(rstc))
		return FUNC6(FUNC8(rstc));

	if (rstc->shared) {
		if (FUNC2(FUNC4(&rstc->triggered_count) != 0))
			return -EINVAL;

		if (FUNC2(FUNC4(&rstc->deassert_count) == 0))
			return -EINVAL;

		if (FUNC3(&rstc->deassert_count) != 0)
			return 0;

		/*
		 * Shared reset controls allow the reset line to be in any state
		 * after this call, so doing nothing is a valid option.
		 */
		if (!rstc->rcdev->ops->assert)
			return 0;
	} else {
		/*
		 * If the reset controller does not implement .assert(), there
		 * is no way to guarantee that the reset line is asserted after
		 * this call.
		 */
		if (!rstc->rcdev->ops->assert)
			return -ENOTSUPP;

		if (!rstc->acquired) {
			FUNC1(1, "reset %s (ID: %u) is not acquired\n",
			     FUNC5(rstc->rcdev), rstc->id);
			return -EPERM;
		}
	}

	return rstc->rcdev->ops->assert(rstc->rcdev, rstc->id);
}