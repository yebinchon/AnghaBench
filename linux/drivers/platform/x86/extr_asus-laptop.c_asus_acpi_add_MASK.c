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
struct asus_laptop {int /*<<< orphan*/  is_pega_lucid; struct acpi_device* device; int /*<<< orphan*/  handle; } ;
struct acpi_device {struct asus_laptop* driver_data; int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASUS_LAPTOP_CLASS ; 
 int /*<<< orphan*/  ASUS_LAPTOP_DEVICE_NAME ; 
 int /*<<< orphan*/  ASUS_LAPTOP_VERSION ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ acpi_backlight_vendor ; 
 int /*<<< orphan*/  FUNC0 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_device*) ; 
 scalar_t__ FUNC2 () ; 
 int FUNC3 (struct asus_laptop*) ; 
 int /*<<< orphan*/  FUNC4 (struct asus_laptop*) ; 
 int FUNC5 (struct asus_laptop*) ; 
 int /*<<< orphan*/  FUNC6 (struct asus_laptop*) ; 
 int asus_device_present ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct asus_laptop*) ; 
 int FUNC9 (struct asus_laptop*) ; 
 int /*<<< orphan*/  FUNC10 (struct asus_laptop*) ; 
 int FUNC11 (struct asus_laptop*) ; 
 int /*<<< orphan*/  FUNC12 (struct asus_laptop*) ; 
 int FUNC13 (struct asus_laptop*) ; 
 int /*<<< orphan*/  FUNC14 (struct asus_laptop*) ; 
 int FUNC15 (struct asus_laptop*) ; 
 int /*<<< orphan*/  FUNC16 (struct asus_laptop*) ; 
 struct asus_laptop* FUNC17 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct asus_laptop*) ; 
 int FUNC19 (struct asus_laptop*) ; 
 int FUNC20 (struct asus_laptop*) ; 
 int /*<<< orphan*/  FUNC21 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC23(struct acpi_device *device)
{
	struct asus_laptop *asus;
	int result;

	FUNC21("Asus Laptop Support version %s\n",
		  ASUS_LAPTOP_VERSION);
	asus = FUNC17(sizeof(struct asus_laptop), GFP_KERNEL);
	if (!asus)
		return -ENOMEM;
	asus->handle = device->handle;
	FUNC22(FUNC1(device), ASUS_LAPTOP_DEVICE_NAME);
	FUNC22(FUNC0(device), ASUS_LAPTOP_CLASS);
	device->driver_data = asus;
	asus->device = device;

	FUNC7();

	result = FUNC3(asus);
	if (result)
		goto fail_platform;

	/*
	 * Need platform type detection first, then the platform
	 * device.  It is used as a parent for the sub-devices below.
	 */
	asus->is_pega_lucid = FUNC6(asus);
	result = FUNC13(asus);
	if (result)
		goto fail_platform;

	if (FUNC2() == acpi_backlight_vendor) {
		result = FUNC5(asus);
		if (result)
			goto fail_backlight;
	}

	result = FUNC9(asus);
	if (result)
		goto fail_input;

	result = FUNC11(asus);
	if (result)
		goto fail_led;

	result = FUNC15(asus);
	if (result && result != -ENODEV)
		goto fail_rfkill;

	result = FUNC19(asus);
	if (result && result != -ENODEV)
		goto fail_pega_accel;

	result = FUNC20(asus);
	if (result && result != -ENODEV)
		goto fail_pega_rfkill;

	asus_device_present = true;
	return 0;

fail_pega_rfkill:
	FUNC18(asus);
fail_pega_accel:
	FUNC14(asus);
fail_rfkill:
	FUNC10(asus);
fail_led:
	FUNC8(asus);
fail_input:
	FUNC4(asus);
fail_backlight:
	FUNC12(asus);
fail_platform:
	FUNC16(asus);

	return result;
}