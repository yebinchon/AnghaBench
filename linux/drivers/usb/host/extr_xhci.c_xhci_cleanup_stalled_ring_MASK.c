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
struct xhci_td {TYPE_1__* urb; } ;
struct xhci_hcd {int quirks; } ;
struct xhci_dequeue_state {int /*<<< orphan*/  new_deq_seg; int /*<<< orphan*/  new_deq_ptr; } ;
struct usb_device {int /*<<< orphan*/  slot_id; } ;
struct TYPE_2__ {struct usb_device* dev; } ;

/* Variables and functions */
 int XHCI_RESET_EP_QUIRK ; 
 int /*<<< orphan*/  trace_xhci_dbg_quirks ; 
 int /*<<< orphan*/  trace_xhci_dbg_reset_ep ; 
 int /*<<< orphan*/  FUNC0 (struct xhci_hcd*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct xhci_hcd*,int /*<<< orphan*/ ,unsigned int,unsigned int,struct xhci_td*,struct xhci_dequeue_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct xhci_hcd*,int /*<<< orphan*/ ,unsigned int,struct xhci_dequeue_state*) ; 
 int /*<<< orphan*/  FUNC3 (struct xhci_hcd*,int /*<<< orphan*/ ,unsigned int,struct xhci_dequeue_state*) ; 

void FUNC4(struct xhci_hcd *xhci, unsigned int ep_index,
			       unsigned int stream_id, struct xhci_td *td)
{
	struct xhci_dequeue_state deq_state;
	struct usb_device *udev = td->urb->dev;

	FUNC0(xhci, trace_xhci_dbg_reset_ep,
			"Cleaning up stalled endpoint ring");
	/* We need to move the HW's dequeue pointer past this TD,
	 * or it will attempt to resend it on the next doorbell ring.
	 */
	FUNC1(xhci, udev->slot_id,
			ep_index, stream_id, td, &deq_state);

	if (!deq_state.new_deq_ptr || !deq_state.new_deq_seg)
		return;

	/* HW with the reset endpoint quirk will use the saved dequeue state to
	 * issue a configure endpoint command later.
	 */
	if (!(xhci->quirks & XHCI_RESET_EP_QUIRK)) {
		FUNC0(xhci, trace_xhci_dbg_reset_ep,
				"Queueing new dequeue state");
		FUNC2(xhci, udev->slot_id,
				ep_index, &deq_state);
	} else {
		/* Better hope no one uses the input context between now and the
		 * reset endpoint completion!
		 * XXX: No idea how this hardware will react when stream rings
		 * are enabled.
		 */
		FUNC0(xhci, trace_xhci_dbg_quirks,
				"Setting up input context for "
				"configure endpoint command");
		FUNC3(xhci, udev->slot_id,
				ep_index, &deq_state);
	}
}