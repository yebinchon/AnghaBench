#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct platform_device {int /*<<< orphan*/  dev; } ;
struct kb3886bl_machinfo {int limit_mask; int /*<<< orphan*/  default_intensity; int /*<<< orphan*/  max_intensity; } ;
struct backlight_properties {int /*<<< orphan*/  max_brightness; int /*<<< orphan*/  type; } ;
struct TYPE_8__ {int /*<<< orphan*/  brightness; int /*<<< orphan*/  power; } ;
struct TYPE_9__ {TYPE_1__ props; } ;

/* Variables and functions */
 int /*<<< orphan*/  BACKLIGHT_RAW ; 
 int /*<<< orphan*/  FB_BLANK_UNBLANK ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 struct kb3886bl_machinfo* bl_machinfo ; 
 struct kb3886bl_machinfo* FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct backlight_properties*) ; 
 TYPE_2__* kb3886_backlight_device ; 
 int /*<<< orphan*/  kb3886bl_ops ; 
 int /*<<< orphan*/  FUNC5 (struct backlight_properties*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,TYPE_2__*) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct backlight_properties props;
	struct kb3886bl_machinfo *machinfo = FUNC3(&pdev->dev);

	bl_machinfo = machinfo;
	if (!machinfo->limit_mask)
		machinfo->limit_mask = -1;

	FUNC5(&props, 0, sizeof(struct backlight_properties));
	props.type = BACKLIGHT_RAW;
	props.max_brightness = machinfo->max_intensity;
	kb3886_backlight_device = FUNC4(&pdev->dev,
							"kb3886-bl", &pdev->dev,
							NULL, &kb3886bl_ops,
							&props);
	if (FUNC0(kb3886_backlight_device))
		return FUNC1(kb3886_backlight_device);

	FUNC6(pdev, kb3886_backlight_device);

	kb3886_backlight_device->props.power = FB_BLANK_UNBLANK;
	kb3886_backlight_device->props.brightness = machinfo->default_intensity;
	FUNC2(kb3886_backlight_device);

	return 0;
}