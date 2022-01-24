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
struct usb_host_endpoint {struct ehci_qh* hcpriv; int /*<<< orphan*/  desc; } ;
struct usb_hcd {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  udev; } ;
struct ehci_qh {int /*<<< orphan*/  unlink_reason; TYPE_1__ ps; int /*<<< orphan*/  qtd_list; } ;
struct ehci_hcd {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  QH_UNLINK_REQUESTED ; 
 int USB_ENDPOINT_XFER_BULK ; 
 int USB_ENDPOINT_XFER_INT ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 struct ehci_hcd* FUNC1 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct ehci_hcd*,struct ehci_qh*) ; 
 int /*<<< orphan*/  FUNC6 (struct ehci_hcd*,struct ehci_qh*) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11(struct usb_hcd *hcd, struct usb_host_endpoint *ep)
{
	struct ehci_hcd		*ehci = FUNC1(hcd);
	struct ehci_qh		*qh;
	int			eptype = FUNC9(&ep->desc);
	int			epnum = FUNC8(&ep->desc);
	int			is_out = FUNC7(&ep->desc);
	unsigned long		flags;

	if (eptype != USB_ENDPOINT_XFER_BULK && eptype != USB_ENDPOINT_XFER_INT)
		return;

	FUNC3(&ehci->lock, flags);
	qh = ep->hcpriv;

	/* For Bulk and Interrupt endpoints we maintain the toggle state
	 * in the hardware; the toggle bits in udev aren't used at all.
	 * When an endpoint is reset by usb_clear_halt() we must reset
	 * the toggle bit in the QH.
	 */
	if (qh) {
		if (!FUNC2(&qh->qtd_list)) {
			FUNC0(1, "clear_halt for a busy endpoint\n");
		} else {
			/* The toggle value in the QH can't be updated
			 * while the QH is active.  Unlink it now;
			 * re-linking will call qh_refresh().
			 */
			FUNC10(qh->ps.udev, epnum, is_out, 0);
			qh->unlink_reason |= QH_UNLINK_REQUESTED;
			if (eptype == USB_ENDPOINT_XFER_BULK)
				FUNC5(ehci, qh);
			else
				FUNC6(ehci, qh);
		}
	}
	FUNC4(&ehci->lock, flags);
}