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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct generic_bl_info {int limit_mask; char* name; int /*<<< orphan*/  default_intensity; int /*<<< orphan*/  max_intensity; } ;
struct backlight_properties {int /*<<< orphan*/  max_brightness; int /*<<< orphan*/  type; } ;
struct TYPE_2__ {int /*<<< orphan*/  brightness; int /*<<< orphan*/  power; } ;
struct backlight_device {TYPE_1__ props; } ;

/* Variables and functions */
 int /*<<< orphan*/  BACKLIGHT_RAW ; 
 int /*<<< orphan*/  FB_BLANK_UNBLANK ; 
 scalar_t__ FUNC0 (struct backlight_device*) ; 
 int FUNC1 (struct backlight_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct backlight_device*) ; 
 struct generic_bl_info* bl_machinfo ; 
 struct generic_bl_info* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 struct backlight_device* FUNC5 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct backlight_properties*) ; 
 struct backlight_device* generic_backlight_device ; 
 int /*<<< orphan*/  genericbl_ops ; 
 int /*<<< orphan*/  FUNC6 (struct backlight_properties*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,struct backlight_device*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct backlight_properties props;
	struct generic_bl_info *machinfo = FUNC3(&pdev->dev);
	const char *name = "generic-bl";
	struct backlight_device *bd;

	bl_machinfo = machinfo;
	if (!machinfo->limit_mask)
		machinfo->limit_mask = -1;

	if (machinfo->name)
		name = machinfo->name;

	FUNC6(&props, 0, sizeof(struct backlight_properties));
	props.type = BACKLIGHT_RAW;
	props.max_brightness = machinfo->max_intensity;
	bd = FUNC5(&pdev->dev, name, &pdev->dev,
					NULL, &genericbl_ops, &props);
	if (FUNC0(bd))
		return FUNC1(bd);

	FUNC7(pdev, bd);

	bd->props.power = FB_BLANK_UNBLANK;
	bd->props.brightness = machinfo->default_intensity;
	FUNC2(bd);

	generic_backlight_device = bd;

	FUNC4(&pdev->dev, "Generic Backlight Driver Initialized.\n");
	return 0;
}