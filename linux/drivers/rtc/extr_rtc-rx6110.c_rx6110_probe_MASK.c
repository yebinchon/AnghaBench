#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct spi_device {int bits_per_word; int max_speed_hz; int mode; int /*<<< orphan*/  dev; } ;
struct rx6110_data {TYPE_1__* rtc; TYPE_1__* regmap; } ;
struct TYPE_5__ {int max_user_freq; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  RX6110_DRIVER_NAME ; 
 int SPI_CPHA ; 
 int SPI_CPOL ; 
 int SPI_CS_HIGH ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 struct rx6110_data* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (struct spi_device*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  regmap_spi_config ; 
 int FUNC7 (struct rx6110_data*) ; 
 int /*<<< orphan*/  rx6110_rtc_ops ; 
 int /*<<< orphan*/  FUNC8 (struct spi_device*,struct rx6110_data*) ; 

__attribute__((used)) static int FUNC9(struct spi_device *spi)
{
	struct rx6110_data *rx6110;
	int err;

	if ((spi->bits_per_word && spi->bits_per_word != 8) ||
	    (spi->max_speed_hz > 2000000) ||
	    (spi->mode != (SPI_CS_HIGH | SPI_CPOL | SPI_CPHA))) {
		FUNC3(&spi->dev, "SPI settings: bits_per_word: %d, max_speed_hz: %d, mode: %xh\n",
			 spi->bits_per_word, spi->max_speed_hz, spi->mode);
		FUNC3(&spi->dev, "driving device in an unsupported mode");
	}

	rx6110 = FUNC4(&spi->dev, sizeof(*rx6110), GFP_KERNEL);
	if (!rx6110)
		return -ENOMEM;

	rx6110->regmap = FUNC5(spi, &regmap_spi_config);
	if (FUNC0(rx6110->regmap)) {
		FUNC2(&spi->dev, "regmap init failed for rtc rx6110\n");
		return FUNC1(rx6110->regmap);
	}

	FUNC8(spi, rx6110);

	rx6110->rtc = FUNC6(&spi->dev,
					       RX6110_DRIVER_NAME,
					       &rx6110_rtc_ops, THIS_MODULE);

	if (FUNC0(rx6110->rtc))
		return FUNC1(rx6110->rtc);

	err = FUNC7(rx6110);
	if (err)
		return err;

	rx6110->rtc->max_user_freq = 1;

	return 0;
}