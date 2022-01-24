#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  parent; } ;
struct platform_device {int id; TYPE_2__ dev; int /*<<< orphan*/  name; } ;
struct da903x_backlight_data {int id; int /*<<< orphan*/  da903x_dev; scalar_t__ current_brightness; } ;
struct da9034_backlight_pdata {int /*<<< orphan*/  output_current; } ;
struct backlight_properties {int max_brightness; int /*<<< orphan*/  type; } ;
struct TYPE_6__ {int brightness; } ;
struct backlight_device {TYPE_1__ props; } ;
typedef  int /*<<< orphan*/  props ;

/* Variables and functions */
 int /*<<< orphan*/  BACKLIGHT_RAW ; 
#define  DA9030_ID_WLED 129 
 int DA9030_MAX_BRIGHTNESS ; 
#define  DA9034_ID_WLED 128 
 int DA9034_MAX_BRIGHTNESS ; 
 int /*<<< orphan*/  DA9034_WLED_CONTROL2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct backlight_device*) ; 
 int FUNC2 (struct backlight_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct backlight_device*) ; 
 int /*<<< orphan*/  da903x_backlight_ops ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*,...) ; 
 struct da9034_backlight_pdata* FUNC6 (TYPE_2__*) ; 
 struct backlight_device* FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct da903x_backlight_data*,int /*<<< orphan*/ *,struct backlight_properties*) ; 
 struct da903x_backlight_data* FUNC8 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct backlight_properties*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct backlight_device*) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct da9034_backlight_pdata *pdata = FUNC6(&pdev->dev);
	struct da903x_backlight_data *data;
	struct backlight_device *bl;
	struct backlight_properties props;
	int max_brightness;

	data = FUNC8(&pdev->dev, sizeof(*data), GFP_KERNEL);
	if (data == NULL)
		return -ENOMEM;

	switch (pdev->id) {
	case DA9030_ID_WLED:
		max_brightness = DA9030_MAX_BRIGHTNESS;
		break;
	case DA9034_ID_WLED:
		max_brightness = DA9034_MAX_BRIGHTNESS;
		break;
	default:
		FUNC5(&pdev->dev, "invalid backlight device ID(%d)\n",
				pdev->id);
		return -EINVAL;
	}

	data->id = pdev->id;
	data->da903x_dev = pdev->dev.parent;
	data->current_brightness = 0;

	/* adjust the WLED output current */
	if (pdata)
		FUNC4(data->da903x_dev, DA9034_WLED_CONTROL2,
				FUNC0(pdata->output_current));

	FUNC9(&props, 0, sizeof(props));
	props.type = BACKLIGHT_RAW;
	props.max_brightness = max_brightness;
	bl = FUNC7(&pdev->dev, pdev->name,
					data->da903x_dev, data,
					&da903x_backlight_ops, &props);
	if (FUNC1(bl)) {
		FUNC5(&pdev->dev, "failed to register backlight\n");
		return FUNC2(bl);
	}

	bl->props.brightness = max_brightness;

	FUNC10(pdev, bl);
	FUNC3(bl);
	return 0;
}