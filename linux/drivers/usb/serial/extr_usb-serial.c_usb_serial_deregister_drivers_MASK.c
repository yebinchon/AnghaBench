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
struct usb_serial_driver {struct usb_driver* usb_driver; } ;
struct usb_driver {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usb_driver*) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_driver*) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_serial_driver* const) ; 

void FUNC3(struct usb_serial_driver *const serial_drivers[])
{
	struct usb_driver *udriver = (*serial_drivers)->usb_driver;

	for (; *serial_drivers; ++serial_drivers)
		FUNC2(*serial_drivers);
	FUNC1(udriver);
	FUNC0(udriver);
}