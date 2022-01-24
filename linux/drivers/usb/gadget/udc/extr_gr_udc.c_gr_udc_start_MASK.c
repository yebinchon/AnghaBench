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
struct TYPE_2__ {int /*<<< orphan*/ * bus; } ;
struct usb_gadget_driver {TYPE_1__ driver; } ;
struct usb_gadget {int dummy; } ;
struct gr_udc {int /*<<< orphan*/  lock; struct usb_gadget_driver* driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gr_udc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct gr_udc* FUNC3 (struct usb_gadget*) ; 

__attribute__((used)) static int FUNC4(struct usb_gadget *gadget,
			struct usb_gadget_driver *driver)
{
	struct gr_udc *dev = FUNC3(gadget);

	FUNC1(&dev->lock);

	/* Hook up the driver */
	driver->driver.bus = NULL;
	dev->driver = driver;

	/* Get ready for host detection */
	FUNC0(dev);

	FUNC2(&dev->lock);

	return 0;
}