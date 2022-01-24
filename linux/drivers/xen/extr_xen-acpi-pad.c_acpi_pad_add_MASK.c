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
struct acpi_device {int /*<<< orphan*/  handle; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DEVICE_NOTIFY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_PROCESSOR_AGGREGATOR_CLASS ; 
 int /*<<< orphan*/  ACPI_PROCESSOR_AGGREGATOR_DEVICE_NAME ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct acpi_device*) ; 
 int /*<<< orphan*/  acpi_pad_notify ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct acpi_device *device)
{
	acpi_status status;

	FUNC4(FUNC2(device), ACPI_PROCESSOR_AGGREGATOR_DEVICE_NAME);
	FUNC4(FUNC1(device), ACPI_PROCESSOR_AGGREGATOR_CLASS);

	status = FUNC3(device->handle,
		ACPI_DEVICE_NOTIFY, acpi_pad_notify, device);
	if (FUNC0(status))
		return -ENODEV;

	return 0;
}