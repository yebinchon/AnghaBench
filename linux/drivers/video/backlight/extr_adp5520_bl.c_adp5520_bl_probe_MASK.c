#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_3__ dev; int /*<<< orphan*/  name; int /*<<< orphan*/  id; } ;
struct backlight_properties {void* max_brightness; int /*<<< orphan*/  type; } ;
struct TYPE_9__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_8__ {void* brightness; } ;
struct backlight_device {TYPE_2__ dev; TYPE_1__ props; } ;
struct adp5520_bl {TYPE_5__* pdata; int /*<<< orphan*/  master; int /*<<< orphan*/  lock; scalar_t__ current_brightness; int /*<<< orphan*/  id; } ;
struct TYPE_11__ {scalar_t__ en_ambl_sens; } ;

/* Variables and functions */
 void* ADP5020_MAX_BRIGHTNESS ; 
 int /*<<< orphan*/  BACKLIGHT_RAW ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct backlight_device*) ; 
 int FUNC1 (struct backlight_device*) ; 
 int /*<<< orphan*/  adp5520_bl_attr_group ; 
 int /*<<< orphan*/  adp5520_bl_ops ; 
 int FUNC2 (struct backlight_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct backlight_device*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,char*) ; 
 TYPE_5__* FUNC5 (TYPE_3__*) ; 
 struct backlight_device* FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct adp5520_bl*,int /*<<< orphan*/ *,struct backlight_properties*) ; 
 struct adp5520_bl* FUNC7 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct backlight_properties*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct backlight_device*) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct backlight_properties props;
	struct backlight_device *bl;
	struct adp5520_bl *data;
	int ret = 0;

	data = FUNC7(&pdev->dev, sizeof(*data), GFP_KERNEL);
	if (data == NULL)
		return -ENOMEM;

	data->master = pdev->dev.parent;
	data->pdata = FUNC5(&pdev->dev);

	if (data->pdata  == NULL) {
		FUNC4(&pdev->dev, "missing platform data\n");
		return -ENODEV;
	}

	data->id = pdev->id;
	data->current_brightness = 0;

	FUNC9(&data->lock);

	FUNC8(&props, 0, sizeof(struct backlight_properties));
	props.type = BACKLIGHT_RAW;
	props.max_brightness = ADP5020_MAX_BRIGHTNESS;
	bl = FUNC6(&pdev->dev, pdev->name,
					data->master, data, &adp5520_bl_ops,
					&props);
	if (FUNC0(bl)) {
		FUNC4(&pdev->dev, "failed to register backlight\n");
		return FUNC1(bl);
	}

	bl->props.brightness = ADP5020_MAX_BRIGHTNESS;
	if (data->pdata->en_ambl_sens)
		ret = FUNC11(&bl->dev.kobj,
			&adp5520_bl_attr_group);

	if (ret) {
		FUNC4(&pdev->dev, "failed to register sysfs\n");
		return ret;
	}

	FUNC10(pdev, bl);
	ret = FUNC2(bl);
	if (ret) {
		FUNC4(&pdev->dev, "failed to setup\n");
		if (data->pdata->en_ambl_sens)
			FUNC12(&bl->dev.kobj,
					&adp5520_bl_attr_group);
		return ret;
	}

	FUNC3(bl);

	return 0;
}