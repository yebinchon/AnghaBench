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
typedef  scalar_t__ suspend_state_t ;
struct ww_acquire_ctx {int dummy; } ;
struct regulator {int /*<<< orphan*/  rdev; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ PM_SUSPEND_ON ; 
 int FUNC0 (struct regulator*,int,int,scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct ww_acquire_ctx*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct ww_acquire_ctx*) ; 

int FUNC4(struct regulator *regulator, int min_uV,
				  int max_uV, suspend_state_t state)
{
	struct ww_acquire_ctx ww_ctx;
	int ret;

	/* PM_SUSPEND_ON is handled by regulator_set_voltage() */
	if (FUNC1(state) || state == PM_SUSPEND_ON)
		return -EINVAL;

	FUNC2(regulator->rdev, &ww_ctx);

	ret = FUNC0(regulator, min_uV,
					     max_uV, state);

	FUNC3(regulator->rdev, &ww_ctx);

	return ret;
}