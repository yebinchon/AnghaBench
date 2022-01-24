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
struct toshiba_acpi_dev {scalar_t__ wwan_rfk; int /*<<< orphan*/  eco_led; scalar_t__ eco_led_registered; int /*<<< orphan*/  kbd_led; scalar_t__ kbd_led_registered; int /*<<< orphan*/  led_dev; scalar_t__ illumination_led_registered; int /*<<< orphan*/  backlight_dev; scalar_t__ hotkey_dev; int /*<<< orphan*/  hotkey_work; scalar_t__ ntfy_supported; TYPE_2__* acpi_dev; scalar_t__ sysfs_created; scalar_t__ indio_dev; scalar_t__ accelerometer_supported; int /*<<< orphan*/  miscdev; } ;
struct acpi_device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;

/* Variables and functions */
 struct toshiba_acpi_dev* FUNC0 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct toshiba_acpi_dev*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct toshiba_acpi_dev*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * toshiba_acpi ; 
 int /*<<< orphan*/  toshiba_acpi_i8042_filter ; 
 int /*<<< orphan*/  toshiba_attr_group ; 

__attribute__((used)) static int FUNC14(struct acpi_device *acpi_dev)
{
	struct toshiba_acpi_dev *dev = FUNC0(acpi_dev);

	FUNC9(&dev->miscdev);

	FUNC10(dev);

	if (dev->accelerometer_supported && dev->indio_dev) {
		FUNC5(dev->indio_dev);
		FUNC4(dev->indio_dev);
	}

	if (dev->sysfs_created)
		FUNC13(&dev->acpi_dev->dev.kobj,
				   &toshiba_attr_group);

	if (dev->ntfy_supported) {
		FUNC3(toshiba_acpi_i8042_filter);
		FUNC2(&dev->hotkey_work);
	}

	if (dev->hotkey_dev)
		FUNC6(dev->hotkey_dev);

	FUNC1(dev->backlight_dev);

	if (dev->illumination_led_registered)
		FUNC8(&dev->led_dev);

	if (dev->kbd_led_registered)
		FUNC8(&dev->kbd_led);

	if (dev->eco_led_registered)
		FUNC8(&dev->eco_led);

	if (dev->wwan_rfk) {
		FUNC12(dev->wwan_rfk);
		FUNC11(dev->wwan_rfk);
	}

	if (toshiba_acpi)
		toshiba_acpi = NULL;

	FUNC7(dev);

	return 0;
}