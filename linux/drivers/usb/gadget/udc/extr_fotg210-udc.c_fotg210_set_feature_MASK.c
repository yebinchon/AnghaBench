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
typedef  size_t u8 ;
struct usb_ctrlrequest {int bRequestType; int /*<<< orphan*/  wIndex; } ;
struct fotg210_udc {int /*<<< orphan*/ * ep; } ;

/* Variables and functions */
 size_t USB_ENDPOINT_NUMBER_MASK ; 
#define  USB_RECIP_DEVICE 130 
#define  USB_RECIP_ENDPOINT 129 
#define  USB_RECIP_INTERFACE 128 
 int USB_RECIP_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct fotg210_udc*) ; 
 int /*<<< orphan*/  FUNC1 (struct fotg210_udc*) ; 
 int /*<<< orphan*/  FUNC2 (struct fotg210_udc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct fotg210_udc *fotg210,
				struct usb_ctrlrequest *ctrl)
{
	switch (ctrl->bRequestType & USB_RECIP_MASK) {
	case USB_RECIP_DEVICE:
		FUNC1(fotg210);
		break;
	case USB_RECIP_INTERFACE:
		FUNC1(fotg210);
		break;
	case USB_RECIP_ENDPOINT: {
		u8 epnum;
		epnum = FUNC4(ctrl->wIndex) & USB_ENDPOINT_NUMBER_MASK;
		if (epnum)
			FUNC3(fotg210->ep[epnum]);
		else
			FUNC2(fotg210);
		FUNC1(fotg210);
		}
		break;
	default:
		FUNC0(fotg210);
		break;
	}
}