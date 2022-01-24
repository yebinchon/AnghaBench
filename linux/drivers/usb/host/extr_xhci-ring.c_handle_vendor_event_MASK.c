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
struct TYPE_2__ {int /*<<< orphan*/ * field; } ;
union xhci_trb {int /*<<< orphan*/  event_cmd; TYPE_1__ generic; } ;
typedef  scalar_t__ u32 ;
struct xhci_hcd {int quirks; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ TRB_NEC_CMD_COMP ; 
 int XHCI_NEC_HOST ; 
 int /*<<< orphan*/  FUNC1 (struct xhci_hcd*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct xhci_hcd*,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct xhci_hcd *xhci,
		union xhci_trb *event)
{
	u32 trb_type;

	trb_type = FUNC0(FUNC2(event->generic.field[3]));
	FUNC3(xhci, "Vendor specific event TRB type = %u\n", trb_type);
	if (trb_type == TRB_NEC_CMD_COMP && (xhci->quirks & XHCI_NEC_HOST))
		FUNC1(xhci, &event->event_cmd);
}