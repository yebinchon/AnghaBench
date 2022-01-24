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
struct fotg210_hcd {TYPE_1__* regs; int /*<<< orphan*/  rh_state; int /*<<< orphan*/  died_poll_count; } ;
struct TYPE_2__ {int /*<<< orphan*/  intr_enable; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FOTG210_HRTIMER_POLL_DEAD ; 
 int /*<<< orphan*/  FOTG210_RH_HALTED ; 
 int STS_HALT ; 
 int /*<<< orphan*/  FUNC0 (struct fotg210_hcd*) ; 
 int /*<<< orphan*/  FUNC1 (struct fotg210_hcd*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct fotg210_hcd*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct fotg210_hcd*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct fotg210_hcd*) ; 
 int /*<<< orphan*/  FUNC5 (struct fotg210_hcd*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct fotg210_hcd *fotg210)
{
	if (!(FUNC2(fotg210, &fotg210->regs->status) & STS_HALT)) {

		/* Give up after a few milliseconds */
		if (fotg210->died_poll_count++ < 5) {
			/* Try again later */
			FUNC1(fotg210,
					FOTG210_HRTIMER_POLL_DEAD, true);
			return;
		}
		FUNC3(fotg210, "Waited too long for the controller to stop, giving up\n");
	}

	/* Clean up the mess */
	fotg210->rh_state = FOTG210_RH_HALTED;
	FUNC5(fotg210, 0, &fotg210->regs->intr_enable);
	FUNC4(fotg210);
	FUNC0(fotg210);

	/* Not in process context, so don't try to reset the controller */
}