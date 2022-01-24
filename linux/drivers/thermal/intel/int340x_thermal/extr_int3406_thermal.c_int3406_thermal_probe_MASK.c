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
struct int3406_thermal_data {int /*<<< orphan*/  br; int /*<<< orphan*/  cooling_dev; struct backlight_device* raw_bd; scalar_t__ handle; } ;
struct backlight_device {int dummy; } ;
struct acpi_device {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 struct acpi_device* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ACPI_DEVICE_NOTIFY ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  BACKLIGHT_RAW ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_device*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct int3406_thermal_data*) ; 
 int FUNC5 (struct acpi_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct backlight_device* FUNC6 (int /*<<< orphan*/ ) ; 
 struct int3406_thermal_data* FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  int3406_notify ; 
 int /*<<< orphan*/  FUNC8 (struct int3406_thermal_data*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct int3406_thermal_data*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct int3406_thermal_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  video_cooling_ops ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct acpi_device *adev = FUNC0(&pdev->dev);
	struct int3406_thermal_data *d;
	struct backlight_device *bd;
	int ret;

	if (!FUNC1(&pdev->dev))
		return -ENODEV;

	d = FUNC7(&pdev->dev, sizeof(*d), GFP_KERNEL);
	if (!d)
		return -ENOMEM;
	d->handle = FUNC1(&pdev->dev);

	bd = FUNC6(BACKLIGHT_RAW);
	if (!bd)
		return -ENODEV;
	d->raw_bd = bd;

	ret = FUNC5(FUNC0(&pdev->dev), &d->br, NULL);
	if (ret)
		return ret;

	FUNC8(d);

	d->cooling_dev = FUNC11(FUNC3(adev),
							 d, &video_cooling_ops);
	if (FUNC2(d->cooling_dev))
		goto err;

	ret = FUNC4(adev->handle, ACPI_DEVICE_NOTIFY,
					  int3406_notify, d);
	if (ret)
		goto err_cdev;

	FUNC10(pdev, d);

	return 0;

err_cdev:
	FUNC12(d->cooling_dev);
err:
	FUNC9(d->br);
	return -ENODEV;
}