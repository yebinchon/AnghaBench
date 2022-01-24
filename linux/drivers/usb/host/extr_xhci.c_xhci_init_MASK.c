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
struct xhci_hcd {int hci_version; int /*<<< orphan*/  quirks; int /*<<< orphan*/  lock; } ;
struct usb_hcd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  XHCI_COMP_MODE_QUIRK ; 
 int /*<<< orphan*/  XHCI_LINK_TRB_QUIRK ; 
 int /*<<< orphan*/  FUNC0 (struct xhci_hcd*) ; 
 struct xhci_hcd* FUNC1 (struct usb_hcd*) ; 
 scalar_t__ link_quirk ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  trace_xhci_dbg_init ; 
 int /*<<< orphan*/  trace_xhci_dbg_quirks ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct xhci_hcd*,int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (struct xhci_hcd*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct usb_hcd *hcd)
{
	struct xhci_hcd *xhci = FUNC1(hcd);
	int retval = 0;

	FUNC4(xhci, trace_xhci_dbg_init, "xhci_init");
	FUNC2(&xhci->lock);
	if (xhci->hci_version == 0x95 && link_quirk) {
		FUNC4(xhci, trace_xhci_dbg_quirks,
				"QUIRK: Not clearing Link TRB chain bits.");
		xhci->quirks |= XHCI_LINK_TRB_QUIRK;
	} else {
		FUNC4(xhci, trace_xhci_dbg_init,
				"xHCI doesn't need link TRB QUIRK");
	}
	retval = FUNC5(xhci, GFP_KERNEL);
	FUNC4(xhci, trace_xhci_dbg_init, "Finished xhci_init");

	/* Initializing Compliance Mode Recovery Data If Needed */
	if (FUNC3()) {
		xhci->quirks |= XHCI_COMP_MODE_QUIRK;
		FUNC0(xhci);
	}

	return retval;
}