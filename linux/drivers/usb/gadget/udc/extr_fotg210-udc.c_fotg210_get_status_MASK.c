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
typedef  size_t u8 ;
struct usb_ctrlrequest {int bRequestType; size_t wIndex; } ;
struct TYPE_3__ {int /*<<< orphan*/  ep0; } ;
struct fotg210_udc {int ep0_data; int /*<<< orphan*/  lock; TYPE_2__* ep0_req; TYPE_1__ gadget; int /*<<< orphan*/ * ep; } ;
struct TYPE_4__ {int* buf; int length; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int USB_DEVICE_SELF_POWERED ; 
 int USB_ENDPOINT_HALT ; 
 size_t USB_ENDPOINT_NUMBER_MASK ; 
#define  USB_RECIP_DEVICE 130 
#define  USB_RECIP_ENDPOINT 129 
#define  USB_RECIP_INTERFACE 128 
 int USB_RECIP_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fotg210_udc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct fotg210_udc *fotg210,
				struct usb_ctrlrequest *ctrl)
{
	u8 epnum;

	switch (ctrl->bRequestType & USB_RECIP_MASK) {
	case USB_RECIP_DEVICE:
		fotg210->ep0_data = 1 << USB_DEVICE_SELF_POWERED;
		break;
	case USB_RECIP_INTERFACE:
		fotg210->ep0_data = 0;
		break;
	case USB_RECIP_ENDPOINT:
		epnum = ctrl->wIndex & USB_ENDPOINT_NUMBER_MASK;
		if (epnum)
			fotg210->ep0_data =
				FUNC1(fotg210->ep[epnum])
				<< USB_ENDPOINT_HALT;
		else
			FUNC2(fotg210);
		break;

	default:
		FUNC2(fotg210);
		return;		/* exit */
	}

	fotg210->ep0_req->buf = &fotg210->ep0_data;
	fotg210->ep0_req->length = 2;

	FUNC4(&fotg210->lock);
	FUNC0(fotg210->gadget.ep0, fotg210->ep0_req, GFP_ATOMIC);
	FUNC3(&fotg210->lock);
}