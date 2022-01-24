#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct stmp3xxx_rtc_data {int irq_alarm; TYPE_1__* rtc; scalar_t__ io; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_14__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_3__ dev; } ;
struct TYPE_13__ {int /*<<< orphan*/  range_max; int /*<<< orphan*/ * ops; } ;

/* Variables and functions */
 int EIO ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 scalar_t__ STMP3XXX_RTC_CTRL ; 
 int STMP3XXX_RTC_CTRL_ALARM_IRQ_EN ; 
 int STMP3XXX_RTC_CTRL_ONEMSEC_IRQ_EN ; 
 int STMP3XXX_RTC_CTRL_WATCHDOGEN ; 
 scalar_t__ STMP3XXX_RTC_PERSISTENT0 ; 
 int STMP3XXX_RTC_PERSISTENT0_ALARM_EN ; 
 int STMP3XXX_RTC_PERSISTENT0_ALARM_WAKE ; 
 int STMP3XXX_RTC_PERSISTENT0_ALARM_WAKE_EN ; 
 int STMP3XXX_RTC_PERSISTENT0_CLOCKSOURCE ; 
 int STMP3XXX_RTC_PERSISTENT0_XTAL24MHZ_PWRUP ; 
 int STMP3XXX_RTC_PERSISTENT0_XTAL32KHZ_PWRUP ; 
 int STMP3XXX_RTC_PERSISTENT0_XTAL32_FREQ ; 
 scalar_t__ STMP3XXX_RTC_STAT ; 
 int STMP3XXX_RTC_STAT_RTC_PRESENT ; 
 int STMP3XXX_RTC_STAT_XTAL32000_PRESENT ; 
 int STMP3XXX_RTC_STAT_XTAL32768_PRESENT ; 
 scalar_t__ STMP_OFFSET_REG_CLR ; 
 scalar_t__ STMP_OFFSET_REG_SET ; 
 int /*<<< orphan*/  U32_MAX ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,char*) ; 
 scalar_t__ FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct stmp3xxx_rtc_data* FUNC6 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_3__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,TYPE_3__*) ; 
 TYPE_1__* FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int*) ; 
 int FUNC10 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC11 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct stmp3xxx_rtc_data*) ; 
 int FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (struct resource*) ; 
 int FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  stmp3xxx_rtc_interrupt ; 
 int /*<<< orphan*/  stmp3xxx_rtc_ops ; 
 int /*<<< orphan*/  FUNC16 (struct platform_device*) ; 
 int FUNC17 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC19(struct platform_device *pdev)
{
	struct stmp3xxx_rtc_data *rtc_data;
	struct resource *r;
	u32 rtc_stat;
	u32 pers0_set, pers0_clr;
	u32 crystalfreq = 0;
	int err;

	rtc_data = FUNC6(&pdev->dev, sizeof(*rtc_data), GFP_KERNEL);
	if (!rtc_data)
		return -ENOMEM;

	r = FUNC11(pdev, IORESOURCE_MEM, 0);
	if (!r) {
		FUNC2(&pdev->dev, "failed to get resource\n");
		return -ENXIO;
	}

	rtc_data->io = FUNC5(&pdev->dev, r->start, FUNC14(r));
	if (!rtc_data->io) {
		FUNC2(&pdev->dev, "ioremap failed\n");
		return -EIO;
	}

	rtc_data->irq_alarm = FUNC10(pdev, 0);

	rtc_stat = FUNC13(rtc_data->io + STMP3XXX_RTC_STAT);
	if (!(rtc_stat & STMP3XXX_RTC_STAT_RTC_PRESENT)) {
		FUNC2(&pdev->dev, "no device onboard\n");
		return -ENODEV;
	}

	FUNC12(pdev, rtc_data);

	/*
	 * Resetting the rtc stops the watchdog timer that is potentially
	 * running. So (assuming it is running on purpose) don't reset if the
	 * watchdog is enabled.
	 */
	if (FUNC13(rtc_data->io + STMP3XXX_RTC_CTRL) &
	    STMP3XXX_RTC_CTRL_WATCHDOGEN) {
		FUNC3(&pdev->dev,
			 "Watchdog is running, skip resetting rtc\n");
	} else {
		err = FUNC17(rtc_data->io);
		if (err) {
			FUNC2(&pdev->dev, "stmp_reset_block failed: %d\n",
				err);
			return err;
		}
	}

	/*
	 * Obviously the rtc needs a clock input to be able to run.
	 * This clock can be provided by an external 32k crystal. If that one is
	 * missing XTAL must not be disabled in suspend which consumes a
	 * lot of power. Normally the presence and exact frequency (supported
	 * are 32000 Hz and 32768 Hz) is detectable from fuses, but as reality
	 * proves these fuses are not blown correctly on all machines, so the
	 * frequency can be overridden in the device tree.
	 */
	if (rtc_stat & STMP3XXX_RTC_STAT_XTAL32000_PRESENT)
		crystalfreq = 32000;
	else if (rtc_stat & STMP3XXX_RTC_STAT_XTAL32768_PRESENT)
		crystalfreq = 32768;

	FUNC9(pdev->dev.of_node, "stmp,crystal-freq",
			     &crystalfreq);

	switch (crystalfreq) {
	case 32000:
		/* keep 32kHz crystal running in low-power mode */
		pers0_set = STMP3XXX_RTC_PERSISTENT0_XTAL32_FREQ |
			STMP3XXX_RTC_PERSISTENT0_XTAL32KHZ_PWRUP |
			STMP3XXX_RTC_PERSISTENT0_CLOCKSOURCE;
		pers0_clr = STMP3XXX_RTC_PERSISTENT0_XTAL24MHZ_PWRUP;
		break;
	case 32768:
		/* keep 32.768kHz crystal running in low-power mode */
		pers0_set = STMP3XXX_RTC_PERSISTENT0_XTAL32KHZ_PWRUP |
			STMP3XXX_RTC_PERSISTENT0_CLOCKSOURCE;
		pers0_clr = STMP3XXX_RTC_PERSISTENT0_XTAL24MHZ_PWRUP |
			STMP3XXX_RTC_PERSISTENT0_XTAL32_FREQ;
		break;
	default:
		FUNC4(&pdev->dev,
			 "invalid crystal-freq specified in device-tree. Assuming no crystal\n");
		/* fall-through */
	case 0:
		/* keep XTAL on in low-power mode */
		pers0_set = STMP3XXX_RTC_PERSISTENT0_XTAL24MHZ_PWRUP;
		pers0_clr = STMP3XXX_RTC_PERSISTENT0_XTAL32KHZ_PWRUP |
			STMP3XXX_RTC_PERSISTENT0_CLOCKSOURCE;
	}

	FUNC18(pers0_set, rtc_data->io + STMP3XXX_RTC_PERSISTENT0 +
			STMP_OFFSET_REG_SET);

	FUNC18(STMP3XXX_RTC_PERSISTENT0_ALARM_EN |
			STMP3XXX_RTC_PERSISTENT0_ALARM_WAKE_EN |
			STMP3XXX_RTC_PERSISTENT0_ALARM_WAKE | pers0_clr,
		rtc_data->io + STMP3XXX_RTC_PERSISTENT0 + STMP_OFFSET_REG_CLR);

	FUNC18(STMP3XXX_RTC_CTRL_ONEMSEC_IRQ_EN |
			STMP3XXX_RTC_CTRL_ALARM_IRQ_EN,
		rtc_data->io + STMP3XXX_RTC_CTRL + STMP_OFFSET_REG_CLR);

	rtc_data->rtc = FUNC8(&pdev->dev);
	if (FUNC0(rtc_data->rtc))
		return FUNC1(rtc_data->rtc);

	err = FUNC7(&pdev->dev, rtc_data->irq_alarm,
			stmp3xxx_rtc_interrupt, 0, "RTC alarm", &pdev->dev);
	if (err) {
		FUNC2(&pdev->dev, "Cannot claim IRQ%d\n",
			rtc_data->irq_alarm);
		return err;
	}

	rtc_data->rtc->ops = &stmp3xxx_rtc_ops;
	rtc_data->rtc->range_max = U32_MAX;

	err = FUNC15(rtc_data->rtc);
	if (err)
		return err;

	FUNC16(pdev);
	return 0;
}