#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int quirk_altset_not_supp; int /*<<< orphan*/  ep_list; TYPE_1__* ep0; } ;
struct pxa_udc {TYPE_3__* udc_usb_ep; TYPE_2__ gadget; struct pxa_ep* pxa_ep; } ;
struct pxa_ep {int /*<<< orphan*/  lock; int /*<<< orphan*/  queue; int /*<<< orphan*/  enabled; } ;
struct TYPE_8__ {int /*<<< orphan*/  maxpacket; int /*<<< orphan*/  ep_list; } ;
struct TYPE_7__ {TYPE_4__ usb_ep; struct pxa_ep* pxa_ep; } ;
struct TYPE_5__ {int /*<<< orphan*/  ep_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int NR_PXA_ENDPOINTS ; 
 int NR_USB_ENDPOINTS ; 
 int /*<<< orphan*/  FUNC1 (struct pxa_udc*) ; 
 int /*<<< orphan*/  FUNC2 (struct pxa_ep*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct pxa_udc *dev)
{
	int i;
	struct pxa_ep *ep;

	/* device/ep0 records init */
	FUNC0(&dev->gadget.ep_list);
	FUNC0(&dev->gadget.ep0->ep_list);
	dev->udc_usb_ep[0].pxa_ep = &dev->pxa_ep[0];
	dev->gadget.quirk_altset_not_supp = 1;
	FUNC1(dev);

	/* PXA endpoints init */
	for (i = 0; i < NR_PXA_ENDPOINTS; i++) {
		ep = &dev->pxa_ep[i];

		ep->enabled = FUNC2(ep);
		FUNC0(&ep->queue);
		FUNC4(&ep->lock);
	}

	/* USB endpoints init */
	for (i = 1; i < NR_USB_ENDPOINTS; i++) {
		FUNC3(&dev->udc_usb_ep[i].usb_ep.ep_list,
				&dev->gadget.ep_list);
		FUNC5(&dev->udc_usb_ep[i].usb_ep,
					   dev->udc_usb_ep[i].usb_ep.maxpacket);
	}
}