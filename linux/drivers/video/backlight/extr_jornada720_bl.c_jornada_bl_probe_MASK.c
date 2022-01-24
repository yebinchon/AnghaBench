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
struct backlight_properties {int /*<<< orphan*/  max_brightness; int /*<<< orphan*/  type; } ;
struct TYPE_2__ {int /*<<< orphan*/  brightness; int /*<<< orphan*/  power; } ;
struct backlight_device {TYPE_1__ props; } ;

/* Variables and functions */
 int /*<<< orphan*/  BACKLIGHT_RAW ; 
 int /*<<< orphan*/  BL_DEF_BRIGHT ; 
 int /*<<< orphan*/  BL_MAX_BRIGHT ; 
 int /*<<< orphan*/  FB_BLANK_UNBLANK ; 
 scalar_t__ FUNC0 (struct backlight_device*) ; 
 int FUNC1 (struct backlight_device*) ; 
 int /*<<< orphan*/  S1D_DEVICENAME ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 struct backlight_device* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct backlight_properties*) ; 
 int /*<<< orphan*/  jornada_bl_ops ; 
 int /*<<< orphan*/  FUNC5 (struct backlight_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct backlight_properties*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,struct backlight_device*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct backlight_properties props;
	int ret;
	struct backlight_device *bd;

	FUNC6(&props, 0, sizeof(struct backlight_properties));
	props.type = BACKLIGHT_RAW;
	props.max_brightness = BL_MAX_BRIGHT;

	bd = FUNC4(&pdev->dev, S1D_DEVICENAME,
					&pdev->dev, NULL, &jornada_bl_ops,
					&props);
	if (FUNC0(bd)) {
		ret = FUNC1(bd);
		FUNC2(&pdev->dev, "failed to register device, err=%x\n", ret);
		return ret;
	}

	bd->props.power = FB_BLANK_UNBLANK;
	bd->props.brightness = BL_DEF_BRIGHT;
	/*
	 * note. make sure max brightness is set otherwise
	 * you will get seemingly non-related errors when
	 * trying to change brightness
	 */
	FUNC5(bd);

	FUNC7(pdev, bd);
	FUNC3(&pdev->dev, "HP Jornada 700 series backlight driver\n");

	return 0;
}