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
struct ehci_hcd {scalar_t__ rh_state; int command; scalar_t__ async_count; scalar_t__ ASS_poll_count; TYPE_1__* regs; } ;
struct TYPE_2__ {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int CMD_ASE ; 
 int /*<<< orphan*/  EHCI_HRTIMER_DISABLE_ASYNC ; 
 int /*<<< orphan*/  EHCI_HRTIMER_POLL_ASS ; 
 scalar_t__ EHCI_RH_RUNNING ; 
 unsigned int STS_ASS ; 
 int /*<<< orphan*/  FUNC0 (struct ehci_hcd*,char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct ehci_hcd*,int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC2 (struct ehci_hcd*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ehci_hcd*,int) ; 

__attribute__((used)) static void FUNC4(struct ehci_hcd *ehci)
{
	unsigned	actual, want;

	/* Don't enable anything if the controller isn't running (e.g., died) */
	if (ehci->rh_state != EHCI_RH_RUNNING)
		return;

	want = (ehci->command & CMD_ASE) ? STS_ASS : 0;
	actual = FUNC2(ehci, &ehci->regs->status) & STS_ASS;

	if (want != actual) {

		/* Poll again later, but give up after about 2-4 ms */
		if (ehci->ASS_poll_count++ < 2) {
			FUNC1(ehci, EHCI_HRTIMER_POLL_ASS, true);
			return;
		}
		FUNC0(ehci, "Waited too long for the async schedule status (%x/%x), giving up\n",
				want, actual);
	}
	ehci->ASS_poll_count = 0;

	/* The status is up-to-date; restart or stop the schedule as needed */
	if (want == 0) {	/* Stopped */
		if (ehci->async_count > 0)
			FUNC3(ehci, CMD_ASE);

	} else {		/* Running */
		if (ehci->async_count == 0) {

			/* Turn off the schedule after a while */
			FUNC1(ehci, EHCI_HRTIMER_DISABLE_ASYNC,
					true);
		}
	}
}