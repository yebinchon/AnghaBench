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
typedef  int /*<<< orphan*/  u16 ;
struct usba_udc {int devstatus; int /*<<< orphan*/  lock; int /*<<< orphan*/  gadget; TYPE_1__* driver; int /*<<< orphan*/  test_mode; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct usba_ep {TYPE_2__ ep; int /*<<< orphan*/  state; int /*<<< orphan*/  index; int /*<<< orphan*/  fifo; } ;
struct usb_ctrlrequest {int bRequest; int bRequestType; int /*<<< orphan*/  wLength; int /*<<< orphan*/  wIndex; int /*<<< orphan*/  wValue; } ;
typedef  int /*<<< orphan*/  status ;
struct TYPE_3__ {int (* setup ) (int /*<<< orphan*/ *,struct usb_ctrlrequest*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CLR_STA ; 
 int /*<<< orphan*/  DATA_STAGE_IN ; 
 int /*<<< orphan*/  SET_STA ; 
 int /*<<< orphan*/  STATUS_STAGE_ADDR ; 
 int /*<<< orphan*/  STATUS_STAGE_TEST ; 
 int /*<<< orphan*/  USBA_FORCE_STALL ; 
 int /*<<< orphan*/  USBA_TOGGLE_CLR ; 
 int /*<<< orphan*/  USBA_TX_PK_RDY ; 
 int USB_DEVICE_REMOTE_WAKEUP ; 
 int USB_DIR_IN ; 
 int USB_DIR_OUT ; 
 int USB_RECIP_DEVICE ; 
 int USB_RECIP_ENDPOINT ; 
 int USB_RECIP_INTERFACE ; 
#define  USB_REQ_CLEAR_FEATURE 131 
#define  USB_REQ_GET_STATUS 130 
#define  USB_REQ_SET_ADDRESS 129 
#define  USB_REQ_SET_FEATURE 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_ctrlrequest*) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_ctrlrequest*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_ctrlrequest*) ; 
 struct usba_ep* FUNC4 (struct usba_udc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct usba_udc*,struct usba_ep*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct usba_udc*,struct usba_ep*) ; 
 int /*<<< orphan*/  FUNC9 (struct usba_udc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct usba_udc*,struct usba_ep*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *,struct usb_ctrlrequest*) ; 
 int /*<<< orphan*/  FUNC14 (struct usba_ep*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct usba_udc *udc, struct usba_ep *ep,
		struct usb_ctrlrequest *crq)
{
	int retval = 0;

	switch (crq->bRequest) {
	case USB_REQ_GET_STATUS: {
		u16 status;

		if (crq->bRequestType == (USB_DIR_IN | USB_RECIP_DEVICE)) {
			status = FUNC0(udc->devstatus);
		} else if (crq->bRequestType
				== (USB_DIR_IN | USB_RECIP_INTERFACE)) {
			status = FUNC0(0);
		} else if (crq->bRequestType
				== (USB_DIR_IN | USB_RECIP_ENDPOINT)) {
			struct usba_ep *target;

			target = FUNC4(udc, FUNC6(crq->wIndex));
			if (!target)
				goto stall;

			status = 0;
			if (FUNC5(udc, target))
				status |= FUNC0(1);
		} else
			goto delegate;

		/* Write directly to the FIFO. No queueing is done. */
		if (crq->wLength != FUNC0(sizeof(status)))
			goto stall;
		ep->state = DATA_STAGE_IN;
		FUNC15(status, ep->fifo);
		FUNC14(ep, SET_STA, USBA_TX_PK_RDY);
		break;
	}

	case USB_REQ_CLEAR_FEATURE: {
		if (crq->bRequestType == USB_RECIP_DEVICE) {
			if (FUNC1(crq))
				udc->devstatus
					&= ~(1 << USB_DEVICE_REMOTE_WAKEUP);
			else
				/* Can't CLEAR_FEATURE TEST_MODE */
				goto stall;
		} else if (crq->bRequestType == USB_RECIP_ENDPOINT) {
			struct usba_ep *target;

			if (crq->wLength != FUNC0(0)
					|| !FUNC3(crq))
				goto stall;
			target = FUNC4(udc, FUNC6(crq->wIndex));
			if (!target)
				goto stall;

			FUNC14(target, CLR_STA, USBA_FORCE_STALL);
			if (target->index != 0)
				FUNC14(target, CLR_STA,
						USBA_TOGGLE_CLR);
		} else {
			goto delegate;
		}

		FUNC8(udc, ep);
		break;
	}

	case USB_REQ_SET_FEATURE: {
		if (crq->bRequestType == USB_RECIP_DEVICE) {
			if (FUNC2(crq)) {
				FUNC8(udc, ep);
				ep->state = STATUS_STAGE_TEST;
				udc->test_mode = FUNC6(crq->wIndex);
				return 0;
			} else if (FUNC1(crq)) {
				udc->devstatus |= 1 << USB_DEVICE_REMOTE_WAKEUP;
			} else {
				goto stall;
			}
		} else if (crq->bRequestType == USB_RECIP_ENDPOINT) {
			struct usba_ep *target;

			if (crq->wLength != FUNC0(0)
					|| !FUNC3(crq))
				goto stall;

			target = FUNC4(udc, FUNC6(crq->wIndex));
			if (!target)
				goto stall;

			FUNC14(target, SET_STA, USBA_FORCE_STALL);
		} else
			goto delegate;

		FUNC8(udc, ep);
		break;
	}

	case USB_REQ_SET_ADDRESS:
		if (crq->bRequestType != (USB_DIR_OUT | USB_RECIP_DEVICE))
			goto delegate;

		FUNC9(udc, FUNC6(crq->wValue));
		FUNC8(udc, ep);
		ep->state = STATUS_STAGE_ADDR;
		break;

	default:
delegate:
		FUNC12(&udc->lock);
		retval = udc->driver->setup(&udc->gadget, crq);
		FUNC11(&udc->lock);
	}

	return retval;

stall:
	FUNC7("udc: %s: Invalid setup request: %02x.%02x v%04x i%04x l%d, "
		"halting endpoint...\n",
		ep->ep.name, crq->bRequestType, crq->bRequest,
		FUNC6(crq->wValue), FUNC6(crq->wIndex),
		FUNC6(crq->wLength));
	FUNC10(udc, ep);
	return -1;
}