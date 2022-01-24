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
struct usb_ctrlrequest {size_t wIndex; int bRequestType; } ;
struct fotg210_udc {struct fotg210_ep** ep; } ;
struct fotg210_ep {int /*<<< orphan*/  ep; int /*<<< orphan*/  stall; int /*<<< orphan*/  wedged; } ;

/* Variables and functions */
 size_t USB_ENDPOINT_NUMBER_MASK ; 
#define  USB_RECIP_DEVICE 130 
#define  USB_RECIP_ENDPOINT 129 
#define  USB_RECIP_INTERFACE 128 
 int USB_RECIP_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct fotg210_udc*) ; 
 int /*<<< orphan*/  FUNC1 (struct fotg210_udc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct fotg210_udc *fotg210,
				struct usb_ctrlrequest *ctrl)
{
	struct fotg210_ep *ep =
		fotg210->ep[ctrl->wIndex & USB_ENDPOINT_NUMBER_MASK];

	switch (ctrl->bRequestType & USB_RECIP_MASK) {
	case USB_RECIP_DEVICE:
		FUNC1(fotg210);
		break;
	case USB_RECIP_INTERFACE:
		FUNC1(fotg210);
		break;
	case USB_RECIP_ENDPOINT:
		if (ctrl->wIndex & USB_ENDPOINT_NUMBER_MASK) {
			if (ep->wedged) {
				FUNC1(fotg210);
				break;
			}
			if (ep->stall)
				FUNC2(&ep->ep, 0, 0);
		}
		FUNC1(fotg210);
		break;
	default:
		FUNC0(fotg210);
		break;
	}
}