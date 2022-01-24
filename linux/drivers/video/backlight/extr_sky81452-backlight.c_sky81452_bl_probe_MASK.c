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
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct sky81452_bl_platform_data {char* name; TYPE_1__ dev; int /*<<< orphan*/  gpio_enable; } ;
struct regmap {int dummy; } ;
struct device {int /*<<< orphan*/  parent; } ;
struct platform_device {struct device dev; } ;
struct backlight_properties {int /*<<< orphan*/  max_brightness; } ;
struct backlight_device {char* name; TYPE_1__ dev; int /*<<< orphan*/  gpio_enable; } ;
typedef  int /*<<< orphan*/  props ;

/* Variables and functions */
 int /*<<< orphan*/  GPIOF_OUT_INIT_HIGH ; 
 scalar_t__ FUNC0 (struct sky81452_bl_platform_data*) ; 
 int FUNC1 (struct sky81452_bl_platform_data*) ; 
 char* SKY81452_DEFAULT_NAME ; 
 int /*<<< orphan*/  SKY81452_MAX_BRIGHTNESS ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 struct regmap* FUNC3 (int /*<<< orphan*/ ) ; 
 struct sky81452_bl_platform_data* FUNC4 (struct device*) ; 
 struct sky81452_bl_platform_data* FUNC5 (struct device*,char const*,struct device*,struct regmap*,int /*<<< orphan*/ *,struct backlight_properties*) ; 
 int FUNC6 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct backlight_properties*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct sky81452_bl_platform_data*) ; 
 int /*<<< orphan*/  sky81452_bl_attr_group ; 
 int FUNC10 (struct regmap*,struct sky81452_bl_platform_data*) ; 
 int /*<<< orphan*/  sky81452_bl_ops ; 
 struct sky81452_bl_platform_data* FUNC11 (struct device*) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct regmap *regmap = FUNC3(dev->parent);
	struct sky81452_bl_platform_data *pdata = FUNC4(dev);
	struct backlight_device *bd;
	struct backlight_properties props;
	const char *name;
	int ret;

	if (!pdata) {
		pdata = FUNC11(dev);
		if (FUNC0(pdata))
			return FUNC1(pdata);
	}

	if (FUNC7(pdata->gpio_enable)) {
		ret = FUNC6(dev, pdata->gpio_enable,
					GPIOF_OUT_INIT_HIGH, "sky81452-en");
		if (ret < 0) {
			FUNC2(dev, "failed to request GPIO. err=%d\n", ret);
			return ret;
		}
	}

	ret = FUNC10(regmap, pdata);
	if (ret < 0) {
		FUNC2(dev, "failed to initialize. err=%d\n", ret);
		return ret;
	}

	FUNC8(&props, 0, sizeof(props));
	props.max_brightness = SKY81452_MAX_BRIGHTNESS,
	name = pdata->name ? pdata->name : SKY81452_DEFAULT_NAME;
	bd = FUNC5(dev, name, dev, regmap,
						&sky81452_bl_ops, &props);
	if (FUNC0(bd)) {
		FUNC2(dev, "failed to register. err=%ld\n", FUNC1(bd));
		return FUNC1(bd);
	}

	FUNC9(pdev, bd);

	ret = FUNC12(&bd->dev.kobj, &sky81452_bl_attr_group);
	if (ret < 0) {
		FUNC2(dev, "failed to create attribute. err=%d\n", ret);
		return ret;
	}

	return ret;
}