#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_12__ {char* name; int max_brightness; int /*<<< orphan*/  brightness_get; int /*<<< orphan*/  brightness_set; int /*<<< orphan*/  flags; } ;
struct TYPE_10__ {char* name; int /*<<< orphan*/ * fops; int /*<<< orphan*/  minor; } ;
struct toshiba_acpi_dev {char const* method_hci; int kbd_function_keys_supported; int tr_backlight_supported; int illumination_led_registered; int eco_led_registered; scalar_t__ kbd_mode; int kbd_type; int kbd_led_registered; int touchpad_supported; int usb_rapid_charge_supported; int usb_sleep_music_supported; int panel_power_on_supported; int usb_three_supported; int video_supported; int fan_supported; int sysfs_created; struct acpi_device* acpi_dev; scalar_t__ wwan_supported; TYPE_5__* indio_dev; scalar_t__ accelerometer_supported; TYPE_4__ kbd_led; scalar_t__ kbd_illum_supported; TYPE_4__ eco_led; scalar_t__ eco_supported; TYPE_4__ led_dev; scalar_t__ illumination_supported; scalar_t__ hotkey_event_type; int /*<<< orphan*/  special_functions; TYPE_2__ miscdev; } ;
struct TYPE_11__ {int /*<<< orphan*/  kobj; } ;
struct acpi_device {TYPE_3__ dev; struct toshiba_acpi_dev* driver_data; int /*<<< orphan*/  handle; } ;
struct TYPE_9__ {TYPE_3__* parent; } ;
struct TYPE_13__ {char* name; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  modes; TYPE_1__ dev; int /*<<< orphan*/ * info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EBUSY ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  LED_BRIGHT_HW_CHANGED ; 
 int /*<<< orphan*/  MISC_DYNAMIC_MINOR ; 
 scalar_t__ SCI_KBD_MODE_FNZ ; 
 int /*<<< orphan*/  TOSHIBA_ACPI_VERSION ; 
 int /*<<< orphan*/  FUNC1 (struct toshiba_acpi_dev*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,struct toshiba_acpi_dev*) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct toshiba_acpi_dev*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct toshiba_acpi_dev*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct toshiba_acpi_dev*,int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*) ; 
 int FUNC9 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC10 (struct toshiba_acpi_dev*) ; 
 struct toshiba_acpi_dev* FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,TYPE_4__*) ; 
 int FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (char*,...) ; 
 int /*<<< orphan*/  FUNC16 (struct toshiba_acpi_dev*) ; 
 int FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct toshiba_acpi_dev*) ; 
 struct toshiba_acpi_dev* toshiba_acpi ; 
 int /*<<< orphan*/  toshiba_acpi_fops ; 
 int /*<<< orphan*/  FUNC19 (struct acpi_device*) ; 
 int FUNC20 (struct toshiba_acpi_dev*) ; 
 scalar_t__ FUNC21 (struct toshiba_acpi_dev*) ; 
 int /*<<< orphan*/  FUNC22 (struct toshiba_acpi_dev*) ; 
 int /*<<< orphan*/  toshiba_attr_group ; 
 int /*<<< orphan*/  FUNC23 (struct toshiba_acpi_dev*) ; 
 int /*<<< orphan*/  FUNC24 (struct toshiba_acpi_dev*) ; 
 int /*<<< orphan*/  toshiba_eco_mode_get_status ; 
 int /*<<< orphan*/  toshiba_eco_mode_set_status ; 
 int FUNC25 (struct toshiba_acpi_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  toshiba_iio_accel_channels ; 
 int /*<<< orphan*/  toshiba_iio_accel_info ; 
 int /*<<< orphan*/  FUNC26 (struct toshiba_acpi_dev*) ; 
 int /*<<< orphan*/  toshiba_illumination_get ; 
 int /*<<< orphan*/  toshiba_illumination_set ; 
 int /*<<< orphan*/  toshiba_kbd_backlight_get ; 
 int /*<<< orphan*/  toshiba_kbd_backlight_set ; 
 int /*<<< orphan*/  FUNC27 (struct toshiba_acpi_dev*) ; 
 int FUNC28 (struct toshiba_acpi_dev*,int /*<<< orphan*/ *) ; 
 int FUNC29 (struct toshiba_acpi_dev*,int /*<<< orphan*/ *) ; 
 int FUNC30 (struct toshiba_acpi_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC31 (struct toshiba_acpi_dev*) ; 
 int FUNC32 (struct toshiba_acpi_dev*,int /*<<< orphan*/ *) ; 
 int FUNC33 (struct toshiba_acpi_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC34 (struct toshiba_acpi_dev*) ; 

__attribute__((used)) static int FUNC35(struct acpi_device *acpi_dev)
{
	struct toshiba_acpi_dev *dev;
	const char *hci_method;
	u32 dummy;
	int ret = 0;

	if (toshiba_acpi)
		return -EBUSY;

	FUNC15("Toshiba Laptop ACPI Extras version %s\n",
	       TOSHIBA_ACPI_VERSION);

	hci_method = FUNC3(acpi_dev->handle);
	if (!hci_method) {
		FUNC14("HCI interface not found\n");
		return -ENODEV;
	}

	dev = FUNC11(sizeof(*dev), GFP_KERNEL);
	if (!dev)
		return -ENOMEM;
	dev->acpi_dev = acpi_dev;
	dev->method_hci = hci_method;
	dev->miscdev.minor = MISC_DYNAMIC_MINOR;
	dev->miscdev.name = "toshiba_acpi";
	dev->miscdev.fops = &toshiba_acpi_fops;

	ret = FUNC13(&dev->miscdev);
	if (ret) {
		FUNC14("Failed to register miscdevice\n");
		FUNC10(dev);
		return ret;
	}

	acpi_dev->driver_data = dev;
	FUNC2(&acpi_dev->dev, dev);

	/* Query the BIOS for supported features */

	/*
	 * The "Special Functions" are always supported by the laptops
	 * with the new keyboard layout, query for its presence to help
	 * determine the keymap layout to use.
	 */
	ret = FUNC25(dev, &dev->special_functions);
	dev->kbd_function_keys_supported = !ret;

	dev->hotkey_event_type = 0;
	if (FUNC21(dev))
		FUNC15("Unable to activate hotkeys\n");

	/* Determine whether or not BIOS supports transflective backlight */
	ret = FUNC5(dev, &dummy);
	dev->tr_backlight_supported = !ret;

	ret = FUNC20(dev);
	if (ret)
		goto error;

	FUNC26(dev);
	if (dev->illumination_supported) {
		dev->led_dev.name = "toshiba::illumination";
		dev->led_dev.max_brightness = 1;
		dev->led_dev.brightness_set = toshiba_illumination_set;
		dev->led_dev.brightness_get = toshiba_illumination_get;
		if (!FUNC12(&acpi_dev->dev, &dev->led_dev))
			dev->illumination_led_registered = true;
	}

	FUNC24(dev);
	if (dev->eco_supported) {
		dev->eco_led.name = "toshiba::eco_mode";
		dev->eco_led.max_brightness = 1;
		dev->eco_led.brightness_set = toshiba_eco_mode_set_status;
		dev->eco_led.brightness_get = toshiba_eco_mode_get_status;
		if (!FUNC12(&dev->acpi_dev->dev, &dev->eco_led))
			dev->eco_led_registered = true;
	}

	FUNC27(dev);
	/*
	 * Only register the LED if KBD illumination is supported
	 * and the keyboard backlight operation mode is set to FN-Z
	 * or we detect a second gen keyboard backlight
	 */
	if (dev->kbd_illum_supported &&
	    (dev->kbd_mode == SCI_KBD_MODE_FNZ || dev->kbd_type == 2)) {
		dev->kbd_led.name = "toshiba::kbd_backlight";
		dev->kbd_led.flags = LED_BRIGHT_HW_CHANGED;
		dev->kbd_led.max_brightness = 1;
		dev->kbd_led.brightness_set = toshiba_kbd_backlight_set;
		dev->kbd_led.brightness_get = toshiba_kbd_backlight_get;
		if (!FUNC12(&dev->acpi_dev->dev, &dev->kbd_led))
			dev->kbd_led_registered = true;
	}

	ret = FUNC29(dev, &dummy);
	dev->touchpad_supported = !ret;

	FUNC18(dev);
	if (dev->accelerometer_supported) {
		dev->indio_dev = FUNC7(sizeof(*dev));
		if (!dev->indio_dev) {
			FUNC14("Unable to allocate iio device\n");
			goto iio_error;
		}

		FUNC15("Registering Toshiba accelerometer iio device\n");

		dev->indio_dev->info = &toshiba_iio_accel_info;
		dev->indio_dev->name = "Toshiba accelerometer";
		dev->indio_dev->dev.parent = &acpi_dev->dev;
		dev->indio_dev->modes = INDIO_DIRECT_MODE;
		dev->indio_dev->channels = toshiba_iio_accel_channels;
		dev->indio_dev->num_channels =
					FUNC0(toshiba_iio_accel_channels);

		ret = FUNC9(dev->indio_dev);
		if (ret < 0) {
			FUNC14("Unable to register iio device\n");
			FUNC8(dev->indio_dev);
		}
	}
iio_error:

	FUNC31(dev);

	ret = FUNC30(dev, &dummy);
	dev->usb_rapid_charge_supported = !ret;

	ret = FUNC32(dev, &dummy);
	dev->usb_sleep_music_supported = !ret;

	ret = FUNC28(dev, &dummy);
	dev->panel_power_on_supported = !ret;

	ret = FUNC33(dev, &dummy);
	dev->usb_three_supported = !ret;

	ret = FUNC6(dev, &dummy);
	dev->video_supported = !ret;

	ret = FUNC4(dev, &dummy);
	dev->fan_supported = !ret;

	FUNC34(dev);
	if (dev->wwan_supported)
		FUNC22(dev);

	FUNC23(dev);

	FUNC16(dev);

	ret = FUNC17(&dev->acpi_dev->dev.kobj,
				 &toshiba_attr_group);
	if (ret) {
		dev->sysfs_created = 0;
		goto error;
	}
	dev->sysfs_created = !ret;

	FUNC1(dev);

	toshiba_acpi = dev;

	return 0;

error:
	FUNC19(acpi_dev);
	return ret;
}