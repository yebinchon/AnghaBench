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
struct xhci_hcd {int xhc_state; int /*<<< orphan*/ * devs; int /*<<< orphan*/  hcs_params1; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int XHCI_STATE_DYING ; 
 int XHCI_STATE_REMOVING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xhci_hcd*) ; 
 int /*<<< orphan*/  FUNC3 (struct xhci_hcd*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct xhci_hcd*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct xhci_hcd*) ; 

void FUNC6(struct xhci_hcd *xhci)
{
	int i, j;

	if (xhci->xhc_state & XHCI_STATE_DYING)
		return;

	FUNC3(xhci, "xHCI host controller not responding, assume dead\n");
	xhci->xhc_state |= XHCI_STATE_DYING;

	FUNC2(xhci);

	/* return any pending urbs, remove may be waiting for them */
	for (i = 0; i <= FUNC0(xhci->hcs_params1); i++) {
		if (!xhci->devs[i])
			continue;
		for (j = 0; j < 31; j++)
			FUNC4(xhci, i, j);
	}

	/* inform usb core hc died if PCI remove isn't already handling it */
	if (!(xhci->xhc_state & XHCI_STATE_REMOVING))
		FUNC1(FUNC5(xhci));
}