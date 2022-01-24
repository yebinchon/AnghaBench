#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct backlight_properties {int max_brightness; int /*<<< orphan*/  type; } ;
struct TYPE_8__ {int power; int /*<<< orphan*/  brightness; } ;
struct backlight_device {TYPE_4__ props; } ;
struct asus_wmi {TYPE_3__* driver; struct backlight_device* backlight_device; TYPE_1__* platform_device; } ;
struct TYPE_7__ {int panel_power; int /*<<< orphan*/  brightness; TYPE_2__* quirks; int /*<<< orphan*/  name; } ;
struct TYPE_6__ {scalar_t__ store_backlight_power; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BACKLIGHT_PLATFORM ; 
 int ENODEV ; 
 int FB_BLANK_UNBLANK ; 
 scalar_t__ FUNC0 (struct backlight_device*) ; 
 int FUNC1 (struct backlight_device*) ; 
 int /*<<< orphan*/  asus_wmi_bl_ops ; 
 struct backlight_device* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct asus_wmi*,int /*<<< orphan*/ *,struct backlight_properties*) ; 
 int /*<<< orphan*/  FUNC3 (struct backlight_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct backlight_properties*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (struct asus_wmi*) ; 
 int /*<<< orphan*/  FUNC7 (struct backlight_device*) ; 
 int FUNC8 (struct asus_wmi*) ; 

__attribute__((used)) static int FUNC9(struct asus_wmi *asus)
{
	struct backlight_device *bd;
	struct backlight_properties props;
	int max;
	int power;

	max = FUNC8(asus);
	if (max < 0)
		return max;

	power = FUNC6(asus);
	if (power == -ENODEV)
		power = FB_BLANK_UNBLANK;
	else if (power < 0)
		return power;

	FUNC4(&props, 0, sizeof(struct backlight_properties));
	props.type = BACKLIGHT_PLATFORM;
	props.max_brightness = max;
	bd = FUNC2(asus->driver->name,
				       &asus->platform_device->dev, asus,
				       &asus_wmi_bl_ops, &props);
	if (FUNC0(bd)) {
		FUNC5("Could not register backlight device\n");
		return FUNC1(bd);
	}

	asus->backlight_device = bd;

	if (asus->driver->quirks->store_backlight_power)
		asus->driver->panel_power = power;

	bd->props.brightness = FUNC7(bd);
	bd->props.power = power;
	FUNC3(bd);

	asus->driver->brightness = bd->props.brightness;

	return 0;
}