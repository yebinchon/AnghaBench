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
struct xhci_virt_ep {int ep_state; int /*<<< orphan*/  stop_cmd_timer; struct xhci_hcd* xhci; } ;
struct xhci_hcd {int /*<<< orphan*/  lock; } ;
struct timer_list {int dummy; } ;

/* Variables and functions */
 int EP_STOP_CMD_PENDING ; 
 struct xhci_virt_ep* ep ; 
 struct xhci_virt_ep* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  stop_cmd_timer ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  trace_xhci_dbg_cancel_urb ; 
 int /*<<< orphan*/  FUNC4 (struct xhci_hcd*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct xhci_hcd*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct xhci_hcd*) ; 
 int /*<<< orphan*/  FUNC7 (struct xhci_hcd*) ; 
 int /*<<< orphan*/  FUNC8 (struct xhci_hcd*,char*) ; 

void FUNC9(struct timer_list *t)
{
	struct xhci_virt_ep *ep = FUNC0(ep, t, stop_cmd_timer);
	struct xhci_hcd *xhci = ep->xhci;
	unsigned long flags;

	FUNC1(&xhci->lock, flags);

	/* bail out if cmd completed but raced with stop ep watchdog timer.*/
	if (!(ep->ep_state & EP_STOP_CMD_PENDING) ||
	    FUNC3(&ep->stop_cmd_timer)) {
		FUNC2(&xhci->lock, flags);
		FUNC4(xhci, "Stop EP timer raced with cmd completion, exit");
		return;
	}

	FUNC8(xhci, "xHCI host not responding to stop endpoint command.\n");
	ep->ep_state &= ~EP_STOP_CMD_PENDING;

	FUNC6(xhci);

	/*
	 * handle a stop endpoint cmd timeout as if host died (-ENODEV).
	 * In the future we could distinguish between -ENODEV and -ETIMEDOUT
	 * and try to recover a -ETIMEDOUT with a host controller reset
	 */
	FUNC7(xhci);

	FUNC2(&xhci->lock, flags);
	FUNC5(xhci, trace_xhci_dbg_cancel_urb,
			"xHCI host controller is dead.");
}