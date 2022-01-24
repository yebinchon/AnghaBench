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
struct usb_hcd {int dummy; } ;
struct urb_priv {struct uhci_qh* qh; } ;
struct urb {int /*<<< orphan*/  start_frame; scalar_t__ hcpriv; } ;
struct uhci_qh {scalar_t__ type; int /*<<< orphan*/  unlink_frame; } ;
struct uhci_hcd {int /*<<< orphan*/  lock; int /*<<< orphan*/  frame_number; } ;

/* Variables and functions */
 scalar_t__ USB_ENDPOINT_XFER_ISOC ; 
 struct uhci_hcd* FUNC0 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct uhci_hcd*) ; 
 int /*<<< orphan*/  FUNC6 (struct uhci_hcd*,struct urb*) ; 
 int /*<<< orphan*/  FUNC7 (struct uhci_hcd*,struct uhci_qh*) ; 
 int FUNC8 (struct usb_hcd*,struct urb*,int) ; 

__attribute__((used)) static int FUNC9(struct usb_hcd *hcd, struct urb *urb, int status)
{
	struct uhci_hcd *uhci = FUNC0(hcd);
	unsigned long flags;
	struct uhci_qh *qh;
	int rc;

	FUNC2(&uhci->lock, flags);
	rc = FUNC8(hcd, urb, status);
	if (rc)
		goto done;

	qh = ((struct urb_priv *) urb->hcpriv)->qh;

	/* Remove Isochronous TDs from the frame list ASAP */
	if (qh->type == USB_ENDPOINT_XFER_ISOC) {
		FUNC6(uhci, urb);
		FUNC1();

		/* If the URB has already started, update the QH unlink time */
		FUNC5(uhci);
		if (FUNC4(urb->start_frame, uhci->frame_number))
			qh->unlink_frame = uhci->frame_number;
	}

	FUNC7(uhci, qh);

done:
	FUNC3(&uhci->lock, flags);
	return rc;
}