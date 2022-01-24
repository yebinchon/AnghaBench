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
struct topstar_laptop {struct acpi_device* device; } ;
struct acpi_device {struct topstar_laptop* driver_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 char* TOPSTAR_LAPTOP_CLASS ; 
 int /*<<< orphan*/  FUNC0 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct topstar_laptop*) ; 
 struct topstar_laptop* FUNC4 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ led_workaround ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct topstar_laptop*) ; 
 int FUNC7 (struct topstar_laptop*) ; 
 int /*<<< orphan*/  topstar_dmi_ids ; 
 int /*<<< orphan*/  FUNC8 (struct topstar_laptop*) ; 
 int FUNC9 (struct topstar_laptop*) ; 
 int FUNC10 (struct topstar_laptop*) ; 
 int /*<<< orphan*/  FUNC11 (struct topstar_laptop*) ; 
 int FUNC12 (struct topstar_laptop*) ; 

__attribute__((used)) static int FUNC13(struct acpi_device *device)
{
	struct topstar_laptop *topstar;
	int err;

	FUNC2(topstar_dmi_ids);

	topstar = FUNC4(sizeof(struct topstar_laptop), GFP_KERNEL);
	if (!topstar)
		return -ENOMEM;

	FUNC5(FUNC1(device), "Topstar TPSACPI");
	FUNC5(FUNC0(device), TOPSTAR_LAPTOP_CLASS);
	device->driver_data = topstar;
	topstar->device = device;

	err = FUNC7(topstar);
	if (err)
		goto err_free;

	err = FUNC12(topstar);
	if (err)
		goto err_acpi_exit;

	err = FUNC9(topstar);
	if (err)
		goto err_platform_exit;

	if (led_workaround) {
		err = FUNC10(topstar);
		if (err)
			goto err_input_exit;
	}

	return 0;

err_input_exit:
	FUNC8(topstar);
err_platform_exit:
	FUNC11(topstar);
err_acpi_exit:
	FUNC6(topstar);
err_free:
	FUNC3(topstar);
	return err;
}