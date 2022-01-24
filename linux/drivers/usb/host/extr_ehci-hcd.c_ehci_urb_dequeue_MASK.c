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
struct urb {int /*<<< orphan*/  pipe; scalar_t__ hcpriv; } ;
struct ehci_qh {int qh_state; int dequeue_during_giveback; int /*<<< orphan*/  unlink_reason; } ;
struct ehci_hcd {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 scalar_t__ PIPE_INTERRUPT ; 
 scalar_t__ PIPE_ISOCHRONOUS ; 
#define  QH_STATE_COMPLETING 132 
#define  QH_STATE_IDLE 131 
#define  QH_STATE_LINKED 130 
#define  QH_STATE_UNLINK 129 
#define  QH_STATE_UNLINK_WAIT 128 
 int /*<<< orphan*/  QH_UNLINK_REQUESTED ; 
 struct ehci_hcd* FUNC0 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC1 (struct ehci_hcd*,struct ehci_qh*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct ehci_hcd*,struct ehci_qh*) ; 
 int /*<<< orphan*/  FUNC5 (struct ehci_hcd*,struct ehci_qh*) ; 
 int FUNC6 (struct usb_hcd*,struct urb*,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct usb_hcd *hcd, struct urb *urb, int status)
{
	struct ehci_hcd		*ehci = FUNC0 (hcd);
	struct ehci_qh		*qh;
	unsigned long		flags;
	int			rc;

	FUNC2 (&ehci->lock, flags);
	rc = FUNC6(hcd, urb, status);
	if (rc)
		goto done;

	if (FUNC7(urb->pipe) == PIPE_ISOCHRONOUS) {
		/*
		 * We don't expedite dequeue for isochronous URBs.
		 * Just wait until they complete normally or their
		 * time slot expires.
		 */
	} else {
		qh = (struct ehci_qh *) urb->hcpriv;
		qh->unlink_reason |= QH_UNLINK_REQUESTED;
		switch (qh->qh_state) {
		case QH_STATE_LINKED:
			if (FUNC7(urb->pipe) == PIPE_INTERRUPT)
				FUNC5(ehci, qh);
			else
				FUNC4(ehci, qh);
			break;
		case QH_STATE_COMPLETING:
			qh->dequeue_during_giveback = 1;
			break;
		case QH_STATE_UNLINK:
		case QH_STATE_UNLINK_WAIT:
			/* already started */
			break;
		case QH_STATE_IDLE:
			/* QH might be waiting for a Clear-TT-Buffer */
			FUNC1(ehci, qh);
			break;
		}
	}
done:
	FUNC3 (&ehci->lock, flags);
	return rc;
}