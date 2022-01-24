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
struct ehci_hcd {TYPE_1__* regs; int /*<<< orphan*/  rh_state; int /*<<< orphan*/  died_poll_count; } ;
struct TYPE_2__ {int /*<<< orphan*/  intr_enable; int /*<<< orphan*/  configured_flag; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  EHCI_HRTIMER_POLL_DEAD ; 
 int /*<<< orphan*/  EHCI_RH_HALTED ; 
 int STS_HALT ; 
 int /*<<< orphan*/  FUNC0 (struct ehci_hcd*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct ehci_hcd*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ehci_hcd*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct ehci_hcd*) ; 
 int /*<<< orphan*/  FUNC4 (struct ehci_hcd*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ehci_hcd*) ; 

__attribute__((used)) static void FUNC6(struct ehci_hcd *ehci)
{
	if (!(FUNC1(ehci, &ehci->regs->status) & STS_HALT)) {

		/* Give up after a few milliseconds */
		if (ehci->died_poll_count++ < 5) {
			/* Try again later */
			FUNC0(ehci, EHCI_HRTIMER_POLL_DEAD, true);
			return;
		}
		FUNC2(ehci, "Waited too long for the controller to stop, giving up\n");
	}

	/* Clean up the mess */
	ehci->rh_state = EHCI_RH_HALTED;
	FUNC4(ehci, 0, &ehci->regs->configured_flag);
	FUNC4(ehci, 0, &ehci->regs->intr_enable);
	FUNC3(ehci);
	FUNC5(ehci);

	/* Not in process context, so don't try to reset the controller */
}