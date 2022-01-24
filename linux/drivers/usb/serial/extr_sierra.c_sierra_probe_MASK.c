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
typedef  int /*<<< orphan*/  u8 ;
struct usb_serial {struct usb_device* dev; TYPE_1__* interface; } ;
struct usb_device_id {scalar_t__ driver_info; } ;
struct usb_device {int /*<<< orphan*/  dev; } ;
struct sierra_iface_info {int dummy; } ;
struct TYPE_2__ {int num_altsetting; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct sierra_iface_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_serial*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct usb_serial *serial,
			const struct usb_device_id *id)
{
	int result = 0;
	struct usb_device *udev;
	u8 ifnum;

	udev = serial->dev;
	ifnum = FUNC2(serial);

	/*
	 * If this interface supports more than 1 alternate
	 * select the 2nd one
	 */
	if (serial->interface->num_altsetting == 2) {
		FUNC0(&udev->dev, "Selecting alt setting for interface %d\n",
			ifnum);
		/* We know the alternate setting is 1 for the MC8785 */
		FUNC3(udev, ifnum, 1);
	}

	if (FUNC1(ifnum,
				(struct sierra_iface_info *)id->driver_info)) {
		FUNC0(&serial->dev->dev,
			"Ignoring blacklisted interface #%d\n", ifnum);
		return -ENODEV;
	}

	return result;
}