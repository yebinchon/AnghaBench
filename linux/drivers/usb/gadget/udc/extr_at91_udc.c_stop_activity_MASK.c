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
struct usb_gadget_driver {int /*<<< orphan*/  (* disconnect ) (TYPE_1__*) ;} ;
struct TYPE_2__ {scalar_t__ speed; } ;
struct at91_udc {int /*<<< orphan*/  lock; TYPE_1__ gadget; struct at91_ep* ep; scalar_t__ suspended; struct usb_gadget_driver* driver; } ;
struct at91_ep {int stopped; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESHUTDOWN ; 
 int NUM_ENDPOINTS ; 
 scalar_t__ USB_SPEED_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (struct at91_ep*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct at91_udc*) ; 

__attribute__((used)) static void FUNC5(struct at91_udc *udc)
{
	struct usb_gadget_driver *driver = udc->driver;
	int i;

	if (udc->gadget.speed == USB_SPEED_UNKNOWN)
		driver = NULL;
	udc->gadget.speed = USB_SPEED_UNKNOWN;
	udc->suspended = 0;

	for (i = 0; i < NUM_ENDPOINTS; i++) {
		struct at91_ep *ep = &udc->ep[i];
		ep->stopped = 1;
		FUNC0(ep, -ESHUTDOWN);
	}
	if (driver) {
		FUNC2(&udc->lock);
		driver->disconnect(&udc->gadget);
		FUNC1(&udc->lock);
	}

	FUNC4(udc);
}