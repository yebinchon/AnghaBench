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
struct usb_gadget {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  speed; } ;
struct bcm63xx_udc {scalar_t__ ep0state; int ep0_req_shutdown; int /*<<< orphan*/  lock; int /*<<< orphan*/  ep0_wq; int /*<<< orphan*/ * bep; int /*<<< orphan*/  wedgemap; TYPE_1__ gadget; } ;

/* Variables and functions */
 int BCM63XX_NUM_EP ; 
 int EINVAL ; 
 scalar_t__ EP0_REQUEUE ; 
 scalar_t__ EP0_SHUTDOWN ; 
 int /*<<< orphan*/  USB_SPEED_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (struct bcm63xx_udc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bcm63xx_udc*) ; 
 int /*<<< orphan*/  FUNC2 (struct bcm63xx_udc*) ; 
 int /*<<< orphan*/  FUNC3 (struct bcm63xx_udc*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bcm63xx_udc*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bcm63xx_udc*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct bcm63xx_udc* FUNC8 (struct usb_gadget*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC13(struct usb_gadget *gadget, int is_on)
{
	struct bcm63xx_udc *udc = FUNC8(gadget);
	unsigned long flags;
	int i, rc = -EINVAL;

	FUNC11(&udc->lock, flags);
	if (is_on && udc->ep0state == EP0_SHUTDOWN) {
		udc->gadget.speed = USB_SPEED_UNKNOWN;
		udc->ep0state = EP0_REQUEUE;
		FUNC2(udc);
		FUNC1(udc);
		FUNC0(udc);

		FUNC6(&udc->wedgemap, BCM63XX_NUM_EP);
		for (i = 0; i < BCM63XX_NUM_EP; i++)
			FUNC5(udc, &udc->bep[i], false);

		FUNC4(udc, true);
		FUNC3(FUNC8(gadget), true);
		rc = 0;
	} else if (!is_on && udc->ep0state != EP0_SHUTDOWN) {
		FUNC3(FUNC8(gadget), false);

		udc->ep0_req_shutdown = 1;
		FUNC12(&udc->lock, flags);

		while (1) {
			FUNC10(&udc->ep0_wq);
			if (udc->ep0state == EP0_SHUTDOWN)
				break;
			FUNC9(50);
		}
		FUNC4(udc, false);
		FUNC7(&udc->ep0_wq);
		return 0;
	}

	FUNC12(&udc->lock, flags);
	return rc;
}