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
struct TYPE_5__ {int /*<<< orphan*/ * bus; } ;
struct usb_gadget_driver {scalar_t__ max_speed; TYPE_1__ driver; int /*<<< orphan*/  setup; } ;
struct usb_gadget {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  of_node; } ;
struct TYPE_7__ {TYPE_2__ dev; } ;
struct bcm63xx_udc {int /*<<< orphan*/  lock; TYPE_4__* dev; TYPE_3__ gadget; struct usb_gadget_driver* driver; } ;
struct TYPE_8__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ USB_SPEED_HIGH ; 
 int /*<<< orphan*/  FUNC0 (struct bcm63xx_udc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bcm63xx_udc*) ; 
 int /*<<< orphan*/  FUNC2 (struct bcm63xx_udc*) ; 
 int /*<<< orphan*/  FUNC3 (struct bcm63xx_udc*) ; 
 int /*<<< orphan*/  FUNC4 (struct bcm63xx_udc*,int) ; 
 struct bcm63xx_udc* FUNC5 (struct usb_gadget*) ; 
 int /*<<< orphan*/  FUNC6 (struct bcm63xx_udc*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC9(struct usb_gadget *gadget,
		struct usb_gadget_driver *driver)
{
	struct bcm63xx_udc *udc = FUNC5(gadget);
	unsigned long flags;

	if (!driver || driver->max_speed < USB_SPEED_HIGH ||
	    !driver->setup)
		return -EINVAL;
	if (!udc)
		return -ENODEV;
	if (udc->driver)
		return -EBUSY;

	FUNC7(&udc->lock, flags);

	FUNC6(udc, true);
	FUNC3(udc);
	FUNC0(udc);
	FUNC1(udc);
	FUNC2(udc);
	FUNC4(udc, true);

	udc->driver = driver;
	driver->driver.bus = NULL;
	udc->gadget.dev.of_node = udc->dev->of_node;

	FUNC8(&udc->lock, flags);

	return 0;
}