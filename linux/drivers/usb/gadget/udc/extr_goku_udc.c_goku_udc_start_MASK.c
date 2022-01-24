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
struct goku_udc {struct usb_gadget_driver* driver; } ;

/* Variables and functions */
 struct goku_udc* FUNC0 (struct usb_gadget*) ; 
 int /*<<< orphan*/  FUNC1 (struct goku_udc*) ; 

__attribute__((used)) static int FUNC2(struct usb_gadget *g,
		struct usb_gadget_driver *driver)
{
	struct goku_udc	*dev = FUNC0(g);

	/* hook up the driver */
	driver->driver.bus = NULL;
	dev->driver = driver;

	/*
	 * then enable host detection and ep0; and we're ready
	 * for set_configuration as well as eventual disconnect.
	 */
	FUNC1(dev);

	return 0;
}