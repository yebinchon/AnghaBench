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
struct TYPE_4__ {TYPE_1__* parent; } ;
struct usb_port {int portnum; TYPE_2__ dev; } ;
struct usb_device {int /*<<< orphan*/  portnum; int /*<<< orphan*/  parent; int /*<<< orphan*/  bus; int /*<<< orphan*/  dev; } ;
struct acpi_device {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_handle ;
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 struct acpi_device* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct acpi_device**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct usb_device* FUNC3 (int /*<<< orphan*/ ) ; 
 struct acpi_device* FUNC4 (struct acpi_device*,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct acpi_device *
FUNC7(struct usb_port *port_dev)
{
	struct usb_device *udev;
	struct acpi_device *adev;
	acpi_handle *parent_handle;
	int port1;

	/* Get the struct usb_device point of port's hub */
	udev = FUNC3(port_dev->dev.parent->parent);

	/*
	 * The root hub ports' parent is the root hub. The non-root-hub
	 * ports' parent is the parent hub port which the hub is
	 * connected to.
	 */
	if (!udev->parent) {
		adev = FUNC0(&udev->dev);
		port1 = FUNC6(FUNC2(udev->bus),
						     port_dev->portnum);
	} else {
		parent_handle = FUNC5(udev->parent,
							     udev->portnum);
		if (!parent_handle)
			return NULL;

		FUNC1(parent_handle, &adev);
		port1 = port_dev->portnum;
	}

	return FUNC4(adev, port1);
}