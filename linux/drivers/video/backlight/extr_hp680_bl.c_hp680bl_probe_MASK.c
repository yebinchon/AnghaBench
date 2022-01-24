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
struct TYPE_2__ {int /*<<< orphan*/  brightness; } ;
struct backlight_device {TYPE_1__ props; } ;

/* Variables and functions */
 int /*<<< orphan*/  BACKLIGHT_RAW ; 
 int /*<<< orphan*/  HP680_DEFAULT_INTENSITY ; 
 int /*<<< orphan*/  HP680_MAX_INTENSITY ; 
 scalar_t__ FUNC0 (struct backlight_device*) ; 
 int FUNC1 (struct backlight_device*) ; 
 struct backlight_device* FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct backlight_properties*) ; 
 int /*<<< orphan*/  hp680bl_ops ; 
 int /*<<< orphan*/  FUNC3 (struct backlight_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct backlight_properties*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,struct backlight_device*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct backlight_properties props;
	struct backlight_device *bd;

	FUNC4(&props, 0, sizeof(struct backlight_properties));
	props.type = BACKLIGHT_RAW;
	props.max_brightness = HP680_MAX_INTENSITY;
	bd = FUNC2(&pdev->dev, "hp680-bl", &pdev->dev,
					NULL, &hp680bl_ops, &props);
	if (FUNC0(bd))
		return FUNC1(bd);

	FUNC5(pdev, bd);

	bd->props.brightness = HP680_DEFAULT_INTENSITY;
	FUNC3(bd);

	return 0;
}