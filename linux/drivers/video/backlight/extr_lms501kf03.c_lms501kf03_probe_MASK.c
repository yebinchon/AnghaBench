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
struct spi_device {int bits_per_word; int /*<<< orphan*/  dev; } ;
struct lms501kf03 {int /*<<< orphan*/  power; TYPE_1__* lcd_pd; struct lcd_device* ld; int /*<<< orphan*/ * dev; struct spi_device* spi; } ;
struct lcd_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  lcd_enabled; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FB_BLANK_POWERDOWN ; 
 int /*<<< orphan*/  FB_BLANK_UNBLANK ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct lcd_device*) ; 
 int FUNC1 (struct lcd_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 struct lms501kf03* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct lcd_device* FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,struct lms501kf03*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  lms501kf03_lcd_ops ; 
 int /*<<< orphan*/  FUNC7 (struct lms501kf03*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct spi_device*,struct lms501kf03*) ; 
 int FUNC9 (struct spi_device*) ; 

__attribute__((used)) static int FUNC10(struct spi_device *spi)
{
	struct lms501kf03 *lcd = NULL;
	struct lcd_device *ld = NULL;
	int ret = 0;

	lcd = FUNC5(&spi->dev, sizeof(struct lms501kf03), GFP_KERNEL);
	if (!lcd)
		return -ENOMEM;

	/* lms501kf03 lcd panel uses 3-wire 9-bit SPI Mode. */
	spi->bits_per_word = 9;

	ret = FUNC9(spi);
	if (ret < 0) {
		FUNC2(&spi->dev, "spi setup failed.\n");
		return ret;
	}

	lcd->spi = spi;
	lcd->dev = &spi->dev;

	lcd->lcd_pd = FUNC3(&spi->dev);
	if (!lcd->lcd_pd) {
		FUNC2(&spi->dev, "platform data is NULL\n");
		return -EINVAL;
	}

	ld = FUNC6(&spi->dev, "lms501kf03", &spi->dev, lcd,
					&lms501kf03_lcd_ops);
	if (FUNC0(ld))
		return FUNC1(ld);

	lcd->ld = ld;

	if (!lcd->lcd_pd->lcd_enabled) {
		/*
		 * if lcd panel was off from bootloader then
		 * current lcd status is powerdown and then
		 * it enables lcd panel.
		 */
		lcd->power = FB_BLANK_POWERDOWN;

		FUNC7(lcd, FB_BLANK_UNBLANK);
	} else {
		lcd->power = FB_BLANK_UNBLANK;
	}

	FUNC8(spi, lcd);

	FUNC4(&spi->dev, "lms501kf03 panel driver has been probed.\n");

	return 0;
}