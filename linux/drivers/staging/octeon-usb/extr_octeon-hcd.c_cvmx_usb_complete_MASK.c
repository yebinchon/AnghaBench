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
struct octeon_hcd {int /*<<< orphan*/  idle_pipes; struct cvmx_usb_transaction* active_split; } ;
struct cvmx_usb_transaction {scalar_t__ type; int iso_number_packets; int /*<<< orphan*/  urb; scalar_t__ actual_bytes; int /*<<< orphan*/  node; int /*<<< orphan*/  stage; TYPE_1__* iso_packets; } ;
struct cvmx_usb_pipe {int /*<<< orphan*/  node; int /*<<< orphan*/  transactions; } ;
typedef  enum cvmx_usb_status { ____Placeholder_cvmx_usb_status } cvmx_usb_status ;
struct TYPE_2__ {int status; scalar_t__ length; } ;

/* Variables and functions */
 int /*<<< orphan*/  CVMX_USB_STAGE_NON_CONTROL ; 
 int CVMX_USB_STATUS_OK ; 
 scalar_t__ CVMX_USB_TRANSFER_ISOCHRONOUS ; 
 int /*<<< orphan*/  FUNC0 (struct cvmx_usb_transaction*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct octeon_hcd*,int,struct cvmx_usb_pipe*,struct cvmx_usb_transaction*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct octeon_hcd *usb,
			      struct cvmx_usb_pipe *pipe,
			      struct cvmx_usb_transaction *transaction,
			      enum cvmx_usb_status complete_code)
{
	/* If this was a split then clear our split in progress marker */
	if (usb->active_split == transaction)
		usb->active_split = NULL;

	/*
	 * Isochronous transactions need extra processing as they might not be
	 * done after a single data transfer
	 */
	if (FUNC5(transaction->type == CVMX_USB_TRANSFER_ISOCHRONOUS)) {
		/* Update the number of bytes transferred in this ISO packet */
		transaction->iso_packets[0].length = transaction->actual_bytes;
		transaction->iso_packets[0].status = complete_code;

		/*
		 * If there are more ISOs pending and we succeeded, schedule the
		 * next one
		 */
		if ((transaction->iso_number_packets > 1) &&
		    (complete_code == CVMX_USB_STATUS_OK)) {
			/* No bytes transferred for this packet as of yet */
			transaction->actual_bytes = 0;
			/* One less ISO waiting to transfer */
			transaction->iso_number_packets--;
			/* Increment to the next location in our packet array */
			transaction->iso_packets++;
			transaction->stage = CVMX_USB_STAGE_NON_CONTROL;
			return;
		}
	}

	/* Remove the transaction from the pipe list */
	FUNC1(&transaction->node);
	if (FUNC2(&pipe->transactions))
		FUNC3(&pipe->node, &usb->idle_pipes);
	FUNC4(usb, complete_code, pipe,
					 transaction,
					 transaction->actual_bytes,
					 transaction->urb);
	FUNC0(transaction);
}