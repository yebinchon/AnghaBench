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
struct usb_ss_ep_comp_descriptor {int dummy; } ;
struct usb_gadget {int dummy; } ;
struct usb_ep {int dummy; } ;
struct usb_endpoint_descriptor {int dummy; } ;
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 scalar_t__ USB_ENDPOINT_XFER_BULK ; 
 scalar_t__ USB_ENDPOINT_XFER_INT ; 
 struct usb_ep* FUNC0 (struct usb_gadget*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,int,char*) ; 
 scalar_t__ FUNC2 (struct usb_endpoint_descriptor*) ; 
 int FUNC3 (struct usb_endpoint_descriptor*) ; 
 scalar_t__ FUNC4 (struct usb_endpoint_descriptor*) ; 
 scalar_t__ FUNC5 (struct usb_gadget*,struct usb_ep*,struct usb_endpoint_descriptor*,struct usb_ss_ep_comp_descriptor*) ; 

__attribute__((used)) static struct usb_ep *FUNC6(struct usb_gadget *_gadget,
		struct usb_endpoint_descriptor *desc,
		struct usb_ss_ep_comp_descriptor *ep_comp)
{
	char name[8];
	struct usb_ep *ep;

	if (FUNC4(desc) == USB_ENDPOINT_XFER_INT) {
		/* ep-e, ep-f are PIO with only 64 byte fifos */
		ep = FUNC0(_gadget, "ep-e");
		if (ep && FUNC5(_gadget, ep, desc, ep_comp))
			return ep;
		ep = FUNC0(_gadget, "ep-f");
		if (ep && FUNC5(_gadget, ep, desc, ep_comp))
			return ep;
	}

	/* USB3380: Only first four endpoints have DMA channels. Allocate
	 * slower interrupt endpoints from PIO hw endpoints, to allow bulk/isoc
	 * endpoints use DMA hw endpoints.
	 */
	if (FUNC4(desc) == USB_ENDPOINT_XFER_INT &&
	    FUNC2(desc)) {
		ep = FUNC0(_gadget, "ep2in");
		if (ep && FUNC5(_gadget, ep, desc, ep_comp))
			return ep;
		ep = FUNC0(_gadget, "ep4in");
		if (ep && FUNC5(_gadget, ep, desc, ep_comp))
			return ep;
	} else if (FUNC4(desc) == USB_ENDPOINT_XFER_INT &&
		   !FUNC2(desc)) {
		ep = FUNC0(_gadget, "ep1out");
		if (ep && FUNC5(_gadget, ep, desc, ep_comp))
			return ep;
		ep = FUNC0(_gadget, "ep3out");
		if (ep && FUNC5(_gadget, ep, desc, ep_comp))
			return ep;
	} else if (FUNC4(desc) != USB_ENDPOINT_XFER_BULK &&
		   FUNC2(desc)) {
		ep = FUNC0(_gadget, "ep1in");
		if (ep && FUNC5(_gadget, ep, desc, ep_comp))
			return ep;
		ep = FUNC0(_gadget, "ep3in");
		if (ep && FUNC5(_gadget, ep, desc, ep_comp))
			return ep;
	} else if (FUNC4(desc) != USB_ENDPOINT_XFER_BULK &&
		   !FUNC2(desc)) {
		ep = FUNC0(_gadget, "ep2out");
		if (ep && FUNC5(_gadget, ep, desc, ep_comp))
			return ep;
		ep = FUNC0(_gadget, "ep4out");
		if (ep && FUNC5(_gadget, ep, desc, ep_comp))
			return ep;
	}

	/* USB3380: use same address for usb and hardware endpoints */
	FUNC1(name, sizeof(name), "ep%d%s", FUNC3(desc),
			FUNC2(desc) ? "in" : "out");
	ep = FUNC0(_gadget, name);
	if (ep && FUNC5(_gadget, ep, desc, ep_comp))
		return ep;

	return NULL;
}