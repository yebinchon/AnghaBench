#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct fotg210_hcd {scalar_t__ rh_state; int command; TYPE_1__* regs; int /*<<< orphan*/ * async_unlink; int /*<<< orphan*/ * async_iaa; scalar_t__ async_unlinking; } ;
struct TYPE_2__ {int /*<<< orphan*/  command; } ;

/* Variables and functions */
 int CMD_IAAD ; 
 int /*<<< orphan*/  FOTG210_HRTIMER_IAA_WATCHDOG ; 
 scalar_t__ FOTG210_RH_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (struct fotg210_hcd*) ; 
 int /*<<< orphan*/  FUNC1 (struct fotg210_hcd*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct fotg210_hcd*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct fotg210_hcd*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void FUNC7(struct fotg210_hcd *fotg210, bool nested)
{
	/*
	 * Do nothing if an IAA cycle is already running or
	 * if one will be started shortly.
	 */
	if (fotg210->async_iaa || fotg210->async_unlinking)
		return;

	/* Do all the waiting QHs at once */
	fotg210->async_iaa = fotg210->async_unlink;
	fotg210->async_unlink = NULL;

	/* If the controller isn't running, we don't have to wait for it */
	if (FUNC5(fotg210->rh_state < FOTG210_RH_RUNNING)) {
		if (!nested)		/* Avoid recursion */
			FUNC0(fotg210);

	/* Otherwise start a new IAA cycle */
	} else if (FUNC4(fotg210->rh_state == FOTG210_RH_RUNNING)) {
		/* Make sure the unlinks are all visible to the hardware */
		FUNC6();

		FUNC3(fotg210, fotg210->command | CMD_IAAD,
				&fotg210->regs->command);
		FUNC2(fotg210, &fotg210->regs->command);
		FUNC1(fotg210, FOTG210_HRTIMER_IAA_WATCHDOG,
				true);
	}
}