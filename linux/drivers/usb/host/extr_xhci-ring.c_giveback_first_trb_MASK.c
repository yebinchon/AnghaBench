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
struct xhci_hcd {int dummy; } ;
struct xhci_generic_trb {int /*<<< orphan*/ * field; } ;

/* Variables and functions */
 int TRB_CYCLE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct xhci_hcd*,int,unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC3(struct xhci_hcd *xhci, int slot_id,
		unsigned int ep_index, unsigned int stream_id, int start_cycle,
		struct xhci_generic_trb *start_trb)
{
	/*
	 * Pass all the TRBs to the hardware at once and make sure this write
	 * isn't reordered.
	 */
	FUNC1();
	if (start_cycle)
		start_trb->field[3] |= FUNC0(start_cycle);
	else
		start_trb->field[3] &= FUNC0(~TRB_CYCLE);
	FUNC2(xhci, slot_id, ep_index, stream_id);
}