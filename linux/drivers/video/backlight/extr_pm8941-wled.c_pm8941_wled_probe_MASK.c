#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct regmap {int dummy; } ;
struct pm8941_wled {int /*<<< orphan*/  name; struct regmap* regmap; } ;
struct TYPE_6__ {int /*<<< orphan*/  of_node; int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct backlight_properties {int /*<<< orphan*/  max_brightness; int /*<<< orphan*/  brightness; int /*<<< orphan*/  type; } ;
struct backlight_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BACKLIGHT_RAW ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PM8941_WLED_DEFAULT_BRIGHTNESS ; 
 int /*<<< orphan*/  PM8941_WLED_REG_VAL_MAX ; 
 int FUNC0 (struct backlight_device*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 struct regmap* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct backlight_device* FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_1__*,struct pm8941_wled*,int /*<<< orphan*/ *,struct backlight_properties*) ; 
 struct pm8941_wled* FUNC4 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct backlight_properties*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct pm8941_wled*,TYPE_1__*) ; 
 int /*<<< orphan*/  pm8941_wled_ops ; 
 int FUNC8 (struct pm8941_wled*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct backlight_properties props;
	struct backlight_device *bl;
	struct pm8941_wled *wled;
	struct regmap *regmap;
	u32 val;
	int rc;

	regmap = FUNC2(pdev->dev.parent, NULL);
	if (!regmap) {
		FUNC1(&pdev->dev, "Unable to get regmap\n");
		return -EINVAL;
	}

	wled = FUNC4(&pdev->dev, sizeof(*wled), GFP_KERNEL);
	if (!wled)
		return -ENOMEM;

	wled->regmap = regmap;

	rc = FUNC7(wled, &pdev->dev);
	if (rc)
		return rc;

	rc = FUNC8(wled);
	if (rc)
		return rc;

	val = PM8941_WLED_DEFAULT_BRIGHTNESS;
	FUNC6(pdev->dev.of_node, "default-brightness", &val);

	FUNC5(&props, 0, sizeof(struct backlight_properties));
	props.type = BACKLIGHT_RAW;
	props.brightness = val;
	props.max_brightness = PM8941_WLED_REG_VAL_MAX;
	bl = FUNC3(&pdev->dev, wled->name,
					    &pdev->dev, wled,
					    &pm8941_wled_ops, &props);
	return FUNC0(bl);
}