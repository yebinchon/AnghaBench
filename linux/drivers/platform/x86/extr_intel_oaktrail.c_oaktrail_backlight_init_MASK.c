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
struct backlight_properties {int /*<<< orphan*/  max_brightness; int /*<<< orphan*/  type; } ;
struct TYPE_3__ {int /*<<< orphan*/  power; int /*<<< orphan*/  brightness; } ;
struct backlight_device {TYPE_1__ props; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BACKLIGHT_PLATFORM ; 
 int /*<<< orphan*/  DRIVER_NAME ; 
 int /*<<< orphan*/  FB_BLANK_UNBLANK ; 
 scalar_t__ FUNC0 (struct backlight_device*) ; 
 int /*<<< orphan*/  OT_EC_BL_BRIGHTNESS_MAX ; 
 int FUNC1 (struct backlight_device*) ; 
 struct backlight_device* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct backlight_properties*) ; 
 int /*<<< orphan*/  FUNC3 (struct backlight_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct backlight_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct backlight_properties*,int /*<<< orphan*/ ,int) ; 
 struct backlight_device* oaktrail_bl_device ; 
 int /*<<< orphan*/  oaktrail_bl_ops ; 
 TYPE_2__* oaktrail_device ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static int FUNC7(void)
{
	struct backlight_device *bd;
	struct backlight_properties props;

	FUNC5(&props, 0, sizeof(struct backlight_properties));
	props.type = BACKLIGHT_PLATFORM;
	props.max_brightness = OT_EC_BL_BRIGHTNESS_MAX;
	bd = FUNC2(DRIVER_NAME,
				       &oaktrail_device->dev, NULL,
				       &oaktrail_bl_ops,
				       &props);

	if (FUNC0(bd)) {
		oaktrail_bl_device = NULL;
		FUNC6("Unable to register backlight device\n");
		return FUNC1(bd);
	}

	oaktrail_bl_device = bd;

	bd->props.brightness = FUNC4(bd);
	bd->props.power = FB_BLANK_UNBLANK;
	FUNC3(bd);

	return 0;
}