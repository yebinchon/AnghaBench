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
struct tosa_lcd_data {int is_vga; int /*<<< orphan*/ * lcd; struct spi_device* spi; } ;
struct spi_device {int bits_per_word; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOF_OUT_INIT_LOW ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TOSA_GPIO_TG_ON ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 struct tosa_lcd_data* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,struct tosa_lcd_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct spi_device*,struct tosa_lcd_data*) ; 
 int FUNC7 (struct spi_device*) ; 
 int /*<<< orphan*/  tosa_lcd_ops ; 
 int /*<<< orphan*/  FUNC8 (struct tosa_lcd_data*) ; 
 int /*<<< orphan*/  FUNC9 (struct tosa_lcd_data*) ; 
 int /*<<< orphan*/  FUNC10 (struct tosa_lcd_data*) ; 

__attribute__((used)) static int FUNC11(struct spi_device *spi)
{
	int ret;
	struct tosa_lcd_data *data;

	data = FUNC3(&spi->dev, sizeof(struct tosa_lcd_data),
				GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	data->is_vga = true; /* default to VGA mode */

	/*
	 * bits_per_word cannot be configured in platform data
	 */
	spi->bits_per_word = 8;

	ret = FUNC7(spi);
	if (ret < 0)
		return ret;

	data->spi = spi;
	FUNC6(spi, data);

	ret = FUNC2(&spi->dev, TOSA_GPIO_TG_ON,
				GPIOF_OUT_INIT_LOW, "tg #pwr");
	if (ret < 0)
		return ret;

	FUNC5(60);

	FUNC8(data);

	FUNC10(data);

	data->lcd = FUNC4(&spi->dev, "tosa-lcd", &spi->dev,
					data, &tosa_lcd_ops);

	if (FUNC0(data->lcd)) {
		ret = FUNC1(data->lcd);
		data->lcd = NULL;
		goto err_register;
	}

	return 0;

err_register:
	FUNC9(data);
	return ret;
}