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
struct xhci_td {int /*<<< orphan*/  cancelled_td_list; int /*<<< orphan*/  td_list; struct urb* urb; } ;
struct xhci_ring {int dummy; } ;
struct xhci_hcd {int dummy; } ;
struct urb {scalar_t__ actual_length; scalar_t__ transfer_buffer_length; int transfer_flags; int /*<<< orphan*/  pipe; TYPE_1__* ep; } ;
struct TYPE_2__ {int /*<<< orphan*/  desc; } ;

/* Variables and functions */
 scalar_t__ PIPE_ISOCHRONOUS ; 
 int URB_SHORT_NOT_OK ; 
 int /*<<< orphan*/  FUNC0 (struct urb*) ; 
 scalar_t__ FUNC1 (struct xhci_td*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct xhci_hcd*,char*,struct urb*,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (struct xhci_hcd*,struct xhci_td*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct xhci_hcd*,struct xhci_ring*,struct xhci_td*) ; 
 int /*<<< orphan*/  FUNC9 (struct xhci_hcd*,char*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC10(struct xhci_hcd *xhci, struct xhci_td *td,
		struct xhci_ring *ep_ring, int *status)
{
	struct urb *urb = NULL;

	/* Clean up the endpoint's TD list */
	urb = td->urb;

	/* if a bounce buffer was used to align this td then unmap it */
	FUNC8(xhci, ep_ring, td);

	/* Do one last check of the actual transfer length.
	 * If the host controller said we transferred more data than the buffer
	 * length, urb->actual_length will be a very big number (since it's
	 * unsigned).  Play it safe and say we didn't transfer anything.
	 */
	if (urb->actual_length > urb->transfer_buffer_length) {
		FUNC9(xhci, "URB req %u and actual %u transfer length mismatch\n",
			  urb->transfer_buffer_length, urb->actual_length);
		urb->actual_length = 0;
		*status = 0;
	}
	FUNC2(&td->td_list);
	/* Was this TD slated to be cancelled but completed anyway? */
	if (!FUNC3(&td->cancelled_td_list))
		FUNC2(&td->cancelled_td_list);

	FUNC0(urb);
	/* Giveback the urb when all the tds are completed */
	if (FUNC1(td)) {
		if ((urb->actual_length != urb->transfer_buffer_length &&
		     (urb->transfer_flags & URB_SHORT_NOT_OK)) ||
		    (*status != 0 && !FUNC4(&urb->ep->desc)))
			FUNC6(xhci, "Giveback URB %p, len = %d, expected = %d, status = %d\n",
				 urb, urb->actual_length,
				 urb->transfer_buffer_length, *status);

		/* set isoc urb status to 0 just as EHCI, UHCI, and OHCI */
		if (FUNC5(urb->pipe) == PIPE_ISOCHRONOUS)
			*status = 0;
		FUNC7(xhci, td, *status);
	}

	return 0;
}