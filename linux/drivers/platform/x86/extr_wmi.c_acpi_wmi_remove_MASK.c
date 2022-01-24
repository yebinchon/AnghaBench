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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct acpi_device {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_ADR_SPACE_EC ; 
 struct acpi_device* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ACPI_DEVICE_NOTIFY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  acpi_wmi_ec_space_handler ; 
 int /*<<< orphan*/  acpi_wmi_notify_handler ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wmi_bus_class ; 
 int /*<<< orphan*/  FUNC5 (struct acpi_device*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *device)
{
	struct acpi_device *acpi_device = FUNC0(&device->dev);

	FUNC3(acpi_device->handle, ACPI_DEVICE_NOTIFY,
				   acpi_wmi_notify_handler);
	FUNC2(acpi_device->handle,
				ACPI_ADR_SPACE_EC, &acpi_wmi_ec_space_handler);
	FUNC5(acpi_device);
	FUNC4(&wmi_bus_class, FUNC1(0, 0));

	return 0;
}