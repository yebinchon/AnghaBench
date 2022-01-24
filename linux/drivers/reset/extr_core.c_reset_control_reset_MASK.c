#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct reset_control {int /*<<< orphan*/  triggered_count; scalar_t__ shared; int /*<<< orphan*/  id; TYPE_2__* rcdev; int /*<<< orphan*/  acquired; int /*<<< orphan*/  deassert_count; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* reset ) (TYPE_2__*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int ENOTSUPP ; 
 int EPERM ; 
 int FUNC0 (struct reset_control*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct reset_control*) ; 
 int /*<<< orphan*/  FUNC7 (struct reset_control*) ; 
 int FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 

int FUNC9(struct reset_control *rstc)
{
	int ret;

	if (!rstc)
		return 0;

	if (FUNC1(FUNC0(rstc)))
		return -EINVAL;

	if (FUNC6(rstc))
		return FUNC5(FUNC7(rstc));

	if (!rstc->rcdev->ops->reset)
		return -ENOTSUPP;

	if (rstc->shared) {
		if (FUNC1(FUNC4(&rstc->deassert_count) != 0))
			return -EINVAL;

		if (FUNC3(&rstc->triggered_count) != 1)
			return 0;
	} else {
		if (!rstc->acquired)
			return -EPERM;
	}

	ret = rstc->rcdev->ops->reset(rstc->rcdev, rstc->id);
	if (rstc->shared && ret)
		FUNC2(&rstc->triggered_count);

	return ret;
}