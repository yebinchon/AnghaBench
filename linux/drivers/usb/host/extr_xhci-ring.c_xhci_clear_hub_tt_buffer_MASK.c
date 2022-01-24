#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct xhci_virt_ep {int ep_state; } ;
struct xhci_td {TYPE_6__* urb; } ;
struct xhci_hcd {int dummy; } ;
struct TYPE_12__ {TYPE_4__* dev; TYPE_3__* ep; int /*<<< orphan*/  pipe; } ;
struct TYPE_8__ {scalar_t__ root_hub; } ;
struct TYPE_11__ {TYPE_2__ self; } ;
struct TYPE_10__ {TYPE_1__* tt; } ;
struct TYPE_9__ {TYPE_4__* hcpriv; } ;
struct TYPE_7__ {scalar_t__ hub; } ;

/* Variables and functions */
 int EP_CLEARING_TT ; 
 scalar_t__ FUNC0 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC2 (struct xhci_hcd*) ; 

__attribute__((used)) static void FUNC3(struct xhci_hcd *xhci, struct xhci_td *td,
		struct xhci_virt_ep *ep)
{
	/*
	 * As part of low/full-speed endpoint-halt processing
	 * we must clear the TT buffer (USB 2.0 specification 11.17.5).
	 */
	if (td->urb->dev->tt && !FUNC1(td->urb->pipe) &&
	    (td->urb->dev->tt->hub != FUNC2(xhci)->self.root_hub) &&
	    !(ep->ep_state & EP_CLEARING_TT)) {
		ep->ep_state |= EP_CLEARING_TT;
		td->urb->ep->hcpriv = td->urb->dev;
		if (FUNC0(td->urb))
			ep->ep_state &= ~EP_CLEARING_TT;
	}
}