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
struct fujitsu_bl {int max_brightness; int brightness_level; } ;
struct acpi_device {int /*<<< orphan*/  handle; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENODEV ; 
 struct fujitsu_bl* FUNC1 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int use_alt_lcd_levels ; 

__attribute__((used)) static int FUNC6(struct acpi_device *device, int level)
{
	struct fujitsu_bl *priv = FUNC1(device);
	acpi_status status;
	char *method;

	switch (use_alt_lcd_levels) {
	case -1:
		if (FUNC5(device->handle, "SBL2"))
			method = "SBL2";
		else
			method = "SBLL";
		break;
	case 1:
		method = "SBL2";
		break;
	default:
		method = "SBLL";
		break;
	}

	FUNC3(device->handle, "set lcd level via %s [%d]\n", method,
			  level);

	if (level < 0 || level >= priv->max_brightness)
		return -EINVAL;

	status = FUNC2(device->handle, method, level);
	if (FUNC0(status)) {
		FUNC4(device->handle, "Failed to evaluate %s\n",
				method);
		return -ENODEV;
	}

	priv->brightness_level = level;

	return 0;
}