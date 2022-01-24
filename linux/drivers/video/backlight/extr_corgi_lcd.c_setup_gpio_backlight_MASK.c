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
struct spi_device {int /*<<< orphan*/  dev; } ;
struct corgi_lcd_platform_data {int gpio_backlight_on; int gpio_backlight_cont; } ;
struct corgi_lcd {int gpio_backlight_on; int gpio_backlight_cont; int gpio_backlight_cont_inverted; struct spi_device* spi_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct corgi_lcd *lcd,
				struct corgi_lcd_platform_data *pdata)
{
	struct spi_device *spi = lcd->spi_dev;
	int err;

	lcd->gpio_backlight_on = -1;
	lcd->gpio_backlight_cont = -1;

	if (FUNC3(pdata->gpio_backlight_on)) {
		err = FUNC1(&spi->dev, pdata->gpio_backlight_on,
					"BL_ON");
		if (err) {
			FUNC0(&spi->dev,
				"failed to request GPIO%d for backlight_on\n",
				pdata->gpio_backlight_on);
			return err;
		}

		lcd->gpio_backlight_on = pdata->gpio_backlight_on;
		FUNC2(lcd->gpio_backlight_on, 0);
	}

	if (FUNC3(pdata->gpio_backlight_cont)) {
		err = FUNC1(&spi->dev, pdata->gpio_backlight_cont,
					"BL_CONT");
		if (err) {
			FUNC0(&spi->dev,
				"failed to request GPIO%d for backlight_cont\n",
				pdata->gpio_backlight_cont);
			return err;
		}

		lcd->gpio_backlight_cont = pdata->gpio_backlight_cont;

		/* spitz and akita use both GPIOs for backlight, and
		 * have inverted polarity of GPIO_BACKLIGHT_CONT
		 */
		if (FUNC3(lcd->gpio_backlight_on)) {
			lcd->gpio_backlight_cont_inverted = 1;
			FUNC2(lcd->gpio_backlight_cont, 1);
		} else {
			lcd->gpio_backlight_cont_inverted = 0;
			FUNC2(lcd->gpio_backlight_cont, 0);
		}
	}
	return 0;
}