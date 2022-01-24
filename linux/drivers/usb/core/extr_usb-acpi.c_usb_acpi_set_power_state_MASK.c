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
struct usb_port {int /*<<< orphan*/  dev; } ;
struct usb_hub {struct usb_port** ports; } ;
struct usb_device {int dummy; } ;
typedef  scalar_t__ acpi_handle ;

/* Variables and functions */
 unsigned char ACPI_STATE_D0 ; 
 unsigned char ACPI_STATE_D3_COLD ; 
 int EINVAL ; 
 int ENODEV ; 
 int FUNC0 (scalar_t__,unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC2 (struct usb_device*,int) ; 
 struct usb_hub* FUNC3 (struct usb_device*) ; 

int FUNC4(struct usb_device *hdev, int index, bool enable)
{
	struct usb_hub *hub = FUNC3(hdev);
	struct usb_port *port_dev;
	acpi_handle port_handle;
	unsigned char state;
	int port1 = index + 1;
	int error = -EINVAL;

	if (!hub)
		return -ENODEV;
	port_dev = hub->ports[port1 - 1];

	port_handle = (acpi_handle) FUNC2(hdev, port1);
	if (!port_handle)
		return error;

	if (enable)
		state = ACPI_STATE_D0;
	else
		state = ACPI_STATE_D3_COLD;

	error = FUNC0(port_handle, state);
	if (!error)
		FUNC1(&port_dev->dev, "acpi: power was set to %d\n", enable);
	else
		FUNC1(&port_dev->dev, "acpi: power failed to be set\n");

	return error;
}