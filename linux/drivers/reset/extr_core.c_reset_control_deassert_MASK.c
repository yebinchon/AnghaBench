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
struct TYPE_4__ {int (* deassert ) (TYPE_2__*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 int FUNC0 (struct reset_control*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
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

		if (FUNC3(&rstc->deassert_count) != 1)
			return 0;
	} else {
		if (!rstc->acquired) {
			FUNC1(1, "reset %s (ID: %u) is not acquired\n",
			     FUNC5(rstc->rcdev), rstc->id);
			return -EPERM;
		}
	}

	/*
	 * If the reset controller does not implement .deassert(), we assume
	 * that it handles self-deasserting reset lines via .reset(). In that
	 * case, the reset lines are deasserted by default. If that is not the
	 * case, the reset controller driver should implement .deassert() and
	 * return -ENOTSUPP.
	 */
	if (!rstc->rcdev->ops->deassert)
		return 0;

	return rstc->rcdev->ops->deassert(rstc->rcdev, rstc->id);
}