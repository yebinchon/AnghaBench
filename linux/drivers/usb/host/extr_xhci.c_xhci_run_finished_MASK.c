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
struct xhci_hcd {int quirks; int /*<<< orphan*/  cmd_ring_state; TYPE_1__* shared_hcd; } ;
struct TYPE_2__ {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_RING_STATE_RUNNING ; 
 int ENODEV ; 
 int /*<<< orphan*/  HC_STATE_RUNNING ; 
 int XHCI_NEC_HOST ; 
 int /*<<< orphan*/  trace_xhci_dbg_init ; 
 int /*<<< orphan*/  FUNC0 (struct xhci_hcd*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct xhci_hcd*) ; 
 int /*<<< orphan*/  FUNC2 (struct xhci_hcd*) ; 
 scalar_t__ FUNC3 (struct xhci_hcd*) ; 

__attribute__((used)) static int FUNC4(struct xhci_hcd *xhci)
{
	if (FUNC3(xhci)) {
		FUNC1(xhci);
		return -ENODEV;
	}
	xhci->shared_hcd->state = HC_STATE_RUNNING;
	xhci->cmd_ring_state = CMD_RING_STATE_RUNNING;

	if (xhci->quirks & XHCI_NEC_HOST)
		FUNC2(xhci);

	FUNC0(xhci, trace_xhci_dbg_init,
			"Finished xhci_run for USB3 roothub");
	return 0;
}