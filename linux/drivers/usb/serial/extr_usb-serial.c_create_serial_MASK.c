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
struct usb_serial_driver {int dummy; } ;
struct usb_serial {scalar_t__ minors_reserved; int /*<<< orphan*/  disc_mutex; int /*<<< orphan*/  kref; int /*<<< orphan*/  interface; struct usb_serial_driver* type; int /*<<< orphan*/  dev; } ;
struct usb_interface {int dummy; } ;
struct usb_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct usb_serial* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_interface*) ; 

__attribute__((used)) static struct usb_serial *FUNC5(struct usb_device *dev,
					struct usb_interface *interface,
					struct usb_serial_driver *driver)
{
	struct usb_serial *serial;

	serial = FUNC1(sizeof(*serial), GFP_KERNEL);
	if (!serial)
		return NULL;
	serial->dev = FUNC3(dev);
	serial->type = driver;
	serial->interface = FUNC4(interface);
	FUNC0(&serial->kref);
	FUNC2(&serial->disc_mutex);
	serial->minors_reserved = 0;

	return serial;
}