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
struct input_dev {int /*<<< orphan*/  dev; } ;
struct cmpc_accel {int /*<<< orphan*/  g_select; int /*<<< orphan*/  sensitivity; int /*<<< orphan*/  inputdev_state; } ;
struct acpi_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMPC_ACCEL_DEV_STATE_CLOSED ; 
 int /*<<< orphan*/  CMPC_ACCEL_G_SELECT_DEFAULT ; 
 int /*<<< orphan*/  CMPC_ACCEL_SENSITIVITY_DEFAULT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  cmpc_accel_g_select_attr_v4 ; 
 int /*<<< orphan*/  cmpc_accel_idev_init_v4 ; 
 int /*<<< orphan*/  cmpc_accel_sensitivity_attr_v4 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct acpi_device*,char*,int /*<<< orphan*/ ) ; 
 struct input_dev* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct cmpc_accel*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct cmpc_accel*) ; 
 struct cmpc_accel* FUNC8 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct acpi_device *acpi)
{
	int error;
	struct input_dev *inputdev;
	struct cmpc_accel *accel;

	accel = FUNC8(sizeof(*accel), GFP_KERNEL);
	if (!accel)
		return -ENOMEM;

	accel->inputdev_state = CMPC_ACCEL_DEV_STATE_CLOSED;

	accel->sensitivity = CMPC_ACCEL_SENSITIVITY_DEFAULT;
	FUNC1(acpi->handle, accel->sensitivity);

	error = FUNC5(&acpi->dev, &cmpc_accel_sensitivity_attr_v4);
	if (error)
		goto failed_sensitivity;

	accel->g_select = CMPC_ACCEL_G_SELECT_DEFAULT;
	FUNC0(acpi->handle, accel->g_select);

	error = FUNC5(&acpi->dev, &cmpc_accel_g_select_attr_v4);
	if (error)
		goto failed_g_select;

	error = FUNC2(acpi, "cmpc_accel_v4",
					    cmpc_accel_idev_init_v4);
	if (error)
		goto failed_input;

	inputdev = FUNC3(&acpi->dev);
	FUNC4(&inputdev->dev, accel);

	return 0;

failed_input:
	FUNC6(&acpi->dev, &cmpc_accel_g_select_attr_v4);
failed_g_select:
	FUNC6(&acpi->dev, &cmpc_accel_sensitivity_attr_v4);
failed_sensitivity:
	FUNC7(accel);
	return error;
}