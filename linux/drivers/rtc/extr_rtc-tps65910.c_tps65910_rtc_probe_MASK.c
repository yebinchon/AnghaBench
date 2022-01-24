#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct tps65910_rtc {int irq; TYPE_1__* rtc; } ;
struct tps65910 {int /*<<< orphan*/  regmap; } ;
struct TYPE_15__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_3__ dev; } ;
struct TYPE_14__ {int /*<<< orphan*/  range_max; int /*<<< orphan*/  range_min; int /*<<< orphan*/ * ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVCTRL_RTC_PWDN_MASK ; 
 int DEVCTRL_RTC_PWDN_SHIFT ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_TRIGGER_LOW ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  RTC_TIMESTAMP_BEGIN_2000 ; 
 int /*<<< orphan*/  RTC_TIMESTAMP_END_2099 ; 
 int /*<<< orphan*/  TPS65910_DEVCTRL ; 
 int /*<<< orphan*/  TPS65910_RTC_CTRL ; 
 int /*<<< orphan*/  TPS65910_RTC_CTRL_STOP_RTC ; 
 int /*<<< orphan*/  TPS65910_RTC_STATUS ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*) ; 
 struct tps65910* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int) ; 
 struct tps65910_rtc* FUNC8 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_3__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 TYPE_1__* FUNC10 (TYPE_3__*) ; 
 int FUNC11 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct tps65910_rtc*) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  tps65910_rtc_interrupt ; 
 int /*<<< orphan*/  tps65910_rtc_ops ; 

__attribute__((used)) static int FUNC17(struct platform_device *pdev)
{
	struct tps65910 *tps65910 = NULL;
	struct tps65910_rtc *tps_rtc = NULL;
	int ret;
	int irq;
	u32 rtc_reg;

	tps65910 = FUNC4(pdev->dev.parent);

	tps_rtc = FUNC8(&pdev->dev, sizeof(struct tps65910_rtc),
			GFP_KERNEL);
	if (!tps_rtc)
		return -ENOMEM;

	tps_rtc->rtc = FUNC10(&pdev->dev);
	if (FUNC0(tps_rtc->rtc))
		return FUNC1(tps_rtc->rtc);

	/* Clear pending interrupts */
	ret = FUNC13(tps65910->regmap, TPS65910_RTC_STATUS, &rtc_reg);
	if (ret < 0)
		return ret;

	ret = FUNC15(tps65910->regmap, TPS65910_RTC_STATUS, rtc_reg);
	if (ret < 0)
		return ret;

	FUNC2(&pdev->dev, "Enabling rtc-tps65910.\n");

	/* Enable RTC digital power domain */
	ret = FUNC14(tps65910->regmap, TPS65910_DEVCTRL,
		DEVCTRL_RTC_PWDN_MASK, 0 << DEVCTRL_RTC_PWDN_SHIFT);
	if (ret < 0)
		return ret;

	rtc_reg = TPS65910_RTC_CTRL_STOP_RTC;
	ret = FUNC15(tps65910->regmap, TPS65910_RTC_CTRL, rtc_reg);
	if (ret < 0)
		return ret;

	FUNC12(pdev, tps_rtc);

	irq  = FUNC11(pdev, 0);
	if (irq <= 0) {
		FUNC6(&pdev->dev, "Wake up is not possible as irq = %d\n",
			irq);
		return -ENXIO;
	}

	ret = FUNC9(&pdev->dev, irq, NULL,
		tps65910_rtc_interrupt, IRQF_TRIGGER_LOW,
		FUNC5(&pdev->dev), &pdev->dev);
	if (ret < 0) {
		FUNC3(&pdev->dev, "IRQ is not free.\n");
		return ret;
	}
	tps_rtc->irq = irq;
	FUNC7(&pdev->dev, 1);

	tps_rtc->rtc->ops = &tps65910_rtc_ops;
	tps_rtc->rtc->range_min = RTC_TIMESTAMP_BEGIN_2000;
	tps_rtc->rtc->range_max = RTC_TIMESTAMP_END_2099;

	return FUNC16(tps_rtc->rtc);
}