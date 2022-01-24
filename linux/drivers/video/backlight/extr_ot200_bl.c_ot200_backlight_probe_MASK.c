#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct platform_device {int /*<<< orphan*/  dev; } ;
struct ot200_backlight_data {int current_brightness; } ;
struct backlight_properties {int max_brightness; int brightness; int /*<<< orphan*/  type; } ;
struct backlight_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BACKLIGHT_RAW ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIO_DIMM ; 
 int /*<<< orphan*/  GPIO_OUTPUT_AUX1 ; 
 int /*<<< orphan*/  GPIO_OUTPUT_ENABLE ; 
 scalar_t__ FUNC0 (struct backlight_device*) ; 
 int /*<<< orphan*/  MAX_COMP2 ; 
 int /*<<< orphan*/  MFGPT_DOMAIN_ANY ; 
 int /*<<< orphan*/  MFGPT_REG_CMP1 ; 
 int /*<<< orphan*/  MFGPT_REG_CMP2 ; 
 int /*<<< orphan*/  MFGPT_REG_SETUP ; 
 int FUNC1 (struct backlight_device*) ; 
 int /*<<< orphan*/  PWM_SETUP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct backlight_device* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ot200_backlight_data*,int /*<<< orphan*/ *,struct backlight_properties*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 struct ot200_backlight_data* FUNC10 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ot200_backlight_ops ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct backlight_device*) ; 
 int /*<<< orphan*/  pwm_timer ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct backlight_device *bl;
	struct ot200_backlight_data *data;
	struct backlight_properties props;
	int retval = 0;

	/* request gpio */
	if (FUNC9(&pdev->dev, GPIO_DIMM,
				"ot200 backlight dimmer") < 0) {
		FUNC6(&pdev->dev, "failed to request GPIO %d\n", GPIO_DIMM);
		return -ENODEV;
	}

	/* request timer */
	pwm_timer = FUNC3(7, MFGPT_DOMAIN_ANY);
	if (!pwm_timer) {
		FUNC6(&pdev->dev, "MFGPT 7 not available\n");
		return -ENODEV;
	}

	data = FUNC10(&pdev->dev, sizeof(*data), GFP_KERNEL);
	if (!data) {
		retval = -ENOMEM;
		goto error_devm_kzalloc;
	}

	/* setup gpio */
	FUNC2(GPIO_DIMM, GPIO_OUTPUT_ENABLE);
	FUNC2(GPIO_DIMM, GPIO_OUTPUT_AUX1);

	/* setup timer */
	FUNC5(pwm_timer, MFGPT_REG_CMP1, 0);
	FUNC5(pwm_timer, MFGPT_REG_CMP2, MAX_COMP2);
	FUNC5(pwm_timer, MFGPT_REG_SETUP, PWM_SETUP);

	data->current_brightness = 100;
	props.max_brightness = 100;
	props.brightness = 100;
	props.type = BACKLIGHT_RAW;

	bl = FUNC8(&pdev->dev, FUNC7(&pdev->dev),
					&pdev->dev, data, &ot200_backlight_ops,
					&props);
	if (FUNC0(bl)) {
		FUNC6(&pdev->dev, "failed to register backlight\n");
		retval = FUNC1(bl);
		goto error_devm_kzalloc;
	}

	FUNC11(pdev, bl);

	return 0;

error_devm_kzalloc:
	FUNC4(pwm_timer);
	return retval;
}