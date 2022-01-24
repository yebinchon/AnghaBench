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
struct spi_device {int bits_per_word; int /*<<< orphan*/  dev; int /*<<< orphan*/  mode; } ;
struct rtc_device {int dummy; } ;
struct regmap_config {int reg_bits; int val_bits; int read_flag_mask; int max_register; int /*<<< orphan*/ * wr_table; } ;
typedef  struct rtc_device regmap ;
typedef  int /*<<< orphan*/  config ;

/* Variables and functions */
 int /*<<< orphan*/  DS1347_CONTROL_REG ; 
 int /*<<< orphan*/  DS1347_SECONDS_REG ; 
 int /*<<< orphan*/  DS1347_STATUS_REG ; 
 scalar_t__ FUNC0 (struct rtc_device*) ; 
 int FUNC1 (struct rtc_device*) ; 
 int /*<<< orphan*/  SPI_MODE_3 ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,unsigned int) ; 
 struct rtc_device* FUNC4 (struct spi_device*,struct regmap_config*) ; 
 struct rtc_device* FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ds1347_access_table ; 
 int /*<<< orphan*/  ds1347_rtc_ops ; 
 int /*<<< orphan*/  FUNC6 (struct regmap_config*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct rtc_device*,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC8 (struct rtc_device*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct spi_device*,struct rtc_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct spi_device*) ; 

__attribute__((used)) static int FUNC11(struct spi_device *spi)
{
	struct rtc_device *rtc;
	struct regmap_config config;
	struct regmap *map;
	unsigned int data;
	int res;

	FUNC6(&config, 0, sizeof(config));
	config.reg_bits = 8;
	config.val_bits = 8;
	config.read_flag_mask = 0x80;
	config.max_register = 0x3F;
	config.wr_table = &ds1347_access_table;

	/* spi setup with ds1347 in mode 3 and bits per word as 8 */
	spi->mode = SPI_MODE_3;
	spi->bits_per_word = 8;
	FUNC10(spi);

	map = FUNC4(spi, &config);

	if (FUNC0(map)) {
		FUNC2(&spi->dev, "ds1347 regmap init spi failed\n");
		return FUNC1(map);
	}

	FUNC9(spi, map);

	/* RTC Settings */
	res = FUNC7(map, DS1347_SECONDS_REG, &data);
	if (res)
		return res;

	/* Disable the write protect of rtc */
	FUNC7(map, DS1347_CONTROL_REG, &data);
	data = data & ~(1<<7);
	FUNC8(map, DS1347_CONTROL_REG, data);

	/* Enable the oscillator , disable the oscillator stop flag,
	 and glitch filter to reduce current consumption */
	FUNC7(map, DS1347_STATUS_REG, &data);
	data = data & 0x1B;
	FUNC8(map, DS1347_STATUS_REG, data);

	/* display the settings */
	FUNC7(map, DS1347_CONTROL_REG, &data);
	FUNC3(&spi->dev, "DS1347 RTC CTRL Reg = 0x%02x\n", data);

	FUNC7(map, DS1347_STATUS_REG, &data);
	FUNC3(&spi->dev, "DS1347 RTC Status Reg = 0x%02x\n", data);

	rtc = FUNC5(&spi->dev, "ds1347",
				&ds1347_rtc_ops, THIS_MODULE);

	if (FUNC0(rtc))
		return FUNC1(rtc);

	return 0;
}