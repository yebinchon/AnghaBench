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
typedef  int /*<<< orphan*/  u32 ;
struct usb_ctrlrequest {scalar_t__ wLength; int bRequestType; int bRequest; } ;
struct nbu2ss_udc {scalar_t__ ep0state; int /*<<< orphan*/  lock; struct usb_ctrlrequest ctrl; int /*<<< orphan*/  gadget; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* setup ) (int /*<<< orphan*/ *,struct usb_ctrlrequest*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ EP0_IDLE ; 
 scalar_t__ EP0_IN_DATA_PHASE ; 
 scalar_t__ EP0_IN_STATUS_PHASE ; 
 scalar_t__ EP0_OUT_DATA_PHASE ; 
 int FUNC0 (struct nbu2ss_udc*,int) ; 
 int USB_DIR_IN ; 
#define  USB_REQ_CLEAR_FEATURE 132 
#define  USB_REQ_GET_STATUS 131 
#define  USB_REQ_SET_ADDRESS 130 
#define  USB_REQ_SET_CONFIGURATION 129 
#define  USB_REQ_SET_FEATURE 128 
 int USB_TYPE_MASK ; 
 int USB_TYPE_STANDARD ; 
 int /*<<< orphan*/  FUNC1 (struct nbu2ss_udc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct nbu2ss_udc*) ; 
 int FUNC5 (struct nbu2ss_udc*) ; 
 int FUNC6 (struct nbu2ss_udc*) ; 
 int FUNC7 (struct nbu2ss_udc*) ; 
 int FUNC8 (struct nbu2ss_udc*) ; 
 int FUNC9 (int /*<<< orphan*/ *,struct usb_ctrlrequest*) ; 

__attribute__((used)) static inline int FUNC10(struct nbu2ss_udc *udc)
{
	bool			bcall_back = true;
	int			nret = -EINVAL;
	struct usb_ctrlrequest	*p_ctrl;

	p_ctrl = &udc->ctrl;
	FUNC1(udc, (u32 *)p_ctrl);

	/* ep0 state control */
	if (p_ctrl->wLength == 0) {
		udc->ep0state = EP0_IN_STATUS_PHASE;

	} else {
		if (p_ctrl->bRequestType & USB_DIR_IN)
			udc->ep0state = EP0_IN_DATA_PHASE;
		else
			udc->ep0state = EP0_OUT_DATA_PHASE;
	}

	if ((p_ctrl->bRequestType & USB_TYPE_MASK) == USB_TYPE_STANDARD) {
		switch (p_ctrl->bRequest) {
		case USB_REQ_GET_STATUS:
			nret = FUNC5(udc);
			bcall_back = false;
			break;

		case USB_REQ_CLEAR_FEATURE:
			nret = FUNC4(udc);
			bcall_back = false;
			break;

		case USB_REQ_SET_FEATURE:
			nret = FUNC8(udc);
			bcall_back = false;
			break;

		case USB_REQ_SET_ADDRESS:
			nret = FUNC6(udc);
			bcall_back = false;
			break;

		case USB_REQ_SET_CONFIGURATION:
			nret = FUNC7(udc);
			break;

		default:
			break;
		}
	}

	if (!bcall_back) {
		if (udc->ep0state == EP0_IN_STATUS_PHASE) {
			if (nret >= 0) {
				/*--------------------------------------*/
				/* Status Stage */
				nret = FUNC0(udc, true);
			}
		}

	} else {
		FUNC3(&udc->lock);
		nret = udc->driver->setup(&udc->gadget, &udc->ctrl);
		FUNC2(&udc->lock);
	}

	if (nret < 0)
		udc->ep0state = EP0_IDLE;

	return nret;
}