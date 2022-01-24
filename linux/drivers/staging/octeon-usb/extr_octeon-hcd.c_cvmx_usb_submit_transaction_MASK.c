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
typedef  void* u64 ;
struct urb {int dummy; } ;
struct octeon_hcd {int /*<<< orphan*/ * active_pipes; } ;
struct cvmx_usb_transaction {int type; int buffer_length; int iso_start_frame; int iso_number_packets; int /*<<< orphan*/  node; int /*<<< orphan*/  stage; struct urb* urb; struct cvmx_usb_iso_packet* iso_packets; void* control_header; void* buffer; } ;
struct cvmx_usb_pipe {int transfer_type; int /*<<< orphan*/  node; int /*<<< orphan*/  transactions; } ;
struct cvmx_usb_iso_packet {int dummy; } ;
typedef  enum cvmx_usb_transfer { ____Placeholder_cvmx_usb_transfer } cvmx_usb_transfer ;

/* Variables and functions */
 int /*<<< orphan*/  CVMX_USB_STAGE_NON_CONTROL ; 
 int /*<<< orphan*/  CVMX_USB_STAGE_SETUP ; 
 scalar_t__ CVMX_USB_TRANSFER_CONTROL ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct octeon_hcd*,int /*<<< orphan*/ ) ; 
 struct cvmx_usb_transaction* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static struct cvmx_usb_transaction *FUNC6(
				struct octeon_hcd *usb,
				struct cvmx_usb_pipe *pipe,
				enum cvmx_usb_transfer type,
				u64 buffer,
				int buffer_length,
				u64 control_header,
				int iso_start_frame,
				int iso_number_packets,
				struct cvmx_usb_iso_packet *iso_packets,
				struct urb *urb)
{
	struct cvmx_usb_transaction *transaction;

	if (FUNC5(pipe->transfer_type != type))
		return NULL;

	transaction = FUNC1(sizeof(*transaction), GFP_ATOMIC);
	if (FUNC5(!transaction))
		return NULL;

	transaction->type = type;
	transaction->buffer = buffer;
	transaction->buffer_length = buffer_length;
	transaction->control_header = control_header;
	/* FIXME: This is not used, implement it. */
	transaction->iso_start_frame = iso_start_frame;
	transaction->iso_number_packets = iso_number_packets;
	transaction->iso_packets = iso_packets;
	transaction->urb = urb;
	if (transaction->type == CVMX_USB_TRANSFER_CONTROL)
		transaction->stage = CVMX_USB_STAGE_SETUP;
	else
		transaction->stage = CVMX_USB_STAGE_NON_CONTROL;

	if (!FUNC3(&pipe->transactions)) {
		FUNC2(&transaction->node, &pipe->transactions);
	} else {
		FUNC2(&transaction->node, &pipe->transactions);
		FUNC4(&pipe->node,
			       &usb->active_pipes[pipe->transfer_type]);

		/*
		 * We may need to schedule the pipe if this was the head of the
		 * pipe.
		 */
		FUNC0(usb, 0);
	}

	return transaction;
}