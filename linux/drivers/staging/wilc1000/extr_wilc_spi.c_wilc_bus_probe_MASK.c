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
struct wilc_spi {int dummy; } ;
struct wilc {struct gpio_desc* gpio_irq; struct wilc_spi* bus_data; int /*<<< orphan*/ * dev; } ;
struct spi_device {int /*<<< orphan*/  dev; } ;
struct gpio_desc {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_IN ; 
 int /*<<< orphan*/  GPIO_NUM ; 
 scalar_t__ FUNC0 (struct gpio_desc*) ; 
 int /*<<< orphan*/  WILC_HIF_SPI ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct gpio_desc* FUNC2 (int /*<<< orphan*/ ) ; 
 struct gpio_desc* FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct wilc_spi*) ; 
 struct wilc_spi* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct spi_device*,struct wilc*) ; 
 int FUNC7 (struct wilc**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wilc_hif_spi ; 

__attribute__((used)) static int FUNC8(struct spi_device *spi)
{
	int ret;
	struct wilc *wilc;
	struct gpio_desc *gpio;
	struct wilc_spi *spi_priv;

	spi_priv = FUNC5(sizeof(*spi_priv), GFP_KERNEL);
	if (!spi_priv)
		return -ENOMEM;

	gpio = FUNC3(&spi->dev, "irq", GPIOD_IN);
	if (FUNC0(gpio)) {
		/* get the GPIO descriptor from hardcode GPIO number */
		gpio = FUNC2(GPIO_NUM);
		if (!gpio)
			FUNC1(&spi->dev, "failed to get the irq gpio\n");
	}

	ret = FUNC7(&wilc, &spi->dev, WILC_HIF_SPI, &wilc_hif_spi);
	if (ret) {
		FUNC4(spi_priv);
		return ret;
	}

	FUNC6(spi, wilc);
	wilc->dev = &spi->dev;
	wilc->bus_data = spi_priv;
	wilc->gpio_irq = gpio;

	return 0;
}