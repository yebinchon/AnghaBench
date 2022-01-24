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
struct tps80031_rtc {int /*<<< orphan*/  irq; int /*<<< orphan*/  rtc; } ;
struct rtc_time {int tm_year; int tm_mon; int tm_mday; } ;
struct TYPE_10__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int RTC_YEAR_OFFSET ; 
 int /*<<< orphan*/  STOP_RTC ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  TPS80031_RTC_CTRL_REG ; 
 int TPS80031_RTC_POR_DAY ; 
 int TPS80031_RTC_POR_MONTH ; 
 int TPS80031_RTC_POR_YEAR ; 
 int /*<<< orphan*/  TPS80031_SLAVE_ID1 ; 
 int FUNC2 (TYPE_1__*,struct tps80031_rtc*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 struct tps80031_rtc* FUNC6 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tps80031_rtc*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct tps80031_rtc*) ; 
 int /*<<< orphan*/  tps80031_rtc_irq ; 
 int /*<<< orphan*/  tps80031_rtc_ops ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,struct rtc_time*) ; 
 int FUNC12 (TYPE_1__*,struct rtc_time*) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct tps80031_rtc *rtc;
	struct rtc_time tm;
	int ret;

	rtc = FUNC6(&pdev->dev, sizeof(*rtc), GFP_KERNEL);
	if (!rtc)
		return -ENOMEM;

	rtc->irq = FUNC9(pdev, 0);
	FUNC10(pdev, rtc);

	/* Start RTC */
	ret = FUNC13(pdev->dev.parent, TPS80031_SLAVE_ID1,
			TPS80031_RTC_CTRL_REG, STOP_RTC);
	if (ret < 0) {
		FUNC3(&pdev->dev, "failed to start RTC. err = %d\n", ret);
		return ret;
	}

	/* If RTC have POR values, set time 01:01:2000 */
	FUNC11(&pdev->dev, &tm);
	if ((tm.tm_year == RTC_YEAR_OFFSET + TPS80031_RTC_POR_YEAR) &&
		(tm.tm_mon == (TPS80031_RTC_POR_MONTH - 1)) &&
		(tm.tm_mday == TPS80031_RTC_POR_DAY)) {
		tm.tm_year = 2000;
		tm.tm_mday = 1;
		tm.tm_mon = 1;
		ret = FUNC12(&pdev->dev, &tm);
		if (ret < 0) {
			FUNC3(&pdev->dev,
				"RTC set time failed, err = %d\n", ret);
			return ret;
		}
	}

	/* Clear alarm intretupt status if it is there */
	ret = FUNC2(&pdev->dev, rtc);
	if (ret < 0) {
		FUNC3(&pdev->dev, "Clear alarm int failed, err = %d\n", ret);
		return ret;
	}

	rtc->rtc = FUNC8(&pdev->dev, pdev->name,
			       &tps80031_rtc_ops, THIS_MODULE);
	if (FUNC0(rtc->rtc)) {
		ret = FUNC1(rtc->rtc);
		FUNC3(&pdev->dev, "RTC registration failed, err %d\n", ret);
		return ret;
	}

	ret = FUNC7(&pdev->dev, rtc->irq, NULL,
			tps80031_rtc_irq,
			IRQF_ONESHOT,
			FUNC4(&pdev->dev), rtc);
	if (ret < 0) {
		FUNC3(&pdev->dev, "request IRQ:%d failed, err = %d\n",
			 rtc->irq, ret);
		return ret;
	}
	FUNC5(&pdev->dev, 1);
	return 0;
}