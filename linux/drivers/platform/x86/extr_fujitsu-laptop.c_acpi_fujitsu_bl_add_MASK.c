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
struct fujitsu_bl {int /*<<< orphan*/  max_brightness; } ;
struct acpi_device {struct fujitsu_bl* driver_data; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_FUJITSU_BL_DEVICE_NAME ; 
 int /*<<< orphan*/  ACPI_FUJITSU_CLASS ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUJITSU_LCD_N_LEVELS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ acpi_backlight_vendor ; 
 int /*<<< orphan*/  FUNC0 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct acpi_device*) ; 
 int FUNC3 (struct acpi_device*) ; 
 scalar_t__ FUNC4 () ; 
 struct fujitsu_bl* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct acpi_device*) ; 
 struct fujitsu_bl* fujitsu_bl ; 
 int /*<<< orphan*/  FUNC7 (struct acpi_device*) ; 
 scalar_t__ FUNC8 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct acpi_device *device)
{
	struct fujitsu_bl *priv;
	int ret;

	if (FUNC4() != acpi_backlight_vendor)
		return -ENODEV;

	priv = FUNC5(&device->dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	fujitsu_bl = priv;
	FUNC10(FUNC2(device), ACPI_FUJITSU_BL_DEVICE_NAME);
	FUNC10(FUNC1(device), ACPI_FUJITSU_CLASS);
	device->driver_data = priv;

	FUNC9("ACPI: %s [%s]\n",
		FUNC2(device), FUNC0(device));

	if (FUNC8(device) <= 0)
		priv->max_brightness = FUJITSU_LCD_N_LEVELS;
	FUNC7(device);

	ret = FUNC3(device);
	if (ret)
		return ret;

	return FUNC6(device);
}