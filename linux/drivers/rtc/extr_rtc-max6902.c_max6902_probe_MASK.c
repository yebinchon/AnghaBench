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
 int /*<<< orphan*/  MAX6902_REG_SECONDS ; 
 int FUNC1 (struct rtc_device*) ; 
 int /*<<< orphan*/  SPI_MODE_3 ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 struct rtc_device* FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned char*) ; 
 int /*<<< orphan*/  max6902_rtc_ops ; 
 int /*<<< orphan*/  FUNC4 (struct spi_device*,struct rtc_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct spi_device*) ; 

__attribute__((used)) static int FUNC6(struct spi_device *spi)
{
	struct rtc_device *rtc;
	unsigned char tmp;
	int res;

	spi->mode = SPI_MODE_3;
	spi->bits_per_word = 8;
	FUNC5(spi);

	res = FUNC3(&spi->dev, MAX6902_REG_SECONDS, &tmp);
	if (res != 0)
		return res;

	rtc = FUNC2(&spi->dev, "max6902",
				&max6902_rtc_ops, THIS_MODULE);
	if (FUNC0(rtc))
		return FUNC1(rtc);

	FUNC4(spi, rtc);
	return 0;
}