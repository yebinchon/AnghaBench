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
struct usb_serial_endpoints {int num_interrupt_in; } ;
struct usb_serial {TYPE_1__* interface; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int ENODEV ; 
 unsigned long PL2303_QUIRK_ENDPOINT_HACK ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int FUNC1 (struct usb_serial*,struct usb_serial_endpoints*) ; 
 scalar_t__ FUNC2 (struct usb_serial*) ; 

__attribute__((used)) static int FUNC3(struct usb_serial *serial,
					struct usb_serial_endpoints *epds)
{
	unsigned long quirks = (unsigned long)FUNC2(serial);
	struct device *dev = &serial->interface->dev;
	int ret;

	if (quirks & PL2303_QUIRK_ENDPOINT_HACK) {
		ret = FUNC1(serial, epds);
		if (ret)
			return ret;
	}

	if (epds->num_interrupt_in < 1) {
		FUNC0(dev, "required interrupt-in endpoint missing\n");
		return -ENODEV;
	}

	return 1;
}