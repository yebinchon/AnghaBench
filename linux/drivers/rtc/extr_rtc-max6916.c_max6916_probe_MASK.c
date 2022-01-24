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

/* Variables and functions */
 scalar_t__ FUNC0 (struct rtc_device*) ; 
 int /*<<< orphan*/  MAX6916_CONTROL_REG ; 
 int /*<<< orphan*/  MAX6916_SECONDS_REG ; 
 int /*<<< orphan*/  MAX6916_STATUS_REG ; 
 int FUNC1 (struct rtc_device*) ; 
 int /*<<< orphan*/  SPI_MODE_3 ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,unsigned char) ; 
 struct rtc_device* FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned char*) ; 
 int /*<<< orphan*/  max6916_rtc_ops ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC6 (struct spi_device*,struct rtc_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct spi_device*) ; 

__attribute__((used)) static int FUNC8(struct spi_device *spi)
{
	struct rtc_device *rtc;
	unsigned char data;
	int res;

	/* spi setup with max6916 in mode 3 and bits per word as 8 */
	spi->mode = SPI_MODE_3;
	spi->bits_per_word = 8;
	FUNC7(spi);

	/* RTC Settings */
	res = FUNC4(&spi->dev, MAX6916_SECONDS_REG, &data);
	if (res)
		return res;

	/* Disable the write protect of rtc */
	FUNC4(&spi->dev, MAX6916_CONTROL_REG, &data);
	data = data & ~(1 << 7);
	FUNC5(&spi->dev, MAX6916_CONTROL_REG, data);

	/*Enable oscillator,disable oscillator stop flag, glitch filter*/
	FUNC4(&spi->dev, MAX6916_STATUS_REG, &data);
	data = data & 0x1B;
	FUNC5(&spi->dev, MAX6916_STATUS_REG, data);

	/* display the settings */
	FUNC4(&spi->dev, MAX6916_CONTROL_REG, &data);
	FUNC2(&spi->dev, "MAX6916 RTC CTRL Reg = 0x%02x\n", data);

	FUNC4(&spi->dev, MAX6916_STATUS_REG, &data);
	FUNC2(&spi->dev, "MAX6916 RTC Status Reg = 0x%02x\n", data);

	rtc = FUNC3(&spi->dev, "max6916",
				       &max6916_rtc_ops, THIS_MODULE);
	if (FUNC0(rtc))
		return FUNC1(rtc);

	FUNC6(spi, rtc);

	return 0;
}