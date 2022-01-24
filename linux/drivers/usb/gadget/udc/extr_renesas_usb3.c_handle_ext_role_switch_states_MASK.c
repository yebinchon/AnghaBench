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
struct renesas_usb3 {int connection_state; int /*<<< orphan*/  driver; struct device* host_dev; } ;
struct device {int dummy; } ;
typedef  enum usb_role { ____Placeholder_usb_role } usb_role ;

/* Variables and functions */
#define  USB_ROLE_DEVICE 130 
#define  USB_ROLE_HOST 129 
#define  USB_ROLE_NONE 128 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 struct renesas_usb3* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct renesas_usb3*) ; 
 int /*<<< orphan*/  FUNC6 (struct renesas_usb3*) ; 
 int /*<<< orphan*/  FUNC7 (struct renesas_usb3*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct renesas_usb3*,int) ; 

__attribute__((used)) static void FUNC9(struct device *dev,
					    enum usb_role role)
{
	struct renesas_usb3 *usb3 = FUNC1(dev);
	struct device *host = usb3->host_dev;
	enum usb_role cur_role = FUNC4(dev);

	switch (role) {
	case USB_ROLE_NONE:
		usb3->connection_state = USB_ROLE_NONE;
		if (usb3->driver)
			FUNC6(usb3);
		FUNC8(usb3, false);
		break;
	case USB_ROLE_DEVICE:
		if (usb3->connection_state == USB_ROLE_NONE) {
			usb3->connection_state = USB_ROLE_DEVICE;
			FUNC7(usb3, false);
			if (usb3->driver)
				FUNC5(usb3);
		} else if (cur_role == USB_ROLE_HOST)  {
			FUNC3(host);
			FUNC7(usb3, false);
			if (usb3->driver)
				FUNC5(usb3);
		}
		FUNC8(usb3, false);
		break;
	case USB_ROLE_HOST:
		if (usb3->connection_state == USB_ROLE_NONE) {
			if (usb3->driver)
				FUNC6(usb3);

			usb3->connection_state = USB_ROLE_HOST;
			FUNC7(usb3, true);
			FUNC8(usb3, true);
			if (FUNC2(host) < 0)
				FUNC0(dev, "device_attach(host) failed\n");
		} else if (cur_role == USB_ROLE_DEVICE) {
			FUNC6(usb3);
			/* Must set the mode before device_attach of the host */
			FUNC7(usb3, true);
			/* This device_attach() might sleep */
			if (FUNC2(host) < 0)
				FUNC0(dev, "device_attach(host) failed\n");
		}
		break;
	default:
		break;
	}
}