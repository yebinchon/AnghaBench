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
struct usb_hcd {int dummy; } ;
struct ehci_hcd {int shutdown; int /*<<< orphan*/  hrtimer; int /*<<< orphan*/  lock; scalar_t__ enabled_hrtimer_events; int /*<<< orphan*/  rh_state; int /*<<< orphan*/  sbrn; } ;

/* Variables and functions */
 int /*<<< orphan*/  EHCI_RH_STOPPING ; 
 int /*<<< orphan*/  FUNC0 (struct ehci_hcd*) ; 
 struct ehci_hcd* FUNC1 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct usb_hcd *hcd)
{
	struct ehci_hcd	*ehci = FUNC1(hcd);

	/**
	 * Protect the system from crashing at system shutdown in cases where
	 * usb host is not added yet from OTG controller driver.
	 * As ehci_setup() not done yet, so stop accessing registers or
	 * variables initialized in ehci_setup()
	 */
	if (!ehci->sbrn)
		return;

	FUNC3(&ehci->lock);
	ehci->shutdown = true;
	ehci->rh_state = EHCI_RH_STOPPING;
	ehci->enabled_hrtimer_events = 0;
	FUNC4(&ehci->lock);

	FUNC0(ehci);

	FUNC2(&ehci->hrtimer);
}