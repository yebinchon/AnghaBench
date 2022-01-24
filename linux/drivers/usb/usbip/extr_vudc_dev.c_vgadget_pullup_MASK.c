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
struct TYPE_8__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  speed; } ;
struct vudc {int pullup; int /*<<< orphan*/  lock; int /*<<< orphan*/  ud; scalar_t__ desc_cached; TYPE_4__ gadget; TYPE_3__* ep; TYPE_1__* driver; } ;
struct usb_gadget {int dummy; } ;
struct TYPE_6__ {int maxpacket; } ;
struct TYPE_7__ {TYPE_2__ ep; } ;
struct TYPE_5__ {int /*<<< orphan*/  max_speed; } ;

/* Variables and functions */
 int /*<<< orphan*/  USB_SPEED_HIGH ; 
 int /*<<< orphan*/  VUDC_EVENT_REMOVED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (struct vudc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  u8 ; 
 struct vudc* FUNC5 (struct usb_gadget*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct usb_gadget *_gadget, int value)
{
	struct vudc *udc = FUNC5(_gadget);
	unsigned long flags;
	int ret;


	FUNC3(&udc->lock, flags);
	value = !!value;
	if (value == udc->pullup)
		goto unlock;

	udc->pullup = value;
	if (value) {
		udc->gadget.speed = FUNC2(u8, USB_SPEED_HIGH,
					   udc->driver->max_speed);
		udc->ep[0].ep.maxpacket = 64;
		/*
		 * This is the first place where we can ask our
		 * gadget driver for descriptors.
		 */
		ret = FUNC1(udc);
		if (ret) {
			FUNC0(&udc->gadget.dev, "Unable go get desc: %d", ret);
			goto unlock;
		}

		FUNC4(&udc->lock, flags);
		FUNC7(&udc->ud);
	} else {
		/* Invalidate descriptors */
		udc->desc_cached = 0;

		FUNC4(&udc->lock, flags);
		FUNC6(&udc->ud, VUDC_EVENT_REMOVED);
		FUNC8(&udc->ud); /* Wait for eh completion */
	}

	return 0;

unlock:
	FUNC4(&udc->lock, flags);
	return 0;
}