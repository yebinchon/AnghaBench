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
struct ipml200_dev {int /*<<< orphan*/ * rf; int /*<<< orphan*/  bd; } ;
struct backlight_properties {int max_brightness; int /*<<< orphan*/  type; } ;
struct acpi_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  BACKLIGHT_PLATFORM ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RFKILL_TYPE_WLAN ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct backlight_properties*) ; 
 int /*<<< orphan*/  cmpc_bl_ops ; 
 int /*<<< orphan*/  cmpc_rfkill_ops ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct ipml200_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct ipml200_dev*) ; 
 struct ipml200_dev* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct backlight_properties*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC7 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct acpi_device *acpi)
{
	int retval;
	struct ipml200_dev *ipml;
	struct backlight_properties props;

	ipml = FUNC5(sizeof(*ipml), GFP_KERNEL);
	if (ipml == NULL)
		return -ENOMEM;

	FUNC6(&props, 0, sizeof(struct backlight_properties));
	props.type = BACKLIGHT_PLATFORM;
	props.max_brightness = 7;
	ipml->bd = FUNC2("cmpc_bl", &acpi->dev,
					     acpi->handle, &cmpc_bl_ops,
					     &props);
	if (FUNC0(ipml->bd)) {
		retval = FUNC1(ipml->bd);
		goto out_bd;
	}

	ipml->rf = FUNC7("cmpc_rfkill", &acpi->dev, RFKILL_TYPE_WLAN,
				&cmpc_rfkill_ops, acpi->handle);
	/*
	 * If RFKILL is disabled, rfkill_alloc will return ERR_PTR(-ENODEV).
	 * This is OK, however, since all other uses of the device will not
	 * derefence it.
	 */
	if (ipml->rf) {
		retval = FUNC9(ipml->rf);
		if (retval) {
			FUNC8(ipml->rf);
			ipml->rf = NULL;
		}
	}

	FUNC3(&acpi->dev, ipml);
	return 0;

out_bd:
	FUNC4(ipml);
	return retval;
}