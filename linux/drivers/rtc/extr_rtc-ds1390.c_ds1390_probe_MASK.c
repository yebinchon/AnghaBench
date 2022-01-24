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
struct TYPE_5__ {scalar_t__ of_node; } ;
struct spi_device {int bits_per_word; TYPE_1__ dev; int /*<<< orphan*/  mode; } ;
struct ds1390 {int /*<<< orphan*/  rtc; } ;

/* Variables and functions */
 int /*<<< orphan*/  DS1390_REG_SECONDS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPI_MODE_3 ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 struct ds1390* FUNC3 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,unsigned char*) ; 
 int /*<<< orphan*/  ds1390_rtc_ops ; 
 int /*<<< orphan*/  FUNC6 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct spi_device*,struct ds1390*) ; 
 int /*<<< orphan*/  FUNC8 (struct spi_device*) ; 

__attribute__((used)) static int FUNC9(struct spi_device *spi)
{
	unsigned char tmp;
	struct ds1390 *chip;
	int res;

	spi->mode = SPI_MODE_3;
	spi->bits_per_word = 8;
	FUNC8(spi);

	chip = FUNC3(&spi->dev, sizeof(*chip), GFP_KERNEL);
	if (!chip)
		return -ENOMEM;

	FUNC7(spi, chip);

	res = FUNC5(&spi->dev, DS1390_REG_SECONDS, &tmp);
	if (res != 0) {
		FUNC2(&spi->dev, "unable to read device\n");
		return res;
	}

	if (spi->dev.of_node)
		FUNC6(spi);

	chip->rtc = FUNC4(&spi->dev, "ds1390",
					&ds1390_rtc_ops, THIS_MODULE);
	if (FUNC0(chip->rtc)) {
		FUNC2(&spi->dev, "unable to register device\n");
		res = FUNC1(chip->rtc);
	}

	return res;
}