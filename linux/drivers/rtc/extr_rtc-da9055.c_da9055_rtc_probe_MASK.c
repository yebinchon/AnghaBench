#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; int /*<<< orphan*/  name; } ;
struct da9055_rtc {int alarm_enable; TYPE_5__* da9055; int /*<<< orphan*/  rtc; } ;
struct da9055_pdata {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DA9055_REG_ALARM_Y ; 
 int DA9055_RTC_ALM_EN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_HIGH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int FUNC2 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  da9055_rtc_alm_irq ; 
 int FUNC3 (TYPE_5__*,struct da9055_pdata*) ; 
 int /*<<< orphan*/  da9055_rtc_ops ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 TYPE_5__* FUNC5 (int /*<<< orphan*/ ) ; 
 struct da9055_pdata* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int) ; 
 struct da9055_rtc* FUNC8 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_1__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct da9055_rtc*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct platform_device*,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct da9055_rtc*) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct da9055_rtc *rtc;
	struct da9055_pdata *pdata = NULL;
	int ret, alm_irq;

	rtc = FUNC8(&pdev->dev, sizeof(struct da9055_rtc), GFP_KERNEL);
	if (!rtc)
		return -ENOMEM;

	rtc->da9055 = FUNC5(pdev->dev.parent);
	pdata = FUNC6(rtc->da9055->dev);
	FUNC12(pdev, rtc);

	ret = FUNC3(rtc->da9055, pdata);
	if (ret < 0)
		goto err_rtc;

	ret = FUNC2(rtc->da9055, DA9055_REG_ALARM_Y);
	if (ret < 0)
		goto err_rtc;

	if (ret & DA9055_RTC_ALM_EN)
		rtc->alarm_enable = 1;

	FUNC7(&pdev->dev, 1);

	rtc->rtc = FUNC10(&pdev->dev, pdev->name,
					&da9055_rtc_ops, THIS_MODULE);
	if (FUNC0(rtc->rtc)) {
		ret = FUNC1(rtc->rtc);
		goto err_rtc;
	}

	alm_irq = FUNC11(pdev, "ALM");
	if (alm_irq < 0)
		return alm_irq;

	ret = FUNC9(&pdev->dev, alm_irq, NULL,
					da9055_rtc_alm_irq,
					IRQF_TRIGGER_HIGH | IRQF_ONESHOT,
					"ALM", rtc);
	if (ret != 0)
		FUNC4(rtc->da9055->dev, "irq registration failed: %d\n", ret);

err_rtc:
	return ret;

}