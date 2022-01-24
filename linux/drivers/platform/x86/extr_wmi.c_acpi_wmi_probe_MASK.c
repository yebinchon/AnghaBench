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
struct device {int dummy; } ;
struct acpi_device {int /*<<< orphan*/  handle; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_ADR_SPACE_EC ; 
 struct acpi_device* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ACPI_DEVICE_NOTIFY ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 scalar_t__ FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  acpi_wmi_ec_space_handler ; 
 int /*<<< orphan*/  acpi_wmi_notify_handler ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,struct device*) ; 
 struct device* FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct device*,struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  wmi_bus_class ; 

__attribute__((used)) static int FUNC16(struct platform_device *device)
{
	struct acpi_device *acpi_device;
	struct device *wmi_bus_dev;
	acpi_status status;
	int error;

	acpi_device = FUNC0(&device->dev);
	if (!acpi_device) {
		FUNC9(&device->dev, "ACPI companion is missing\n");
		return -ENODEV;
	}

	status = FUNC5(acpi_device->handle,
						    ACPI_ADR_SPACE_EC,
						    &acpi_wmi_ec_space_handler,
						    NULL, NULL);
	if (FUNC1(status)) {
		FUNC9(&device->dev, "Error installing EC region handler\n");
		return -ENODEV;
	}

	status = FUNC6(acpi_device->handle,
					     ACPI_DEVICE_NOTIFY,
					     acpi_wmi_notify_handler,
					     NULL);
	if (FUNC1(status)) {
		FUNC9(&device->dev, "Error installing notify handler\n");
		error = -ENODEV;
		goto err_remove_ec_handler;
	}

	wmi_bus_dev = FUNC12(&wmi_bus_class, &device->dev, FUNC3(0, 0),
				    NULL, "wmi_bus-%s", FUNC10(&device->dev));
	if (FUNC2(wmi_bus_dev)) {
		error = FUNC4(wmi_bus_dev);
		goto err_remove_notify_handler;
	}
	FUNC11(&device->dev, wmi_bus_dev);

	error = FUNC14(wmi_bus_dev, acpi_device);
	if (error) {
		FUNC15("Failed to parse WDG method\n");
		goto err_remove_busdev;
	}

	return 0;

err_remove_busdev:
	FUNC13(&wmi_bus_class, FUNC3(0, 0));

err_remove_notify_handler:
	FUNC8(acpi_device->handle, ACPI_DEVICE_NOTIFY,
				   acpi_wmi_notify_handler);

err_remove_ec_handler:
	FUNC7(acpi_device->handle,
					  ACPI_ADR_SPACE_EC,
					  &acpi_wmi_ec_space_handler);

	return error;
}