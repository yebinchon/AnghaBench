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
struct TYPE_2__ {int /*<<< orphan*/  enabled; } ;
struct acpi_device {int /*<<< orphan*/  handle; TYPE_1__ status; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_OK ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  METHOD_NAME__PRS ; 
 int FUNC1 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  sony_pic_read_possible_resource ; 
 int /*<<< orphan*/  spic_dev ; 

__attribute__((used)) static int FUNC5(struct acpi_device *device)
{
	int result = 0;
	acpi_status status = AE_OK;

	if (!device)
		return -EINVAL;

	/* get device status */
	/* see acpi_pci_link_get_current acpi_pci_link_get_possible */
	FUNC3("Evaluating _STA\n");
	result = FUNC1(device);
	if (result) {
		FUNC4("Unable to read status\n");
		goto end;
	}

	if (!device->status.enabled)
		FUNC3("Device disabled\n");
	else
		FUNC3("Device enabled\n");

	/*
	 * Query and parse 'method'
	 */
	FUNC3("Evaluating %s\n", METHOD_NAME__PRS);
	status = FUNC2(device->handle, METHOD_NAME__PRS,
			sony_pic_read_possible_resource, &spic_dev);
	if (FUNC0(status)) {
		FUNC4("Failure evaluating %s\n", METHOD_NAME__PRS);
		result = -ENODEV;
	}
end:
	return result;
}