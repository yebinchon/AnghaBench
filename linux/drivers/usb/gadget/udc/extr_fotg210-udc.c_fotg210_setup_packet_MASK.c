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
typedef  int u8 ;
typedef  int u32 ;
struct usb_ctrlrequest {int bRequestType; int bRequest; } ;
struct TYPE_4__ {scalar_t__ speed; } ;
struct fotg210_udc {TYPE_2__ gadget; scalar_t__ reg; TYPE_1__** ep; } ;
struct TYPE_3__ {int dir_in; } ;

/* Variables and functions */
 int DMCR_HS_EN ; 
 scalar_t__ FOTG210_DMCR ; 
 int USB_DIR_IN ; 
#define  USB_REQ_CLEAR_FEATURE 132 
#define  USB_REQ_GET_STATUS 131 
#define  USB_REQ_SET_ADDRESS 130 
#define  USB_REQ_SET_CONFIGURATION 129 
#define  USB_REQ_SET_FEATURE 128 
 scalar_t__ USB_SPEED_FULL ; 
 scalar_t__ USB_SPEED_HIGH ; 
 scalar_t__ USB_SPEED_UNKNOWN ; 
 int USB_TYPE_MASK ; 
 int USB_TYPE_STANDARD ; 
 int /*<<< orphan*/  FUNC0 (struct fotg210_udc*,struct usb_ctrlrequest*) ; 
 int /*<<< orphan*/  FUNC1 (struct fotg210_udc*,struct usb_ctrlrequest*) ; 
 int /*<<< orphan*/  FUNC2 (struct fotg210_udc*,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct fotg210_udc*,struct usb_ctrlrequest*) ; 
 int /*<<< orphan*/  FUNC4 (struct fotg210_udc*) ; 
 int /*<<< orphan*/  FUNC5 (struct fotg210_udc*,struct usb_ctrlrequest*) ; 
 int FUNC6 (scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct fotg210_udc *fotg210,
				struct usb_ctrlrequest *ctrl)
{
	u8 *p = (u8 *)ctrl;
	u8 ret = 0;

	FUNC2(fotg210, p);

	fotg210->ep[0]->dir_in = ctrl->bRequestType & USB_DIR_IN;

	if (fotg210->gadget.speed == USB_SPEED_UNKNOWN) {
		u32 value = FUNC6(fotg210->reg + FOTG210_DMCR);
		fotg210->gadget.speed = value & DMCR_HS_EN ?
				USB_SPEED_HIGH : USB_SPEED_FULL;
	}

	/* check request */
	if ((ctrl->bRequestType & USB_TYPE_MASK) == USB_TYPE_STANDARD) {
		switch (ctrl->bRequest) {
		case USB_REQ_GET_STATUS:
			FUNC1(fotg210, ctrl);
			break;
		case USB_REQ_CLEAR_FEATURE:
			FUNC0(fotg210, ctrl);
			break;
		case USB_REQ_SET_FEATURE:
			FUNC5(fotg210, ctrl);
			break;
		case USB_REQ_SET_ADDRESS:
			FUNC3(fotg210, ctrl);
			break;
		case USB_REQ_SET_CONFIGURATION:
			FUNC4(fotg210);
			ret = 1;
			break;
		default:
			ret = 1;
			break;
		}
	} else {
		ret = 1;
	}

	return ret;
}