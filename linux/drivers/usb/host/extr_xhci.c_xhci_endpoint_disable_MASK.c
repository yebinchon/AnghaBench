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
struct xhci_virt_ep {int ep_state; } ;
struct xhci_virt_device {struct xhci_virt_ep* eps; } ;
struct xhci_hcd {int /*<<< orphan*/  lock; struct xhci_virt_device** devs; } ;
struct usb_host_endpoint {int /*<<< orphan*/ * hcpriv; int /*<<< orphan*/  desc; } ;
struct usb_hcd {int dummy; } ;
struct usb_device {size_t slot_id; } ;

/* Variables and functions */
 int EP_CLEARING_TT ; 
 struct xhci_hcd* FUNC0 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct xhci_hcd*,char*,int) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct usb_hcd *hcd,
				  struct usb_host_endpoint *host_ep)
{
	struct xhci_hcd		*xhci;
	struct xhci_virt_device	*vdev;
	struct xhci_virt_ep	*ep;
	struct usb_device	*udev;
	unsigned long		flags;
	unsigned int		ep_index;

	xhci = FUNC0(hcd);
rescan:
	FUNC2(&xhci->lock, flags);

	udev = (struct usb_device *)host_ep->hcpriv;
	if (!udev || !udev->slot_id)
		goto done;

	vdev = xhci->devs[udev->slot_id];
	if (!vdev)
		goto done;

	ep_index = FUNC5(&host_ep->desc);
	ep = &vdev->eps[ep_index];
	if (!ep)
		goto done;

	/* wait for hub_tt_work to finish clearing hub TT */
	if (ep->ep_state & EP_CLEARING_TT) {
		FUNC3(&xhci->lock, flags);
		FUNC1(1);
		goto rescan;
	}

	if (ep->ep_state)
		FUNC4(xhci, "endpoint disable with ep_state 0x%x\n",
			 ep->ep_state);
done:
	host_ep->hcpriv = NULL;
	FUNC3(&xhci->lock, flags);
}