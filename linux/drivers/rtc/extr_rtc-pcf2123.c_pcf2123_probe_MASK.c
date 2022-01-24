#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct spi_device {int max_speed_hz; scalar_t__ irq; int /*<<< orphan*/  dev; } ;
struct rtc_time {int dummy; } ;
struct rtc_device {int uie_unsupported; int set_start_time; int /*<<< orphan*/  range_max; int /*<<< orphan*/  range_min; int /*<<< orphan*/ * ops; } ;
struct pcf2123_data {struct rtc_device* rtc; struct rtc_device* map; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;
struct TYPE_4__ {TYPE_1__ driver; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_LOW ; 
 scalar_t__ FUNC0 (struct rtc_device*) ; 
 int FUNC1 (struct rtc_device*) ; 
 int /*<<< orphan*/  RTC_TIMESTAMP_BEGIN_2000 ; 
 int /*<<< orphan*/  RTC_TIMESTAMP_END_2099 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct pcf2123_data*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 struct pcf2123_data* FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct rtc_device* FUNC7 (struct spi_device*,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct rtc_device* FUNC9 (int /*<<< orphan*/ *) ; 
 TYPE_2__ pcf2123_driver ; 
 int /*<<< orphan*/  pcf2123_regmap_config ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pcf2123_rtc_irq ; 
 int /*<<< orphan*/  pcf2123_rtc_ops ; 
 int FUNC11 (int /*<<< orphan*/ *,struct rtc_time*) ; 
 int FUNC12 (struct rtc_device*) ; 

__attribute__((used)) static int FUNC13(struct spi_device *spi)
{
	struct rtc_device *rtc;
	struct rtc_time tm;
	struct pcf2123_data *pcf2123;
	int ret = 0;

	pcf2123 = FUNC6(&spi->dev, sizeof(struct pcf2123_data),
				GFP_KERNEL);
	if (!pcf2123)
		return -ENOMEM;

	FUNC4(&spi->dev, pcf2123);

	pcf2123->map = FUNC7(spi, &pcf2123_regmap_config);
	if (FUNC0(pcf2123->map)) {
		FUNC2(&spi->dev, "regmap init failed.\n");
		return FUNC1(pcf2123->map);
	}

	ret = FUNC11(&spi->dev, &tm);
	if (ret < 0) {
		ret = FUNC10(&spi->dev);
		if (ret < 0) {
			FUNC2(&spi->dev, "chip not found\n");
			return ret;
		}
	}

	FUNC3(&spi->dev, "spiclk %u KHz.\n",
			(spi->max_speed_hz + 500) / 1000);

	/* Finalize the initialization */
	rtc = FUNC9(&spi->dev);
	if (FUNC0(rtc))
		return FUNC1(rtc);

	pcf2123->rtc = rtc;

	/* Register alarm irq */
	if (spi->irq > 0) {
		ret = FUNC8(&spi->dev, spi->irq, NULL,
				pcf2123_rtc_irq,
				IRQF_TRIGGER_LOW | IRQF_ONESHOT,
				pcf2123_driver.driver.name, &spi->dev);
		if (!ret)
			FUNC5(&spi->dev, true);
		else
			FUNC2(&spi->dev, "could not request irq.\n");
	}

	/* The PCF2123's alarm only has minute accuracy. Must add timer
	 * support to this driver to generate interrupts more than once
	 * per minute.
	 */
	rtc->uie_unsupported = 1;
	rtc->ops = &pcf2123_rtc_ops;
	rtc->range_min = RTC_TIMESTAMP_BEGIN_2000;
	rtc->range_max = RTC_TIMESTAMP_END_2099;
	rtc->set_start_time = true;

	ret = FUNC12(rtc);
	if (ret)
		return ret;

	return 0;
}