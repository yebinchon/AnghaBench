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
struct usb_ss_ep_comp_descriptor {int dummy; } ;
struct usb_gadget {int dummy; } ;
struct usb_ep {int dummy; } ;
struct usb_endpoint_descriptor {int dummy; } ;
struct goku_udc {TYPE_1__* ep; } ;
struct TYPE_2__ {struct usb_ep ep; } ;

/* Variables and functions */
#define  USB_ENDPOINT_XFER_BULK 129 
#define  USB_ENDPOINT_XFER_INT 128 
 struct goku_udc* FUNC0 (struct usb_gadget*) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_endpoint_descriptor*) ; 
 int FUNC2 (struct usb_endpoint_descriptor*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_gadget*,struct usb_ep*,struct usb_endpoint_descriptor*,struct usb_ss_ep_comp_descriptor*) ; 

__attribute__((used)) static struct usb_ep *FUNC4(struct usb_gadget *g,
		struct usb_endpoint_descriptor *desc,
		struct usb_ss_ep_comp_descriptor *ep_comp)
{
	struct goku_udc	*dev = FUNC0(g);
	struct usb_ep *ep;

	switch (FUNC2(desc)) {
	case USB_ENDPOINT_XFER_INT:
		/* single buffering is enough */
		ep = &dev->ep[3].ep;
		if (FUNC3(g, ep, desc, ep_comp))
			return ep;
		break;
	case USB_ENDPOINT_XFER_BULK:
		if (FUNC1(desc)) {
			/* DMA may be available */
			ep = &dev->ep[2].ep;
			if (FUNC3(g, ep, desc, ep_comp))
				return ep;
		}
		break;
	default:
		/* nothing */ ;
	}

	return NULL;
}