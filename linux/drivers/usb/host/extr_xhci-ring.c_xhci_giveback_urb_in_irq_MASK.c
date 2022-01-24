#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct xhci_td {struct urb* urb; } ;
struct xhci_hcd {int quirks; int /*<<< orphan*/  lock; } ;
struct usb_hcd {int dummy; } ;
struct urb_priv {int dummy; } ;
struct urb {int /*<<< orphan*/  pipe; TYPE_1__* dev; struct urb_priv* hcpriv; } ;
struct TYPE_5__ {scalar_t__ bandwidth_isoc_reqs; } ;
struct TYPE_6__ {TYPE_2__ self; } ;
struct TYPE_4__ {int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 scalar_t__ PIPE_ISOCHRONOUS ; 
 int XHCI_AMD_PLL_FIX ; 
 struct usb_hcd* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct urb*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct usb_hcd*,struct urb*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_hcd*,struct urb*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC8 (struct xhci_hcd*) ; 
 int /*<<< orphan*/  FUNC9 (struct urb_priv*) ; 

__attribute__((used)) static void FUNC10(struct xhci_hcd *xhci,
				     struct xhci_td *cur_td, int status)
{
	struct urb	*urb		= cur_td->urb;
	struct urb_priv	*urb_priv	= urb->hcpriv;
	struct usb_hcd	*hcd		= FUNC0(urb->dev->bus);

	if (FUNC7(urb->pipe) == PIPE_ISOCHRONOUS) {
		FUNC8(xhci)->self.bandwidth_isoc_reqs--;
		if (FUNC8(xhci)->self.bandwidth_isoc_reqs	== 0) {
			if (xhci->quirks & XHCI_AMD_PLL_FIX)
				FUNC4();
		}
	}
	FUNC9(urb_priv);
	FUNC6(hcd, urb);
	FUNC2(&xhci->lock);
	FUNC3(urb);
	FUNC5(hcd, urb, status);
	FUNC1(&xhci->lock);
}