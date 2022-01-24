#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct resource {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct pic32_rtc_dev {scalar_t__ alarm_irq; TYPE_1__* clk; TYPE_1__* rtc; int /*<<< orphan*/  alarm_lock; TYPE_1__* reg_base; } ;
struct TYPE_10__ {int max_user_freq; int /*<<< orphan*/  range_max; int /*<<< orphan*/  range_min; int /*<<< orphan*/ * ops; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  RTC_TIMESTAMP_BEGIN_2000 ; 
 int /*<<< orphan*/  RTC_TIMESTAMP_END_2099 ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ *,struct resource*) ; 
 struct pic32_rtc_dev* FUNC10 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pic32_rtc_dev*) ; 
 TYPE_1__* FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pic32_rtc_alarmirq ; 
 int /*<<< orphan*/  FUNC13 (struct pic32_rtc_dev*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  pic32_rtcops ; 
 scalar_t__ FUNC15 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC16 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct platform_device*,struct pic32_rtc_dev*) ; 
 int FUNC18 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC20(struct platform_device *pdev)
{
	struct pic32_rtc_dev *pdata;
	struct resource *res;
	int ret;

	pdata = FUNC10(&pdev->dev, sizeof(*pdata), GFP_KERNEL);
	if (!pdata)
		return -ENOMEM;

	FUNC17(pdev, pdata);

	pdata->alarm_irq = FUNC15(pdev, 0);
	if (pdata->alarm_irq < 0)
		return pdata->alarm_irq;

	res = FUNC16(pdev, IORESOURCE_MEM, 0);
	pdata->reg_base = FUNC9(&pdev->dev, res);
	if (FUNC0(pdata->reg_base))
		return FUNC1(pdata->reg_base);

	pdata->clk = FUNC8(&pdev->dev, NULL);
	if (FUNC0(pdata->clk)) {
		FUNC5(&pdev->dev, "failed to find rtc clock source\n");
		ret = FUNC1(pdata->clk);
		pdata->clk = NULL;
		return ret;
	}

	FUNC19(&pdata->alarm_lock);

	FUNC4(pdata->clk);

	FUNC13(pdata, 1);

	FUNC7(&pdev->dev, 1);

	pdata->rtc = FUNC12(&pdev->dev);
	if (FUNC0(pdata->rtc))
		return FUNC1(pdata->rtc);

	pdata->rtc->ops = &pic32_rtcops;
	pdata->rtc->range_min = RTC_TIMESTAMP_BEGIN_2000;
	pdata->rtc->range_max = RTC_TIMESTAMP_END_2099;

	ret = FUNC18(pdata->rtc);
	if (ret)
		goto err_nortc;

	pdata->rtc->max_user_freq = 128;

	FUNC14(&pdev->dev, 1);
	ret = FUNC11(&pdev->dev, pdata->alarm_irq,
			       pic32_rtc_alarmirq, 0,
			       FUNC6(&pdev->dev), pdata);
	if (ret) {
		FUNC5(&pdev->dev,
			"IRQ %d error %d\n", pdata->alarm_irq, ret);
		goto err_nortc;
	}

	FUNC2(pdata->clk);

	return 0;

err_nortc:
	FUNC13(pdata, 0);
	FUNC3(pdata->clk);

	return ret;
}