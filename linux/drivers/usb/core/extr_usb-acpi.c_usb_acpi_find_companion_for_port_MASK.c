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
struct usb_port {int location; int /*<<< orphan*/  connect_type; } ;
struct acpi_pld_info {int group_token; int group_position; } ;
struct acpi_device {int /*<<< orphan*/ * handle; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_pld_info*) ; 
 int USB_ACPI_LOCATION_VALID ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct acpi_pld_info**) ; 
 struct acpi_device* FUNC3 (struct usb_port*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct acpi_pld_info*) ; 

__attribute__((used)) static struct acpi_device *
FUNC5(struct usb_port *port_dev)
{
	struct acpi_device *adev;
	struct acpi_pld_info *pld;
	acpi_handle *handle;
	acpi_status status;

	adev = FUNC3(port_dev);
	if (!adev)
		return NULL;

	handle = adev->handle;
	status = FUNC2(handle, &pld);
	if (!FUNC0(status) && pld) {
		port_dev->location = USB_ACPI_LOCATION_VALID
			| pld->group_token << 8 | pld->group_position;
		port_dev->connect_type = FUNC4(handle, pld);
		FUNC1(pld);
	}

	return adev;
}