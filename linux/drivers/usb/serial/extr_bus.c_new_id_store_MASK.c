#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct usb_serial_driver {TYPE_2__* usb_driver; int /*<<< orphan*/  id_table; int /*<<< orphan*/  dynids; } ;
struct device_driver {int dummy; } ;
typedef  scalar_t__ ssize_t ;
struct TYPE_3__ {struct device_driver driver; } ;
struct TYPE_4__ {TYPE_1__ drvwrap; int /*<<< orphan*/  id_table; int /*<<< orphan*/  dynids; } ;

/* Variables and functions */
 struct usb_serial_driver* FUNC0 (struct device_driver*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct device_driver*,char const*,size_t) ; 

__attribute__((used)) static ssize_t FUNC2(struct device_driver *driver,
			    const char *buf, size_t count)
{
	struct usb_serial_driver *usb_drv = FUNC0(driver);
	ssize_t retval = FUNC1(&usb_drv->dynids, usb_drv->id_table,
					 driver, buf, count);

	if (retval >= 0 && usb_drv->usb_driver != NULL)
		retval = FUNC1(&usb_drv->usb_driver->dynids,
					  usb_drv->usb_driver->id_table,
					  &usb_drv->usb_driver->drvwrap.driver,
					  buf, count);
	return retval;
}