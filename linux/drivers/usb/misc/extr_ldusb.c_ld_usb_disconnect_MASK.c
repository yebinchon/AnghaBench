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
struct usb_interface {int minor; int /*<<< orphan*/  dev; } ;
struct ld_usb {int disconnected; int /*<<< orphan*/  mutex; int /*<<< orphan*/  write_wait; int /*<<< orphan*/  read_wait; int /*<<< orphan*/  open_count; int /*<<< orphan*/  interrupt_out_urb; int /*<<< orphan*/  interrupt_in_urb; } ;

/* Variables and functions */
 scalar_t__ USB_LD_MINOR_BASE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  ld_usb_class ; 
 int /*<<< orphan*/  FUNC1 (struct ld_usb*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 struct ld_usb* FUNC5 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct usb_interface *intf)
{
	struct ld_usb *dev;
	int minor;

	dev = FUNC5(intf);
	FUNC7(intf, NULL);

	minor = intf->minor;

	/* give back our minor */
	FUNC4(intf, &ld_usb_class);

	FUNC6(dev->interrupt_in_urb);
	FUNC6(dev->interrupt_out_urb);

	FUNC2(&dev->mutex);

	/* if the device is not opened, then we clean up right now */
	if (!dev->open_count) {
		FUNC3(&dev->mutex);
		FUNC1(dev);
	} else {
		dev->disconnected = 1;
		/* wake up pollers */
		FUNC8(&dev->read_wait);
		FUNC8(&dev->write_wait);
		FUNC3(&dev->mutex);
	}

	FUNC0(&intf->dev, "LD USB Device #%d now disconnected\n",
		 (minor - USB_LD_MINOR_BASE));
}