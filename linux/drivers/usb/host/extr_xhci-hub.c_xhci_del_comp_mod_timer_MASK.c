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
typedef  scalar_t__ u32 ;
typedef  int u16 ;
struct TYPE_2__ {int num_ports; } ;
struct xhci_hcd {int quirks; scalar_t__ port_status_u0; int /*<<< orphan*/  comp_mode_recovery_timer; TYPE_1__ usb3_rhub; } ;

/* Variables and functions */
 scalar_t__ PORT_PLS_MASK ; 
 scalar_t__ XDEV_U0 ; 
 int XHCI_COMP_MODE_QUIRK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  trace_xhci_dbg_quirks ; 
 int /*<<< orphan*/  FUNC1 (struct xhci_hcd*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC2(struct xhci_hcd *xhci, u32 status,
				    u16 wIndex)
{
	u32 all_ports_seen_u0 = ((1 << xhci->usb3_rhub.num_ports) - 1);
	bool port_in_u0 = ((status & PORT_PLS_MASK) == XDEV_U0);

	if (!(xhci->quirks & XHCI_COMP_MODE_QUIRK))
		return;

	if ((xhci->port_status_u0 != all_ports_seen_u0) && port_in_u0) {
		xhci->port_status_u0 |= 1 << wIndex;
		if (xhci->port_status_u0 == all_ports_seen_u0) {
			FUNC0(&xhci->comp_mode_recovery_timer);
			FUNC1(xhci, trace_xhci_dbg_quirks,
				"All USB3 ports have entered U0 already!");
			FUNC1(xhci, trace_xhci_dbg_quirks,
				"Compliance Mode Recovery Timer Deleted.");
		}
	}
}