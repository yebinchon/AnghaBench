#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct backlight_properties {int /*<<< orphan*/  max_brightness; int /*<<< orphan*/  type; } ;
struct TYPE_2__ {int /*<<< orphan*/  brightness; int /*<<< orphan*/  power; } ;
struct backlight_device {TYPE_1__ props; } ;

/* Variables and functions */
 int /*<<< orphan*/  BACKLIGHT_PLATFORM ; 
 int /*<<< orphan*/  FB_BLANK_UNBLANK ; 
 scalar_t__ FUNC0 (struct backlight_device*) ; 
 int FUNC1 (struct backlight_device*) ; 
 struct backlight_device* acer_backlight_device ; 
 int /*<<< orphan*/  acer_bl_ops ; 
 struct backlight_device* FUNC2 (char*,struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct backlight_properties*) ; 
 int /*<<< orphan*/  FUNC3 (struct backlight_device*) ; 
 int /*<<< orphan*/  max_brightness ; 
 int /*<<< orphan*/  FUNC4 (struct backlight_properties*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (struct backlight_device*) ; 

__attribute__((used)) static int FUNC7(struct device *dev)
{
	struct backlight_properties props;
	struct backlight_device *bd;

	FUNC4(&props, 0, sizeof(struct backlight_properties));
	props.type = BACKLIGHT_PLATFORM;
	props.max_brightness = max_brightness;
	bd = FUNC2("acer-wmi", dev, NULL, &acer_bl_ops,
				       &props);
	if (FUNC0(bd)) {
		FUNC5("Could not register Acer backlight device\n");
		acer_backlight_device = NULL;
		return FUNC1(bd);
	}

	acer_backlight_device = bd;

	bd->props.power = FB_BLANK_UNBLANK;
	bd->props.brightness = FUNC6(bd);
	FUNC3(bd);
	return 0;
}