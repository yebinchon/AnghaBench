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
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_7__ {struct max8925_backlight_pdata* platform_data; int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct max8925_chip {int /*<<< orphan*/  i2c; } ;
struct max8925_backlight_pdata {scalar_t__ dual_string; scalar_t__ lxw_freq; scalar_t__ lxw_scl; } ;
struct max8925_backlight_data {int /*<<< orphan*/  reg_mode_cntl; scalar_t__ current_brightness; struct max8925_chip* chip; int /*<<< orphan*/  reg_cntl; } ;
struct backlight_properties {void* max_brightness; int /*<<< orphan*/  type; } ;
struct TYPE_6__ {void* brightness; } ;
struct backlight_device {TYPE_1__ props; } ;

/* Variables and functions */
 int /*<<< orphan*/  BACKLIGHT_RAW ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_REG ; 
 scalar_t__ FUNC0 (struct backlight_device*) ; 
 int FUNC1 (scalar_t__) ; 
 void* MAX_BRIGHTNESS ; 
 int FUNC2 (struct backlight_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct backlight_device*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*) ; 
 struct max8925_chip* FUNC5 (int /*<<< orphan*/ ) ; 
 struct backlight_device* FUNC6 (TYPE_2__*,char*,TYPE_2__*,struct max8925_backlight_data*,int /*<<< orphan*/ *,struct backlight_properties*) ; 
 struct max8925_backlight_data* FUNC7 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*) ; 
 int /*<<< orphan*/  max8925_backlight_ops ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned char) ; 
 int /*<<< orphan*/  FUNC10 (struct backlight_properties*,int /*<<< orphan*/ ,int) ; 
 struct resource* FUNC11 (struct platform_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct backlight_device*) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct max8925_chip *chip = FUNC5(pdev->dev.parent);
	struct max8925_backlight_pdata *pdata;
	struct max8925_backlight_data *data;
	struct backlight_device *bl;
	struct backlight_properties props;
	struct resource *res;
	unsigned char value;
	int ret = 0;

	data = FUNC7(&pdev->dev, sizeof(struct max8925_backlight_data),
			    GFP_KERNEL);
	if (data == NULL)
		return -ENOMEM;

	res = FUNC11(pdev, IORESOURCE_REG, 0);
	if (!res) {
		FUNC4(&pdev->dev, "No REG resource for mode control!\n");
		return -ENXIO;
	}
	data->reg_mode_cntl = res->start;
	res = FUNC11(pdev, IORESOURCE_REG, 1);
	if (!res) {
		FUNC4(&pdev->dev, "No REG resource for control!\n");
		return -ENXIO;
	}
	data->reg_cntl = res->start;

	data->chip = chip;
	data->current_brightness = 0;

	FUNC10(&props, 0, sizeof(struct backlight_properties));
	props.type = BACKLIGHT_RAW;
	props.max_brightness = MAX_BRIGHTNESS;
	bl = FUNC6(&pdev->dev, "max8925-backlight",
					&pdev->dev, data,
					&max8925_backlight_ops, &props);
	if (FUNC0(bl)) {
		FUNC4(&pdev->dev, "failed to register backlight\n");
		return FUNC2(bl);
	}
	bl->props.brightness = MAX_BRIGHTNESS;

	FUNC12(pdev, bl);

	value = 0;
	if (!pdev->dev.platform_data)
		FUNC8(pdev);

	pdata = pdev->dev.platform_data;
	if (pdata) {
		if (pdata->lxw_scl)
			value |= (1 << 7);
		if (pdata->lxw_freq)
			value |= (FUNC1(pdata->lxw_freq) << 4);
		if (pdata->dual_string)
			value |= (1 << 1);
	}
	ret = FUNC9(chip->i2c, data->reg_mode_cntl, 0xfe, value);
	if (ret < 0)
		return ret;
	FUNC3(bl);
	return 0;
}