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
struct TYPE_2__ {scalar_t__ name; } ;
struct usb_serial_driver {scalar_t__ description; int /*<<< orphan*/  driver_list; int /*<<< orphan*/  usb_driver; TYPE_1__ driver; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*,scalar_t__) ; 
 int /*<<< orphan*/  table_lock ; 
 scalar_t__ FUNC7 () ; 
 int FUNC8 (struct usb_serial_driver*) ; 
 int /*<<< orphan*/  usb_serial_driver_list ; 
 int /*<<< orphan*/  FUNC9 (struct usb_serial_driver*) ; 

__attribute__((used)) static int FUNC10(struct usb_serial_driver *driver)
{
	int retval;

	if (FUNC7())
		return -ENODEV;

	if (!driver->description)
		driver->description = driver->driver.name;
	if (!driver->usb_driver) {
		FUNC0(1, "Serial driver %s has no usb_driver\n",
				driver->description);
		return -EINVAL;
	}

	FUNC9(driver);

	/* Add this device to our list of devices */
	FUNC3(&table_lock);
	FUNC1(&driver->driver_list, &usb_serial_driver_list);

	retval = FUNC8(driver);
	if (retval) {
		FUNC5("problem %d when registering driver %s\n", retval, driver->description);
		FUNC2(&driver->driver_list);
	} else {
		FUNC6("USB Serial support registered for %s\n", driver->description);
	}
	FUNC4(&table_lock);
	return retval;
}