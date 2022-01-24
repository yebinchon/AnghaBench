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
struct xhci_hcd {int /*<<< orphan*/  lock; TYPE_2__** devs; } ;
struct usb_host_endpoint {int /*<<< orphan*/  desc; scalar_t__ hcpriv; } ;
struct usb_hcd {int dummy; } ;
struct usb_device {unsigned int slot_id; } ;
struct TYPE_4__ {TYPE_1__* eps; } ;
struct TYPE_3__ {int /*<<< orphan*/  ep_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  EP_CLEARING_TT ; 
 struct xhci_hcd* FUNC0 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct xhci_hcd*,unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC5(struct usb_hcd *hcd,
		struct usb_host_endpoint *ep)
{
	struct xhci_hcd *xhci;
	struct usb_device *udev;
	unsigned int slot_id;
	unsigned int ep_index;
	unsigned long flags;

	xhci = FUNC0(hcd);

	FUNC1(&xhci->lock, flags);
	udev = (struct usb_device *)ep->hcpriv;
	slot_id = udev->slot_id;
	ep_index = FUNC3(&ep->desc);

	xhci->devs[slot_id]->eps[ep_index].ep_state &= ~EP_CLEARING_TT;
	FUNC4(xhci, slot_id, ep_index);
	FUNC2(&xhci->lock, flags);
}