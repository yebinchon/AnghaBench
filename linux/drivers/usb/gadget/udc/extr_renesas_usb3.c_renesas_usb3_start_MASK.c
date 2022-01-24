#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct usb_gadget_driver {scalar_t__ max_speed; int /*<<< orphan*/  setup; } ;
struct usb_gadget {int dummy; } ;
struct renesas_usb3 {scalar_t__ phy; struct usb_gadget_driver* driver; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ USB_SPEED_FULL ; 
 struct renesas_usb3* FUNC0 (struct usb_gadget*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct renesas_usb3*) ; 
 int /*<<< orphan*/  FUNC4 (struct renesas_usb3*) ; 

__attribute__((used)) static int FUNC5(struct usb_gadget *gadget,
			      struct usb_gadget_driver *driver)
{
	struct renesas_usb3 *usb3;

	if (!driver || driver->max_speed < USB_SPEED_FULL ||
	    !driver->setup)
		return -EINVAL;

	usb3 = FUNC0(gadget);

	/* hook up the driver */
	usb3->driver = driver;

	if (usb3->phy)
		FUNC1(usb3->phy);

	FUNC2(FUNC4(usb3));

	FUNC3(usb3);

	return 0;
}