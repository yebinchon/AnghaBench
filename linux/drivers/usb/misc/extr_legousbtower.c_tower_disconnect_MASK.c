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
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct lego_usb_tower {int minor; int disconnected; int /*<<< orphan*/  lock; int /*<<< orphan*/  write_wait; int /*<<< orphan*/  read_wait; int /*<<< orphan*/  open_count; int /*<<< orphan*/  interrupt_out_urb; int /*<<< orphan*/  interrupt_in_urb; } ;

/* Variables and functions */
 scalar_t__ LEGO_USB_TOWER_MINOR_BASE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tower_class ; 
 int /*<<< orphan*/  FUNC3 (struct lego_usb_tower*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 struct lego_usb_tower* FUNC5 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8 (struct usb_interface *interface)
{
	struct lego_usb_tower *dev;
	int minor;

	dev = FUNC5 (interface);

	minor = dev->minor;

	/* give back our minor and prevent further open() */
	FUNC4 (interface, &tower_class);

	/* stop I/O */
	FUNC6(dev->interrupt_in_urb);
	FUNC6(dev->interrupt_out_urb);

	FUNC1(&dev->lock);

	/* if the device is not opened, then we clean up right now */
	if (!dev->open_count) {
		FUNC2(&dev->lock);
		FUNC3 (dev);
	} else {
		dev->disconnected = 1;
		/* wake up pollers */
		FUNC7(&dev->read_wait);
		FUNC7(&dev->write_wait);
		FUNC2(&dev->lock);
	}

	FUNC0(&interface->dev, "LEGO USB Tower #%d now disconnected\n",
		 (minor - LEGO_USB_TOWER_MINOR_BASE));
}