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
struct cros_ec_device {int dummy; } ;
struct acpi_device {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_ALL_NOTIFY ; 
 struct acpi_device* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cros_ec_lpc_acpi_notify ; 
 int FUNC2 (struct cros_ec_device*) ; 
 struct cros_ec_device* FUNC3 (struct platform_device*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct cros_ec_device *ec_dev = FUNC3(pdev);
	struct acpi_device *adev;

	adev = FUNC0(&pdev->dev);
	if (adev)
		FUNC1(adev->handle, ACPI_ALL_NOTIFY,
					   cros_ec_lpc_acpi_notify);

	return FUNC2(ec_dev);
}