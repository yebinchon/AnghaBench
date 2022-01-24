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
struct TYPE_5__ {struct rs5c348_plat_data* platform_data; } ;
struct spi_device {int max_speed_hz; TYPE_1__ dev; } ;
struct rtc_device {int /*<<< orphan*/ * ops; } ;
struct rs5c348_plat_data {int rtc_24h; struct rtc_device* rtc; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct rtc_device*) ; 
 int FUNC1 (struct rtc_device*) ; 
 int RS5C348_BIT_24H ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RS5C348_REG_CTL1 ; 
 int /*<<< orphan*/  RS5C348_REG_SECS ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,int) ; 
 struct rs5c348_plat_data* FUNC5 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 struct rtc_device* FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  rs5c348_rtc_ops ; 
 int FUNC7 (struct rtc_device*) ; 
 int FUNC8 (struct spi_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct spi_device *spi)
{
	int ret;
	struct rtc_device *rtc;
	struct rs5c348_plat_data *pdata;

	pdata = FUNC5(&spi->dev, sizeof(struct rs5c348_plat_data),
				GFP_KERNEL);
	if (!pdata)
		return -ENOMEM;
	spi->dev.platform_data = pdata;

	/* Check D7 of SECOND register */
	ret = FUNC8(spi, FUNC2(RS5C348_REG_SECS));
	if (ret < 0 || (ret & 0x80)) {
		FUNC3(&spi->dev, "not found.\n");
		return ret;
	}

	FUNC4(&spi->dev, "spiclk %u KHz.\n",
		 (spi->max_speed_hz + 500) / 1000);

	ret = FUNC8(spi, FUNC2(RS5C348_REG_CTL1));
	if (ret < 0)
		return ret;
	if (ret & RS5C348_BIT_24H)
		pdata->rtc_24h = 1;

	rtc = FUNC6(&spi->dev);
	if (FUNC0(rtc))
		return FUNC1(rtc);

	pdata->rtc = rtc;

	rtc->ops = &rs5c348_rtc_ops;

	return FUNC7(rtc);
}