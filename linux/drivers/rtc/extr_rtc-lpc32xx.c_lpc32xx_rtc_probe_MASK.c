#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct resource {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  name; } ;
struct lpc32xx_rtc {int irq; TYPE_1__* rtc; int /*<<< orphan*/  lock; TYPE_1__* rtc_base; } ;
struct TYPE_6__ {int /*<<< orphan*/  range_max; int /*<<< orphan*/ * ops; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  LPC32XX_RTC_CTRL ; 
 int LPC32XX_RTC_CTRL_CNTR_DIS ; 
 int LPC32XX_RTC_CTRL_MATCH0 ; 
 int LPC32XX_RTC_CTRL_MATCH1 ; 
 int LPC32XX_RTC_CTRL_ONSW_FORCE_HI ; 
 int LPC32XX_RTC_CTRL_ONSW_MATCH0 ; 
 int LPC32XX_RTC_CTRL_ONSW_MATCH1 ; 
 int LPC32XX_RTC_CTRL_SW_RESET ; 
 int /*<<< orphan*/  LPC32XX_RTC_INTSTAT ; 
 int LPC32XX_RTC_INTSTAT_MATCH0 ; 
 int LPC32XX_RTC_INTSTAT_MATCH1 ; 
 int LPC32XX_RTC_INTSTAT_ONSW ; 
 int /*<<< orphan*/  LPC32XX_RTC_KEY ; 
 int LPC32XX_RTC_KEY_ONSW_LOADVAL ; 
 int /*<<< orphan*/  LPC32XX_RTC_MATCH0 ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  U32_MAX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *,struct resource*) ; 
 struct lpc32xx_rtc* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct lpc32xx_rtc*) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  lpc32xx_rtc_alarm_interrupt ; 
 int /*<<< orphan*/  lpc32xx_rtc_ops ; 
 int FUNC8 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC9 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct lpc32xx_rtc*) ; 
 int FUNC11 (struct lpc32xx_rtc*,int /*<<< orphan*/ ) ; 
 int FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (struct lpc32xx_rtc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int) ; 

__attribute__((used)) static int FUNC16(struct platform_device *pdev)
{
	struct resource *res;
	struct lpc32xx_rtc *rtc;
	int err;
	u32 tmp;

	rtc = FUNC5(&pdev->dev, sizeof(*rtc), GFP_KERNEL);
	if (FUNC15(!rtc))
		return -ENOMEM;

	res = FUNC9(pdev, IORESOURCE_MEM, 0);
	rtc->rtc_base = FUNC4(&pdev->dev, res);
	if (FUNC0(rtc->rtc_base))
		return FUNC1(rtc->rtc_base);

	FUNC14(&rtc->lock);

	/*
	 * The RTC is on a separate power domain and can keep it's state
	 * across a chip power cycle. If the RTC has never been previously
	 * setup, then set it up now for the first time.
	 */
	tmp = FUNC11(rtc, LPC32XX_RTC_CTRL);
	if (FUNC11(rtc, LPC32XX_RTC_KEY) != LPC32XX_RTC_KEY_ONSW_LOADVAL) {
		tmp &= ~(LPC32XX_RTC_CTRL_SW_RESET |
			LPC32XX_RTC_CTRL_CNTR_DIS |
			LPC32XX_RTC_CTRL_MATCH0 |
			LPC32XX_RTC_CTRL_MATCH1 |
			LPC32XX_RTC_CTRL_ONSW_MATCH0 |
			LPC32XX_RTC_CTRL_ONSW_MATCH1 |
			LPC32XX_RTC_CTRL_ONSW_FORCE_HI);
		FUNC13(rtc, LPC32XX_RTC_CTRL, tmp);

		/* Clear latched interrupt states */
		FUNC13(rtc, LPC32XX_RTC_MATCH0, 0xFFFFFFFF);
		FUNC13(rtc, LPC32XX_RTC_INTSTAT,
			   LPC32XX_RTC_INTSTAT_MATCH0 |
			   LPC32XX_RTC_INTSTAT_MATCH1 |
			   LPC32XX_RTC_INTSTAT_ONSW);

		/* Write key value to RTC so it won't reload on reset */
		FUNC13(rtc, LPC32XX_RTC_KEY,
			   LPC32XX_RTC_KEY_ONSW_LOADVAL);
	} else {
		FUNC13(rtc, LPC32XX_RTC_CTRL,
			   tmp & ~LPC32XX_RTC_CTRL_MATCH0);
	}

	FUNC10(pdev, rtc);

	rtc->rtc = FUNC7(&pdev->dev);
	if (FUNC0(rtc->rtc))
		return FUNC1(rtc->rtc);

	rtc->rtc->ops = &lpc32xx_rtc_ops;
	rtc->rtc->range_max = U32_MAX;

	err = FUNC12(rtc->rtc);
	if (err)
		return err;

	/*
	 * IRQ is enabled after device registration in case alarm IRQ
	 * is pending upon suspend exit.
	 */
	rtc->irq = FUNC8(pdev, 0);
	if (rtc->irq < 0) {
		FUNC2(&pdev->dev, "Can't get interrupt resource\n");
	} else {
		if (FUNC6(&pdev->dev, rtc->irq,
				     lpc32xx_rtc_alarm_interrupt,
				     0, pdev->name, rtc) < 0) {
			FUNC2(&pdev->dev, "Can't request interrupt.\n");
			rtc->irq = -1;
		} else {
			FUNC3(&pdev->dev, 1);
		}
	}

	return 0;
}