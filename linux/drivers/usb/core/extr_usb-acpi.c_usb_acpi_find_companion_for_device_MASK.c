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
struct usb_port {int dummy; } ;
struct usb_hub {struct usb_port** ports; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct usb_device {int portnum; int /*<<< orphan*/  parent; TYPE_1__ dev; } ;
struct acpi_device {int dummy; } ;

/* Variables and functions */
 struct acpi_device* FUNC0 (int /*<<< orphan*/ ) ; 
 struct acpi_device* FUNC1 (struct acpi_device*,int /*<<< orphan*/ ,int) ; 
 struct acpi_device* FUNC2 (struct usb_port*) ; 
 struct usb_hub* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct acpi_device *
FUNC4(struct usb_device *udev)
{
	struct acpi_device *adev;
	struct usb_port *port_dev;
	struct usb_hub *hub;

	if (!udev->parent) {
		/* root hub is only child (_ADR=0) under its parent, the HC */
		adev = FUNC0(udev->dev.parent);
		return FUNC1(adev, 0, false);
	}

	hub = FUNC3(udev->parent);
	if (!hub)
		return NULL;

	/*
	 * This is an embedded USB device connected to a port and such
	 * devices share port's ACPI companion.
	 */
	port_dev = hub->ports[udev->portnum - 1];
	return FUNC2(port_dev);
}