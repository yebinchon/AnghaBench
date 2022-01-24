#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  parent; } ;
struct locomo_dev {TYPE_5__ dev; } ;
struct backlight_properties {int max_brightness; int /*<<< orphan*/  type; } ;
struct TYPE_8__ {int brightness; } ;
struct TYPE_9__ {TYPE_1__ props; } ;

/* Variables and functions */
 int /*<<< orphan*/  BACKLIGHT_RAW ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  LOCOMO_GPIO_FL_VR ; 
 int FUNC1 (TYPE_2__*) ; 
 TYPE_2__* FUNC2 (char*,TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct backlight_properties*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  locomobl_data ; 
 TYPE_2__* locomolcd_bl_device ; 
 struct locomo_dev* locomolcd_dev ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct backlight_properties*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC10(struct locomo_dev *ldev)
{
	struct backlight_properties props;
	unsigned long flags;

	FUNC4(flags);
	locomolcd_dev = ldev;

	FUNC5(ldev->dev.parent, LOCOMO_GPIO_FL_VR, 0);

	/*
	 * the poodle_lcd_power function is called for the first time
	 * from fs_initcall, which is before locomo is activated.
	 * We need to recall poodle_lcd_power here
	 */
	if (FUNC8())
		FUNC6(1);

	FUNC3(flags);

	FUNC9(&props, 0, sizeof(struct backlight_properties));
	props.type = BACKLIGHT_RAW;
	props.max_brightness = 4;
	locomolcd_bl_device = FUNC2("locomo-bl",
							&ldev->dev, NULL,
							&locomobl_data, &props);

	if (FUNC0(locomolcd_bl_device))
		return FUNC1(locomolcd_bl_device);

	/* Set up frontlight so that screen is readable */
	locomolcd_bl_device->props.brightness = 2;
	FUNC7(locomolcd_bl_device);

	return 0;
}