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
struct usb_hcd {int dummy; } ;
struct ehci_hcd {int amd_pll_fix; TYPE_1__* regs; int /*<<< orphan*/  lock; int /*<<< orphan*/  hrtimer; scalar_t__ enabled_hrtimer_events; } ;
struct TYPE_2__ {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ehci_hcd*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ehci_hcd*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ehci_hcd*) ; 
 int /*<<< orphan*/  FUNC3 (struct ehci_hcd*) ; 
 int /*<<< orphan*/  FUNC4 (struct ehci_hcd*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ehci_hcd*) ; 
 int /*<<< orphan*/  FUNC6 (struct ehci_hcd*) ; 
 int /*<<< orphan*/  FUNC7 (struct ehci_hcd*) ; 
 struct ehci_hcd* FUNC8 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct ehci_hcd*) ; 
 int /*<<< orphan*/  FUNC11 (struct ehci_hcd*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 () ; 

__attribute__((used)) static void FUNC15 (struct usb_hcd *hcd)
{
	struct ehci_hcd		*ehci = FUNC8 (hcd);

	FUNC1 (ehci, "stop\n");

	/* no more interrupts ... */

	FUNC12(&ehci->lock);
	ehci->enabled_hrtimer_events = 0;
	FUNC13(&ehci->lock);

	FUNC3(ehci);
	FUNC6(ehci);
	FUNC5 (ehci);

	FUNC9(&ehci->hrtimer);
	FUNC11(ehci);
	FUNC10 (ehci);

	/* root hub is shut down separately (first, when possible) */
	FUNC12 (&ehci->lock);
	FUNC7(ehci);
	FUNC13 (&ehci->lock);
	FUNC2 (ehci);

	if (ehci->amd_pll_fix == 1)
		FUNC14();

	FUNC0 (ehci, "ehci_stop completed",
		    FUNC4(ehci, &ehci->regs->status));
}