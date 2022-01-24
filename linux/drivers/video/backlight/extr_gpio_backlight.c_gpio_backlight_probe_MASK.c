#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ fwnode; } ;
struct platform_device {TYPE_2__ dev; } ;
struct gpio_backlight_platform_data {char* name; int /*<<< orphan*/  gpio; scalar_t__ def_value; int /*<<< orphan*/  fbdev; } ;
struct gpio_backlight {int /*<<< orphan*/  gpiod; TYPE_2__* dev; scalar_t__ def_value; int /*<<< orphan*/  fbdev; } ;
struct backlight_properties {int max_brightness; int /*<<< orphan*/  type; } ;
struct TYPE_9__ {int brightness; int /*<<< orphan*/  power; } ;
struct backlight_device {TYPE_1__ props; } ;
typedef  int /*<<< orphan*/  props ;

/* Variables and functions */
 int /*<<< orphan*/  BACKLIGHT_RAW ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned long GPIOF_DIR_OUT ; 
 unsigned long GPIOF_INIT_HIGH ; 
 unsigned long GPIOF_INIT_LOW ; 
 scalar_t__ FUNC0 (struct backlight_device*) ; 
 int FUNC1 (struct backlight_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct backlight_device*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*) ; 
 struct gpio_backlight_platform_data* FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 struct backlight_device* FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_2__*,struct gpio_backlight*,int /*<<< orphan*/ *,struct backlight_properties*) ; 
 int FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,unsigned long,char*) ; 
 struct gpio_backlight* FUNC8 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct gpio_backlight*) ; 
 int /*<<< orphan*/  gpio_backlight_ops ; 
 int FUNC10 (struct platform_device*,struct gpio_backlight*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct backlight_properties*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct backlight_device*) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct gpio_backlight_platform_data *pdata =
		FUNC4(&pdev->dev);
	struct backlight_properties props;
	struct backlight_device *bl;
	struct gpio_backlight *gbl;
	int ret;

	gbl = FUNC8(&pdev->dev, sizeof(*gbl), GFP_KERNEL);
	if (gbl == NULL)
		return -ENOMEM;

	gbl->dev = &pdev->dev;

	if (pdev->dev.fwnode) {
		ret = FUNC10(pdev, gbl);
		if (ret)
			return ret;
	} else if (pdata) {
		/*
		 * Legacy platform data GPIO retrieveal. Do not expand
		 * the use of this code path, currently only used by one
		 * SH board.
		 */
		unsigned long flags = GPIOF_DIR_OUT;

		gbl->fbdev = pdata->fbdev;
		gbl->def_value = pdata->def_value;
		flags |= gbl->def_value ? GPIOF_INIT_HIGH : GPIOF_INIT_LOW;

		ret = FUNC7(gbl->dev, pdata->gpio, flags,
					    pdata ? pdata->name : "backlight");
		if (ret < 0) {
			FUNC3(&pdev->dev, "unable to request GPIO\n");
			return ret;
		}
		gbl->gpiod = FUNC11(pdata->gpio);
		if (!gbl->gpiod)
			return -EINVAL;
	} else {
		FUNC3(&pdev->dev,
			"failed to find platform data or device tree node.\n");
		return -ENODEV;
	}

	FUNC12(&props, 0, sizeof(props));
	props.type = BACKLIGHT_RAW;
	props.max_brightness = 1;
	bl = FUNC6(&pdev->dev, FUNC5(&pdev->dev),
					&pdev->dev, gbl, &gpio_backlight_ops,
					&props);
	if (FUNC0(bl)) {
		FUNC3(&pdev->dev, "failed to register backlight\n");
		return FUNC1(bl);
	}

	bl->props.power = FUNC9(gbl);
	bl->props.brightness = 1;

	FUNC2(bl);

	FUNC13(pdev, bl);
	return 0;
}