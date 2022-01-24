#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct toshiba_acpi_dev {TYPE_3__* backlight_dev; TYPE_1__* acpi_dev; scalar_t__ tr_backlight_supported; } ;
struct backlight_properties {scalar_t__ max_brightness; int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  props ;
struct TYPE_7__ {int brightness; } ;
struct TYPE_8__ {TYPE_2__ props; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BACKLIGHT_PLATFORM ; 
 scalar_t__ HCI_LCD_BRIGHTNESS_LEVELS ; 
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 int FUNC1 (TYPE_3__*) ; 
 int FUNC2 (struct toshiba_acpi_dev*) ; 
 scalar_t__ acpi_backlight_vendor ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 TYPE_3__* FUNC5 (char*,int /*<<< orphan*/ *,struct toshiba_acpi_dev*,int /*<<< orphan*/ *,struct backlight_properties*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct backlight_properties*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int FUNC10 (struct toshiba_acpi_dev*,int) ; 
 int /*<<< orphan*/  toshiba_backlight_data ; 
 int /*<<< orphan*/  toshiba_vendor_backlight_dmi ; 

__attribute__((used)) static int FUNC11(struct toshiba_acpi_dev *dev)
{
	struct backlight_properties props;
	int brightness;
	int ret;

	/*
	 * Some machines don't support the backlight methods at all, and
	 * others support it read-only. Either of these is pretty useless,
	 * so only register the backlight device if the backlight method
	 * supports both reads and writes.
	 */
	brightness = FUNC2(dev);
	if (brightness < 0)
		return 0;
	/*
	 * If transflective backlight is supported and the brightness is zero
	 * (lowest brightness level), the set_lcd_brightness function will
	 * activate the transflective backlight, making the LCD appear to be
	 * turned off, simply increment the brightness level to avoid that.
	 */
	if (dev->tr_backlight_supported && brightness == 0)
		brightness++;
	ret = FUNC10(dev, brightness);
	if (ret) {
		FUNC8("Backlight method is read-only, disabling backlight support\n");
		return 0;
	}

	/*
	 * Tell acpi-video-detect code to prefer vendor backlight on all
	 * systems with transflective backlight and on dmi matched systems.
	 */
	if (dev->tr_backlight_supported ||
	    FUNC6(toshiba_vendor_backlight_dmi))
		FUNC4(acpi_backlight_vendor);

	if (FUNC3() != acpi_backlight_vendor)
		return 0;

	FUNC7(&props, 0, sizeof(props));
	props.type = BACKLIGHT_PLATFORM;
	props.max_brightness = HCI_LCD_BRIGHTNESS_LEVELS - 1;

	/* Adding an extra level and having 0 change to transflective mode */
	if (dev->tr_backlight_supported)
		props.max_brightness++;

	dev->backlight_dev = FUNC5("toshiba",
						       &dev->acpi_dev->dev,
						       dev,
						       &toshiba_backlight_data,
						       &props);
	if (FUNC0(dev->backlight_dev)) {
		ret = FUNC1(dev->backlight_dev);
		FUNC9("Could not register toshiba backlight device\n");
		dev->backlight_dev = NULL;
		return ret;
	}

	dev->backlight_dev->props.brightness = brightness;
	return 0;
}