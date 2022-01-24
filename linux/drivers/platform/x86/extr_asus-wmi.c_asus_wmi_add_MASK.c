#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct platform_driver {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  driver; } ;
struct platform_device {TYPE_1__ dev; } ;
struct asus_wmi_driver {int wlan_ctrl_by_user; int /*<<< orphan*/  event_guid; TYPE_2__* quirks; int /*<<< orphan*/  (* detect_quirks ) (struct asus_wmi_driver*) ;struct platform_device* platform_device; } ;
struct asus_wmi {int fnlock_locked; struct platform_device* platform_device; struct asus_wmi_driver* driver; } ;
typedef  int /*<<< orphan*/  acpi_status ;
struct TYPE_4__ {scalar_t__ wmi_backlight_set_devstate; scalar_t__ xusb2pr; scalar_t__ wmi_backlight_native; scalar_t__ wmi_backlight_power; scalar_t__ wmi_force_als_set; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ASUS_WMI_DEVID_BACKLIGHT ; 
 int /*<<< orphan*/  ASUS_WMI_DEVID_WLAN ; 
 int ASUS_WMI_DSTS_PRESENCE_BIT ; 
 int ASUS_WMI_DSTS_USER_BIT ; 
 int /*<<< orphan*/  DMI_CHASSIS_TYPE ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ acpi_backlight_native ; 
 scalar_t__ acpi_backlight_vendor ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct asus_wmi*) ; 
 int FUNC5 (struct asus_wmi*) ; 
 int /*<<< orphan*/  FUNC6 (struct asus_wmi*) ; 
 int /*<<< orphan*/  FUNC7 (struct asus_wmi*) ; 
 int FUNC8 (struct asus_wmi*) ; 
 int /*<<< orphan*/  FUNC9 (struct asus_wmi*) ; 
 int /*<<< orphan*/  FUNC10 (struct asus_wmi*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC11 (struct asus_wmi*) ; 
 int FUNC12 (struct asus_wmi*) ; 
 int /*<<< orphan*/  FUNC13 (struct asus_wmi*) ; 
 int FUNC14 (struct asus_wmi*) ; 
 int /*<<< orphan*/  FUNC15 (struct asus_wmi*) ; 
 int FUNC16 (struct asus_wmi*) ; 
 int /*<<< orphan*/  asus_wmi_notify ; 
 int FUNC17 (struct asus_wmi*) ; 
 int /*<<< orphan*/  FUNC18 (struct asus_wmi*) ; 
 int FUNC19 (struct asus_wmi*) ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int FUNC21 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (struct asus_wmi*) ; 
 int /*<<< orphan*/  FUNC23 (struct platform_device*) ; 
 int FUNC24 (struct platform_device*) ; 
 char* FUNC25 (int /*<<< orphan*/ ) ; 
 int FUNC26 (struct asus_wmi*) ; 
 int /*<<< orphan*/  FUNC27 (struct asus_wmi*) ; 
 struct asus_wmi* FUNC28 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (struct platform_device*,struct asus_wmi*) ; 
 int /*<<< orphan*/  FUNC30 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC32 (struct asus_wmi_driver*) ; 
 struct asus_wmi_driver* FUNC33 (struct platform_driver*) ; 
 struct platform_driver* FUNC34 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct asus_wmi*) ; 

__attribute__((used)) static int FUNC36(struct platform_device *pdev)
{
	struct platform_driver *pdrv = FUNC34(pdev->dev.driver);
	struct asus_wmi_driver *wdrv = FUNC33(pdrv);
	struct asus_wmi *asus;
	const char *chassis_type;
	acpi_status status;
	int err;
	u32 result;

	asus = FUNC28(sizeof(struct asus_wmi), GFP_KERNEL);
	if (!asus)
		return -ENOMEM;

	asus->driver = wdrv;
	asus->platform_device = pdev;
	wdrv->platform_device = pdev;
	FUNC29(asus->platform_device, asus);

	if (wdrv->detect_quirks)
		wdrv->detect_quirks(asus->driver);

	err = FUNC17(asus);
	if (err)
		goto fail_platform;

	err = FUNC26(asus);
	if (err)
		goto fail_fan_boost_mode;

	err = FUNC24(asus->platform_device);
	if (err)
		goto fail_sysfs;

	err = FUNC14(asus);
	if (err)
		goto fail_input;

	err = FUNC8(asus); /* probably no problems on error */

	err = FUNC12(asus);
	if (err)
		goto fail_hwmon;

	err = FUNC16(asus);
	if (err)
		goto fail_leds;

	FUNC10(asus, ASUS_WMI_DEVID_WLAN, &result);
	if (result & (ASUS_WMI_DSTS_PRESENCE_BIT | ASUS_WMI_DSTS_USER_BIT))
		asus->driver->wlan_ctrl_by_user = 1;

	if (!(asus->driver->wlan_ctrl_by_user && FUNC3())) {
		err = FUNC19(asus);
		if (err)
			goto fail_rfkill;
	}

	if (asus->driver->quirks->wmi_force_als_set)
		FUNC20();

	/* Some Asus desktop boards export an acpi-video backlight interface,
	   stop this from showing up */
	chassis_type = FUNC25(DMI_CHASSIS_TYPE);
	if (chassis_type && !FUNC31(chassis_type, "3"))
		FUNC2(acpi_backlight_vendor);

	if (asus->driver->quirks->wmi_backlight_power)
		FUNC2(acpi_backlight_vendor);

	if (asus->driver->quirks->wmi_backlight_native)
		FUNC2(acpi_backlight_native);

	if (asus->driver->quirks->xusb2pr)
		FUNC22(asus);

	if (FUNC1() == acpi_backlight_vendor) {
		err = FUNC5(asus);
		if (err && err != -ENODEV)
			goto fail_backlight;
	} else if (asus->driver->quirks->wmi_backlight_set_devstate)
		err = FUNC21(ASUS_WMI_DEVID_BACKLIGHT, 2, NULL);

	if (FUNC11(asus)) {
		asus->fnlock_locked = true;
		FUNC9(asus);
	}

	status = FUNC35(asus->driver->event_guid,
					    asus_wmi_notify, asus);
	if (FUNC0(status)) {
		FUNC30("Unable to register notify handler - %d\n", status);
		err = -ENODEV;
		goto fail_wmi_handler;
	}

	FUNC6(asus);

	FUNC7(asus);

	return 0;

fail_wmi_handler:
	FUNC4(asus);
fail_backlight:
	FUNC18(asus);
fail_rfkill:
	FUNC15(asus);
fail_leds:
fail_hwmon:
	FUNC13(asus);
fail_input:
	FUNC23(asus->platform_device);
fail_sysfs:
fail_fan_boost_mode:
fail_platform:
	FUNC27(asus);
	return err;
}