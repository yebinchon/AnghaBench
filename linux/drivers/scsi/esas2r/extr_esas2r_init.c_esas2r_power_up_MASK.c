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
struct esas2r_adapter {int /*<<< orphan*/  flags; int /*<<< orphan*/  disable_cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_FIRST_INIT ; 
 int /*<<< orphan*/  AF_POWER_DOWN ; 
 int /*<<< orphan*/  AF_POWER_MGT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct esas2r_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct esas2r_adapter*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct esas2r_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct esas2r_adapter*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

bool FUNC7(struct esas2r_adapter *a, bool init_poll)
{
	bool ret;

	FUNC1(AF_POWER_DOWN, &a->flags);
	FUNC4(a);
	FUNC6(AF_FIRST_INIT, &a->flags);
	FUNC0(&a->disable_cnt);

	/* reinitialize the adapter */
	ret = FUNC2(a);
	if (!FUNC3(a, init_poll))
		ret = false;

	/* send the reset asynchronous event */
	FUNC5(a, true);

	/* clear this flag after initialization. */
	FUNC1(AF_POWER_MGT, &a->flags);
	return ret;
}