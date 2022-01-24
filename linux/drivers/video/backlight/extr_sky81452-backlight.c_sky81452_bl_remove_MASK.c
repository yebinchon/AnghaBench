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
struct sky81452_bl_platform_data {int /*<<< orphan*/  gpio_enable; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {scalar_t__ brightness; int /*<<< orphan*/  power; } ;
struct TYPE_3__ {int /*<<< orphan*/  kobj; } ;
struct backlight_device {TYPE_2__ props; TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FB_BLANK_UNBLANK ; 
 int /*<<< orphan*/  FUNC0 (struct backlight_device*) ; 
 struct sky81452_bl_platform_data* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct backlight_device* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  sky81452_bl_attr_group ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	const struct sky81452_bl_platform_data *pdata =
						FUNC1(&pdev->dev);
	struct backlight_device *bd = FUNC4(pdev);

	FUNC5(&bd->dev.kobj, &sky81452_bl_attr_group);

	bd->props.power = FB_BLANK_UNBLANK;
	bd->props.brightness = 0;
	FUNC0(bd);

	if (FUNC2(pdata->gpio_enable))
		FUNC3(pdata->gpio_enable, 0);

	return 0;
}