#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  bEndpointAddress; } ;
struct usb_host_endpoint {struct ehci_qh* hcpriv; TYPE_2__ desc; } ;
struct usb_hcd {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  bw_uperiod; } ;
struct ehci_qh {int qh_state; int /*<<< orphan*/  qtd_list; TYPE_1__ ps; int /*<<< orphan*/  clearing_tt; int /*<<< orphan*/  unlink_reason; int /*<<< orphan*/  td_list; int /*<<< orphan*/ * hw; } ;
struct ehci_iso_stream {int qh_state; int /*<<< orphan*/  qtd_list; TYPE_1__ ps; int /*<<< orphan*/  clearing_tt; int /*<<< orphan*/  unlink_reason; int /*<<< orphan*/  td_list; int /*<<< orphan*/ * hw; } ;
struct ehci_hcd {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
#define  QH_STATE_COMPLETING 132 
#define  QH_STATE_IDLE 131 
#define  QH_STATE_LINKED 130 
#define  QH_STATE_UNLINK 129 
#define  QH_STATE_UNLINK_WAIT 128 
 int /*<<< orphan*/  QH_UNLINK_QUEUE_EMPTY ; 
 int /*<<< orphan*/  QH_UNLINK_REQUESTED ; 
 int /*<<< orphan*/  USB_ENDPOINT_XFER_INT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ehci_hcd*,char*,struct ehci_qh*,int /*<<< orphan*/ ,int,char*) ; 
 struct ehci_hcd* FUNC2 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC3 (struct ehci_qh*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ehci_hcd*,struct ehci_qh*) ; 
 int /*<<< orphan*/  FUNC6 (struct ehci_hcd*,struct ehci_qh*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ehci_hcd*,struct ehci_qh*,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (struct ehci_hcd*,struct ehci_qh*) ; 
 int /*<<< orphan*/  FUNC12 (struct ehci_hcd*,struct ehci_qh*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC14 (struct usb_hcd *hcd, struct usb_host_endpoint *ep)
{
	struct ehci_hcd		*ehci = FUNC2 (hcd);
	unsigned long		flags;
	struct ehci_qh		*qh;

	/* ASSERT:  any requests/urbs are being unlinked */
	/* ASSERT:  nobody can be submitting urbs for this any more */

rescan:
	FUNC9 (&ehci->lock, flags);
	qh = ep->hcpriv;
	if (!qh)
		goto done;

	/* endpoints can be iso streams.  for now, we don't
	 * accelerate iso completions ... so spin a while.
	 */
	if (qh->hw == NULL) {
		struct ehci_iso_stream	*stream = ep->hcpriv;

		if (!FUNC4(&stream->td_list))
			goto idle_timeout;

		/* BUG_ON(!list_empty(&stream->free_list)); */
		FUNC7(ehci, stream, -1);
		FUNC3(stream);
		goto done;
	}

	qh->unlink_reason |= QH_UNLINK_REQUESTED;
	switch (qh->qh_state) {
	case QH_STATE_LINKED:
		if (FUNC4(&qh->qtd_list))
			qh->unlink_reason |= QH_UNLINK_QUEUE_EMPTY;
		else
			FUNC0(1);
		if (FUNC13(&ep->desc) != USB_ENDPOINT_XFER_INT)
			FUNC11(ehci, qh);
		else
			FUNC12(ehci, qh);
		/* FALL THROUGH */
	case QH_STATE_COMPLETING:	/* already in unlinking */
	case QH_STATE_UNLINK:		/* wait for hw to finish? */
	case QH_STATE_UNLINK_WAIT:
idle_timeout:
		FUNC10 (&ehci->lock, flags);
		FUNC8(1);
		goto rescan;
	case QH_STATE_IDLE:		/* fully unlinked */
		if (qh->clearing_tt)
			goto idle_timeout;
		if (FUNC4 (&qh->qtd_list)) {
			if (qh->ps.bw_uperiod)
				FUNC6(ehci, qh, -1);
			FUNC5(ehci, qh);
			break;
		}
		/* fall through */
	default:
		/* caller was supposed to have unlinked any requests;
		 * that's not our job.  just leak this memory.
		 */
		FUNC1 (ehci, "qh %p (#%02x) state %d%s\n",
			qh, ep->desc.bEndpointAddress, qh->qh_state,
			FUNC4 (&qh->qtd_list) ? "" : "(has tds)");
		break;
	}
 done:
	ep->hcpriv = NULL;
	FUNC10 (&ehci->lock, flags);
}