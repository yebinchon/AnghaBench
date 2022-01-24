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
struct usb_hcd {int dummy; } ;
struct urb_priv {int /*<<< orphan*/  node; struct uhci_qh* qh; } ;
struct urb {int /*<<< orphan*/  error_count; TYPE_1__* ep; int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/ * next; } ;
struct uhci_qh {int type; scalar_t__ state; int /*<<< orphan*/  is_stopped; TYPE_2__ queue; } ;
struct uhci_hcd {int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_3__ {struct uhci_qh* hcpriv; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ QH_STATE_IDLE ; 
#define  USB_ENDPOINT_XFER_BULK 131 
#define  USB_ENDPOINT_XFER_CONTROL 130 
#define  USB_ENDPOINT_XFER_INT 129 
#define  USB_ENDPOINT_XFER_ISOC 128 
 struct uhci_hcd* FUNC0 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct uhci_hcd*,struct uhci_qh*) ; 
 struct uhci_qh* FUNC5 (struct uhci_hcd*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 struct urb_priv* FUNC6 (struct uhci_hcd*,struct urb*) ; 
 int /*<<< orphan*/  FUNC7 (struct uhci_hcd*,struct urb_priv*) ; 
 int /*<<< orphan*/  FUNC8 (struct uhci_hcd*,struct uhci_qh*) ; 
 int FUNC9 (struct uhci_hcd*,struct urb*,struct uhci_qh*) ; 
 int FUNC10 (struct uhci_hcd*,struct urb*,struct uhci_qh*) ; 
 int FUNC11 (struct uhci_hcd*,struct urb*,struct uhci_qh*) ; 
 int FUNC12 (struct uhci_hcd*,struct urb*,struct uhci_qh*) ; 
 int /*<<< orphan*/  FUNC13 (struct uhci_hcd*,struct urb_priv*) ; 
 int FUNC14 (struct usb_hcd*,struct urb*) ; 
 int /*<<< orphan*/  FUNC15 (struct usb_hcd*,struct urb*) ; 

__attribute__((used)) static int FUNC16(struct usb_hcd *hcd,
		struct urb *urb, gfp_t mem_flags)
{
	int ret;
	struct uhci_hcd *uhci = FUNC0(hcd);
	unsigned long flags;
	struct urb_priv *urbp;
	struct uhci_qh *qh;

	FUNC2(&uhci->lock, flags);

	ret = FUNC14(hcd, urb);
	if (ret)
		goto done_not_linked;

	ret = -ENOMEM;
	urbp = FUNC6(uhci, urb);
	if (!urbp)
		goto done;

	if (urb->ep->hcpriv)
		qh = urb->ep->hcpriv;
	else {
		qh = FUNC5(uhci, urb->dev, urb->ep);
		if (!qh)
			goto err_no_qh;
	}
	urbp->qh = qh;

	switch (qh->type) {
	case USB_ENDPOINT_XFER_CONTROL:
		ret = FUNC10(uhci, urb, qh);
		break;
	case USB_ENDPOINT_XFER_BULK:
		ret = FUNC9(uhci, urb, qh);
		break;
	case USB_ENDPOINT_XFER_INT:
		ret = FUNC11(uhci, urb, qh);
		break;
	case USB_ENDPOINT_XFER_ISOC:
		urb->error_count = 0;
		ret = FUNC12(uhci, urb, qh);
		break;
	}
	if (ret != 0)
		goto err_submit_failed;

	/* Add this URB to the QH */
	FUNC1(&urbp->node, &qh->queue);

	/* If the new URB is the first and only one on this QH then either
	 * the QH is new and idle or else it's unlinked and waiting to
	 * become idle, so we can activate it right away.  But only if the
	 * queue isn't stopped. */
	if (qh->queue.next == &urbp->node && !qh->is_stopped) {
		FUNC4(uhci, qh);
		FUNC13(uhci, urbp);
	}
	goto done;

err_submit_failed:
	if (qh->state == QH_STATE_IDLE)
		FUNC8(uhci, qh);	/* Reclaim unused QH */
err_no_qh:
	FUNC7(uhci, urbp);
done:
	if (ret)
		FUNC15(hcd, urb);
done_not_linked:
	FUNC3(&uhci->lock, flags);
	return ret;
}