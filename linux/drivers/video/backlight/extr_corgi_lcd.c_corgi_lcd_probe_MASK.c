#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct spi_device {int /*<<< orphan*/  dev; } ;
struct corgi_lcd_platform_data {int /*<<< orphan*/  limit_mask; int /*<<< orphan*/  kick_battery; int /*<<< orphan*/  default_intensity; int /*<<< orphan*/  max_intensity; int /*<<< orphan*/  init_mode; } ;
struct corgi_lcd {int /*<<< orphan*/  limit_mask; TYPE_2__* bl_dev; TYPE_2__* lcd_dev; int /*<<< orphan*/  kick_battery; int /*<<< orphan*/  mode; int /*<<< orphan*/  power; struct spi_device* spi_dev; } ;
struct backlight_properties {int /*<<< orphan*/  max_brightness; int /*<<< orphan*/  type; } ;
struct TYPE_8__ {int /*<<< orphan*/  power; int /*<<< orphan*/  brightness; } ;
struct TYPE_9__ {TYPE_1__ props; } ;

/* Variables and functions */
 int /*<<< orphan*/  BACKLIGHT_RAW ; 
 int /*<<< orphan*/  CORGI_LCD_MODE_VGA ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FB_BLANK_POWERDOWN ; 
 int /*<<< orphan*/  FB_BLANK_UNBLANK ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  corgi_bl_ops ; 
 int /*<<< orphan*/  corgi_lcd_ops ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 struct corgi_lcd_platform_data* FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,struct corgi_lcd*,int /*<<< orphan*/ *,struct backlight_properties*) ; 
 struct corgi_lcd* FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,struct corgi_lcd*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct backlight_properties*,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (struct corgi_lcd*,struct corgi_lcd_platform_data*) ; 
 int /*<<< orphan*/  FUNC11 (struct spi_device*,struct corgi_lcd*) ; 
 struct corgi_lcd* the_corgi_lcd ; 

__attribute__((used)) static int FUNC12(struct spi_device *spi)
{
	struct backlight_properties props;
	struct corgi_lcd_platform_data *pdata = FUNC5(&spi->dev);
	struct corgi_lcd *lcd;
	int ret = 0;

	if (pdata == NULL) {
		FUNC4(&spi->dev, "platform data not available\n");
		return -EINVAL;
	}

	lcd = FUNC7(&spi->dev, sizeof(struct corgi_lcd), GFP_KERNEL);
	if (!lcd)
		return -ENOMEM;

	lcd->spi_dev = spi;

	lcd->lcd_dev = FUNC8(&spi->dev, "corgi_lcd",
						&spi->dev, lcd, &corgi_lcd_ops);
	if (FUNC0(lcd->lcd_dev))
		return FUNC1(lcd->lcd_dev);

	lcd->power = FB_BLANK_POWERDOWN;
	lcd->mode = (pdata) ? pdata->init_mode : CORGI_LCD_MODE_VGA;

	FUNC9(&props, 0, sizeof(struct backlight_properties));
	props.type = BACKLIGHT_RAW;
	props.max_brightness = pdata->max_intensity;
	lcd->bl_dev = FUNC6(&spi->dev, "corgi_bl",
						&spi->dev, lcd, &corgi_bl_ops,
						&props);
	if (FUNC0(lcd->bl_dev))
		return FUNC1(lcd->bl_dev);

	lcd->bl_dev->props.brightness = pdata->default_intensity;
	lcd->bl_dev->props.power = FB_BLANK_UNBLANK;

	ret = FUNC10(lcd, pdata);
	if (ret)
		return ret;

	lcd->kick_battery = pdata->kick_battery;

	FUNC11(spi, lcd);
	FUNC3(lcd->lcd_dev, FB_BLANK_UNBLANK);
	FUNC2(lcd->bl_dev);

	lcd->limit_mask = pdata->limit_mask;
	the_corgi_lcd = lcd;
	return 0;
}