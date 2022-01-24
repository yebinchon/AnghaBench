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
struct usb_interface {int dummy; } ;
struct usb_driver {int /*<<< orphan*/  id_table; } ;
struct usb_device_id {int dummy; } ;
struct device_driver {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (struct device_driver*) ; 
 scalar_t__ FUNC2 (struct device*) ; 
 struct usb_driver* FUNC3 (struct device_driver*) ; 
 struct usb_interface* FUNC4 (struct device*) ; 
 struct usb_device_id* FUNC5 (struct usb_interface*,struct usb_driver*) ; 
 struct usb_device_id* FUNC6 (struct usb_interface*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct device *dev, struct device_driver *drv)
{
	/* devices and interfaces are handled separately */
	if (FUNC0(dev)) {

		/* interface drivers never match devices */
		if (!FUNC1(drv))
			return 0;

		/* TODO: Add real matching code */
		return 1;

	} else if (FUNC2(dev)) {
		struct usb_interface *intf;
		struct usb_driver *usb_drv;
		const struct usb_device_id *id;

		/* device drivers never match interfaces */
		if (FUNC1(drv))
			return 0;

		intf = FUNC4(dev);
		usb_drv = FUNC3(drv);

		id = FUNC6(intf, usb_drv->id_table);
		if (id)
			return 1;

		id = FUNC5(intf, usb_drv);
		if (id)
			return 1;
	}

	return 0;
}