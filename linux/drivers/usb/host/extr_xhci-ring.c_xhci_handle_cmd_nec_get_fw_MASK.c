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
struct xhci_hcd {int quirks; } ;
struct xhci_event_cmd {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int XHCI_NEC_HOST ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  trace_xhci_dbg_quirks ; 
 int /*<<< orphan*/  FUNC3 (struct xhci_hcd*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct xhci_hcd*,char*) ; 

__attribute__((used)) static void FUNC5(struct xhci_hcd *xhci,
		struct xhci_event_cmd *event)
{
	if (!(xhci->quirks & XHCI_NEC_HOST)) {
		FUNC4(xhci, "WARN NEC_GET_FW command on non-NEC host\n");
		return;
	}
	FUNC3(xhci, trace_xhci_dbg_quirks,
			"NEC firmware version %2x.%02x",
			FUNC0(FUNC2(event->status)),
			FUNC1(FUNC2(event->status)));
}