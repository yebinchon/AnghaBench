#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct xhci_hcd {int quirks; TYPE_1__* op_regs; int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {int /*<<< orphan*/  sysdev; } ;
struct usb_hcd {TYPE_2__ self; } ;
struct TYPE_3__ {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_D3hot ; 
 int XHCI_SPURIOUS_REBOOT ; 
 int XHCI_SPURIOUS_WAKEUP ; 
 struct xhci_hcd* FUNC0 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  trace_xhci_dbg_init ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct xhci_hcd*) ; 
 int /*<<< orphan*/  FUNC8 (struct xhci_hcd*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct xhci_hcd*) ; 
 int /*<<< orphan*/  FUNC10 (struct xhci_hcd*) ; 

__attribute__((used)) static void FUNC11(struct usb_hcd *hcd)
{
	struct xhci_hcd *xhci = FUNC0(hcd);

	if (xhci->quirks & XHCI_SPURIOUS_REBOOT)
		FUNC6(FUNC5(hcd->self.sysdev));

	FUNC3(&xhci->lock);
	FUNC9(xhci);
	/* Workaround for spurious wakeups at shutdown with HSW */
	if (xhci->quirks & XHCI_SPURIOUS_WAKEUP)
		FUNC10(xhci);
	FUNC4(&xhci->lock);

	FUNC7(xhci);

	FUNC8(xhci, trace_xhci_dbg_init,
			"xhci_shutdown completed - status = %x",
			FUNC2(&xhci->op_regs->status));

	/* Yet another workaround for spurious wakeups at shutdown with HSW */
	if (xhci->quirks & XHCI_SPURIOUS_WAKEUP)
		FUNC1(FUNC5(hcd->self.sysdev), PCI_D3hot);
}