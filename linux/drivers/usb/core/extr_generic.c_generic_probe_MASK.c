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
struct usb_device {scalar_t__ authorized; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC1 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_device*) ; 
 int FUNC3 (struct usb_device*,int) ; 

__attribute__((used)) static int FUNC4(struct usb_device *udev)
{
	int err, c;

	/* Choose and set the configuration.  This registers the interfaces
	 * with the driver core and lets interface drivers bind to them.
	 */
	if (udev->authorized == 0)
		FUNC0(&udev->dev, "Device is not authorized for usage\n");
	else {
		c = FUNC1(udev);
		if (c >= 0) {
			err = FUNC3(udev, c);
			if (err && err != -ENODEV) {
				FUNC0(&udev->dev, "can't set config #%d, error %d\n",
					c, err);
				/* This need not be fatal.  The user can try to
				 * set other configurations. */
			}
		}
	}
	/* USB device state == configured ... usable */
	FUNC2(udev);

	return 0;
}