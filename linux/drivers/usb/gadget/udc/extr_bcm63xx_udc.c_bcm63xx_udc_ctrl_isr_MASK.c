#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_4__ {scalar_t__ speed; } ;
struct bcm63xx_udc {int ep0_req_reset; int ep0_req_set_cfg; int ep0_req_set_iface; TYPE_2__* driver; TYPE_1__ gadget; int /*<<< orphan*/  lock; int /*<<< orphan*/  ep0_wq; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_5__ {int /*<<< orphan*/  (* disconnect ) (TYPE_1__*) ;} ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  USBD_EVENTS_REG ; 
 int USBD_EVENTS_USB_LINK_MASK ; 
 int /*<<< orphan*/  USBD_EVENT_IRQ_MASK_REG ; 
 int /*<<< orphan*/  USBD_EVENT_IRQ_SETCFG ; 
 int /*<<< orphan*/  USBD_EVENT_IRQ_SETINTF ; 
 int /*<<< orphan*/  USBD_EVENT_IRQ_SETUP ; 
 int /*<<< orphan*/  USBD_EVENT_IRQ_STATUS_REG ; 
 int /*<<< orphan*/  USBD_EVENT_IRQ_USB_LINK ; 
 int /*<<< orphan*/  USBD_EVENT_IRQ_USB_RESET ; 
 scalar_t__ USB_SPEED_UNKNOWN ; 
 int /*<<< orphan*/  FUNC1 (struct bcm63xx_udc*) ; 
 int /*<<< orphan*/  FUNC2 (struct bcm63xx_udc*) ; 
 int /*<<< orphan*/  FUNC3 (struct bcm63xx_udc*) ; 
 int /*<<< orphan*/  FUNC4 (struct bcm63xx_udc*) ; 
 scalar_t__ FUNC5 (struct bcm63xx_udc*) ; 
 int /*<<< orphan*/  FUNC6 (struct bcm63xx_udc*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,TYPE_2__*) ; 
 int FUNC13 (struct bcm63xx_udc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct bcm63xx_udc*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC15(int irq, void *dev_id)
{
	struct bcm63xx_udc *udc = dev_id;
	u32 stat;
	bool disconnected = false, bus_reset = false;

	stat = FUNC13(udc, USBD_EVENT_IRQ_STATUS_REG) &
	       FUNC13(udc, USBD_EVENT_IRQ_MASK_REG);

	FUNC14(udc, stat, USBD_EVENT_IRQ_STATUS_REG);

	FUNC9(&udc->lock);
	if (stat & FUNC0(USBD_EVENT_IRQ_USB_LINK)) {
		/* VBUS toggled */

		if (!(FUNC13(udc, USBD_EVENTS_REG) &
		      USBD_EVENTS_USB_LINK_MASK) &&
		      udc->gadget.speed != USB_SPEED_UNKNOWN)
			FUNC7(udc->dev, "link down\n");

		udc->gadget.speed = USB_SPEED_UNKNOWN;
		disconnected = true;
	}
	if (stat & FUNC0(USBD_EVENT_IRQ_USB_RESET)) {
		FUNC3(udc);
		FUNC2(udc);
		FUNC1(udc);

		FUNC6(udc, false);

		udc->ep0_req_reset = 1;
		FUNC8(&udc->ep0_wq);
		bus_reset = true;
	}
	if (stat & FUNC0(USBD_EVENT_IRQ_SETUP)) {
		if (FUNC5(udc)) {
			FUNC3(udc);
			FUNC1(udc);
		}
		FUNC6(udc, true);
	}
	if (stat & FUNC0(USBD_EVENT_IRQ_SETCFG)) {
		FUNC4(udc);
		udc->ep0_req_set_cfg = 1;
		FUNC8(&udc->ep0_wq);
	}
	if (stat & FUNC0(USBD_EVENT_IRQ_SETINTF)) {
		FUNC4(udc);
		udc->ep0_req_set_iface = 1;
		FUNC8(&udc->ep0_wq);
	}
	FUNC10(&udc->lock);

	if (disconnected && udc->driver)
		udc->driver->disconnect(&udc->gadget);
	else if (bus_reset && udc->driver)
		FUNC12(&udc->gadget, udc->driver);

	return IRQ_HANDLED;
}