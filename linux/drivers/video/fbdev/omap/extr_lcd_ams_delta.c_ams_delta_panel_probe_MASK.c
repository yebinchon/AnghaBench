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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  max_contrast; } ;
struct lcd_device {TYPE_1__ props; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMS_DELTA_DEFAULT_CONTRAST ; 
 int /*<<< orphan*/  AMS_DELTA_MAX_CONTRAST ; 
 int /*<<< orphan*/  FB_BLANK_UNBLANK ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC0 (struct lcd_device*) ; 
 int FUNC1 (struct lcd_device*) ; 
 int /*<<< orphan*/  ams_delta_lcd_ops ; 
 int /*<<< orphan*/  FUNC2 (struct lcd_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct lcd_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ams_delta_panel ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 struct lcd_device* FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct lcd_device* gpiod_ndisp ; 
 struct lcd_device* gpiod_vblen ; 
 struct lcd_device* FUNC6 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct lcd_device*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct lcd_device *lcd_device = NULL;
	int ret;

	gpiod_vblen = FUNC5(&pdev->dev, "vblen", GPIOD_OUT_LOW);
	if (FUNC0(gpiod_vblen)) {
		ret = FUNC1(gpiod_vblen);
		FUNC4(&pdev->dev, "VBLEN GPIO request failed (%d)\n", ret);
		return ret;
	}

	gpiod_ndisp = FUNC5(&pdev->dev, "ndisp", GPIOD_OUT_LOW);
	if (FUNC0(gpiod_ndisp)) {
		ret = FUNC1(gpiod_ndisp);
		FUNC4(&pdev->dev, "NDISP GPIO request failed (%d)\n", ret);
		return ret;
	}

#ifdef CONFIG_LCD_CLASS_DEVICE
	lcd_device = lcd_device_register("omapfb", &pdev->dev, NULL,
						&ams_delta_lcd_ops);

	if (IS_ERR(lcd_device)) {
		ret = PTR_ERR(lcd_device);
		dev_err(&pdev->dev, "failed to register device\n");
		return ret;
	}

	platform_set_drvdata(pdev, lcd_device);
	lcd_device->props.max_contrast = AMS_DELTA_MAX_CONTRAST;
#endif

	FUNC2(lcd_device, AMS_DELTA_DEFAULT_CONTRAST);
	FUNC3(lcd_device, FB_BLANK_UNBLANK);

	FUNC7(&ams_delta_panel);
	return 0;
}