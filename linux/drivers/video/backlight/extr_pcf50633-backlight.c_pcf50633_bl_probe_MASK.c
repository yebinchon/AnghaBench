#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {struct device* parent; } ;
struct platform_device {TYPE_2__ dev; int /*<<< orphan*/  name; } ;
struct pcf50633_platform_data {struct pcf50633_bl_platform_data* backlight_data; } ;
struct pcf50633_bl_platform_data {int default_brightness; int default_brightness_limit; int /*<<< orphan*/  ramp_time; } ;
struct pcf50633_bl {int brightness_limit; TYPE_3__* bl; scalar_t__ brightness; int /*<<< orphan*/  pcf; } ;
struct device {int dummy; } ;
struct backlight_properties {int max_brightness; int brightness; int /*<<< orphan*/  power; int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  bl_props ;
struct TYPE_9__ {scalar_t__ brightness; } ;
struct TYPE_11__ {TYPE_1__ props; } ;

/* Variables and functions */
 int /*<<< orphan*/  BACKLIGHT_RAW ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FB_BLANK_UNBLANK ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  PCF50633_REG_LEDDIM ; 
 int FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 struct pcf50633_platform_data* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 TYPE_3__* FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_2__*,struct pcf50633_bl*,int /*<<< orphan*/ *,struct backlight_properties*) ; 
 struct pcf50633_bl* FUNC6 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct backlight_properties*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  pcf50633_bl_ops ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct pcf50633_bl*) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct pcf50633_bl *pcf_bl;
	struct device *parent = pdev->dev.parent;
	struct pcf50633_platform_data *pcf50633_data = FUNC3(parent);
	struct pcf50633_bl_platform_data *pdata = pcf50633_data->backlight_data;
	struct backlight_properties bl_props;

	pcf_bl = FUNC6(&pdev->dev, sizeof(*pcf_bl), GFP_KERNEL);
	if (!pcf_bl)
		return -ENOMEM;

	FUNC7(&bl_props, 0, sizeof(bl_props));
	bl_props.type = BACKLIGHT_RAW;
	bl_props.max_brightness = 0x3f;
	bl_props.power = FB_BLANK_UNBLANK;

	if (pdata) {
		bl_props.brightness = pdata->default_brightness;
		pcf_bl->brightness_limit = pdata->default_brightness_limit;
	} else {
		bl_props.brightness = 0x3f;
		pcf_bl->brightness_limit = 0x3f;
	}

	pcf_bl->pcf = FUNC4(pdev->dev.parent);

	pcf_bl->bl = FUNC5(&pdev->dev, pdev->name,
						&pdev->dev, pcf_bl,
						&pcf50633_bl_ops, &bl_props);

	if (FUNC0(pcf_bl->bl))
		return FUNC1(pcf_bl->bl);

	FUNC9(pdev, pcf_bl);

	FUNC8(pcf_bl->pcf, PCF50633_REG_LEDDIM, pdata->ramp_time);

	/*
	 * Should be different from bl_props.brightness, so we do not exit
	 * update_status early the first time it's called
	 */
	pcf_bl->brightness = pcf_bl->bl->props.brightness + 1;

	FUNC2(pcf_bl->bl);

	return 0;
}