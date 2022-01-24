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
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_3__ dev; int /*<<< orphan*/  name; } ;
struct da9052_bl {TYPE_5__* da9052; int /*<<< orphan*/  state; int /*<<< orphan*/  led_reg; scalar_t__ brightness; } ;
struct backlight_properties {void* max_brightness; int /*<<< orphan*/  type; } ;
struct TYPE_7__ {scalar_t__ brightness; void* max_brightness; } ;
struct backlight_device {TYPE_1__ props; } ;
struct TYPE_10__ {int /*<<< orphan*/  dev; } ;
struct TYPE_8__ {int /*<<< orphan*/  driver_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  BACKLIGHT_RAW ; 
 void* DA9052_MAX_BRIGHTNESS ; 
 int /*<<< orphan*/  DA9052_WLEDS_OFF ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct backlight_device*) ; 
 int FUNC1 (struct backlight_device*) ; 
 int FUNC2 (struct da9052_bl*) ; 
 int /*<<< orphan*/  da9052_backlight_ops ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*) ; 
 TYPE_5__* FUNC4 (int /*<<< orphan*/ ) ; 
 struct backlight_device* FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct da9052_bl*,int /*<<< orphan*/ *,struct backlight_properties*) ; 
 struct da9052_bl* FUNC6 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC7 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct backlight_device*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct backlight_device *bl;
	struct backlight_properties props;
	struct da9052_bl *wleds;

	wleds = FUNC6(&pdev->dev, sizeof(struct da9052_bl), GFP_KERNEL);
	if (!wleds)
		return -ENOMEM;

	wleds->da9052 = FUNC4(pdev->dev.parent);
	wleds->brightness = 0;
	wleds->led_reg = FUNC7(pdev)->driver_data;
	wleds->state = DA9052_WLEDS_OFF;

	props.type = BACKLIGHT_RAW;
	props.max_brightness = DA9052_MAX_BRIGHTNESS;

	bl = FUNC5(&pdev->dev, pdev->name,
					wleds->da9052->dev, wleds,
					&da9052_backlight_ops, &props);
	if (FUNC0(bl)) {
		FUNC3(&pdev->dev, "Failed to register backlight\n");
		return FUNC1(bl);
	}

	bl->props.max_brightness = DA9052_MAX_BRIGHTNESS;
	bl->props.brightness = 0;
	FUNC8(pdev, bl);

	return FUNC2(wleds);
}