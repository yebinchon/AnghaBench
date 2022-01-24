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
typedef  scalar_t__ u32 ;
struct xhci_virt_ep {int dummy; } ;
struct xhci_virt_device {int /*<<< orphan*/  out_ctx; } ;
struct xhci_transfer_event {int /*<<< orphan*/  transfer_len; int /*<<< orphan*/  buffer; int /*<<< orphan*/  flags; } ;
struct xhci_td {scalar_t__ last_trb; } ;
struct xhci_ring {scalar_t__ dequeue; int /*<<< orphan*/  stream_id; } ;
struct xhci_hcd {struct xhci_virt_device** devs; } ;
struct xhci_ep_ctx {int dummy; } ;

/* Variables and functions */
 scalar_t__ COMP_STALL_ERROR ; 
 scalar_t__ COMP_STOPPED ; 
 scalar_t__ COMP_STOPPED_LENGTH_INVALID ; 
 scalar_t__ COMP_STOPPED_SHORT_PACKET ; 
 int /*<<< orphan*/  EP_HARD_RESET ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct xhci_hcd*,struct xhci_ring*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct xhci_hcd*,unsigned int,int,int /*<<< orphan*/ ,struct xhci_td*,int /*<<< orphan*/ ) ; 
 struct xhci_ring* FUNC7 (struct xhci_virt_ep*,int /*<<< orphan*/ ) ; 
 struct xhci_ep_ctx* FUNC8 (struct xhci_hcd*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (struct xhci_hcd*,struct xhci_ep_ctx*,scalar_t__) ; 
 int FUNC10 (struct xhci_hcd*,struct xhci_td*,struct xhci_ring*,int*) ; 

__attribute__((used)) static int FUNC11(struct xhci_hcd *xhci, struct xhci_td *td,
	struct xhci_transfer_event *event,
	struct xhci_virt_ep *ep, int *status)
{
	struct xhci_virt_device *xdev;
	struct xhci_ep_ctx *ep_ctx;
	struct xhci_ring *ep_ring;
	unsigned int slot_id;
	u32 trb_comp_code;
	int ep_index;

	slot_id = FUNC2(FUNC4(event->flags));
	xdev = xhci->devs[slot_id];
	ep_index = FUNC1(FUNC4(event->flags)) - 1;
	ep_ring = FUNC7(ep, FUNC5(event->buffer));
	ep_ctx = FUNC8(xhci, xdev->out_ctx, ep_index);
	trb_comp_code = FUNC0(FUNC4(event->transfer_len));

	if (trb_comp_code == COMP_STOPPED_LENGTH_INVALID ||
			trb_comp_code == COMP_STOPPED ||
			trb_comp_code == COMP_STOPPED_SHORT_PACKET) {
		/* The Endpoint Stop Command completion will take care of any
		 * stopped TDs.  A stopped TD may be restarted, so don't update
		 * the ring dequeue pointer or take this TD off any lists yet.
		 */
		return 0;
	}
	if (trb_comp_code == COMP_STALL_ERROR ||
		FUNC9(xhci, ep_ctx,
						trb_comp_code)) {
		/* Issue a reset endpoint command to clear the host side
		 * halt, followed by a set dequeue command to move the
		 * dequeue pointer past the TD.
		 * The class driver clears the device side halt later.
		 */
		FUNC6(xhci, slot_id, ep_index,
					ep_ring->stream_id, td, EP_HARD_RESET);
	} else {
		/* Update ring dequeue pointer */
		while (ep_ring->dequeue != td->last_trb)
			FUNC3(xhci, ep_ring);
		FUNC3(xhci, ep_ring);
	}

	return FUNC10(xhci, td, ep_ring, status);
}