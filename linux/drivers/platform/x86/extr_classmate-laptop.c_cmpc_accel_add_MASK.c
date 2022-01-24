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
struct cmpc_accel {int /*<<< orphan*/  sensitivity; } ;
struct acpi_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMPC_ACCEL_SENSITIVITY_DEFAULT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  cmpc_accel_idev_init ; 
 int /*<<< orphan*/  cmpc_accel_sensitivity_attr ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct acpi_device*,char*,int /*<<< orphan*/ ) ; 
 struct input_dev* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct cmpc_accel*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct cmpc_accel*) ; 
 struct cmpc_accel* FUNC7 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct acpi_device *acpi)
{
	int error;
	struct input_dev *inputdev;
	struct cmpc_accel *accel;

	accel = FUNC7(sizeof(*accel), GFP_KERNEL);
	if (!accel)
		return -ENOMEM;

	accel->sensitivity = CMPC_ACCEL_SENSITIVITY_DEFAULT;
	FUNC0(acpi->handle, accel->sensitivity);

	error = FUNC4(&acpi->dev, &cmpc_accel_sensitivity_attr);
	if (error)
		goto failed_file;

	error = FUNC1(acpi, "cmpc_accel",
					    cmpc_accel_idev_init);
	if (error)
		goto failed_input;

	inputdev = FUNC2(&acpi->dev);
	FUNC3(&inputdev->dev, accel);

	return 0;

failed_input:
	FUNC5(&acpi->dev, &cmpc_accel_sensitivity_attr);
failed_file:
	FUNC6(accel);
	return error;
}