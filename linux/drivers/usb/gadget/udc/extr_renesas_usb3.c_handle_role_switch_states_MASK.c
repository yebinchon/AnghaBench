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
struct renesas_usb3 {struct device* host_dev; } ;
struct device {int dummy; } ;
typedef  enum usb_role { ____Placeholder_usb_role } usb_role ;

/* Variables and functions */
 int USB_ROLE_DEVICE ; 
 int USB_ROLE_HOST ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 struct renesas_usb3* FUNC1 (struct device*) ; 
 scalar_t__ FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct renesas_usb3*,int) ; 

__attribute__((used)) static void FUNC6(struct device *dev,
					    enum usb_role role)
{
	struct renesas_usb3 *usb3 = FUNC1(dev);
	struct device *host = usb3->host_dev;
	enum usb_role cur_role = FUNC4(dev);

	if (cur_role == USB_ROLE_HOST && role == USB_ROLE_DEVICE) {
		FUNC3(host);
		FUNC5(usb3, false);
	} else if (cur_role == USB_ROLE_DEVICE && role == USB_ROLE_HOST) {
		/* Must set the mode before device_attach of the host */
		FUNC5(usb3, true);
		/* This device_attach() might sleep */
		if (FUNC2(host) < 0)
			FUNC0(dev, "device_attach(host) failed\n");
	}
}