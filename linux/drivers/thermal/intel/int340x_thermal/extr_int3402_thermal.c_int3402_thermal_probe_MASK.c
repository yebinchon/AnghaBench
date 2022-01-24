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
struct int3402_thermal_data {int /*<<< orphan*/  handle; int /*<<< orphan*/  int340x_zone; } ;
struct acpi_device {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 struct acpi_device* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ACPI_DEVICE_NOTIFY ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct int3402_thermal_data*) ; 
 struct int3402_thermal_data* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  int3402_notify ; 
 int /*<<< orphan*/  FUNC6 (struct acpi_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct int3402_thermal_data*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct acpi_device *adev = FUNC0(&pdev->dev);
	struct int3402_thermal_data *d;
	int ret;

	if (!FUNC3(adev->handle, "_TMP"))
		return -ENODEV;

	d = FUNC5(&pdev->dev, sizeof(*d), GFP_KERNEL);
	if (!d)
		return -ENOMEM;

	d->int340x_zone = FUNC6(adev, NULL);
	if (FUNC1(d->int340x_zone))
		return FUNC2(d->int340x_zone);

	ret = FUNC4(adev->handle,
					  ACPI_DEVICE_NOTIFY,
					  int3402_notify,
					  d);
	if (ret) {
		FUNC7(d->int340x_zone);
		return ret;
	}

	d->handle = adev->handle;
	FUNC8(pdev, d);

	return 0;
}