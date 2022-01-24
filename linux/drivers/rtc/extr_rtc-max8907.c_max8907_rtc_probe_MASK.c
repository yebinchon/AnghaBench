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
struct TYPE_5__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct max8907_rtc {int irq; int /*<<< orphan*/  rtc_dev; int /*<<< orphan*/  regmap; struct max8907* max8907; } ;
struct max8907 {int /*<<< orphan*/  irqc_rtc; int /*<<< orphan*/  regmap_rtc; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX8907_IRQ_RTC_ALARM0 ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int,...) ; 
 struct max8907* FUNC3 (int /*<<< orphan*/ ) ; 
 struct max8907_rtc* FUNC4 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct max8907_rtc*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  max8907_irq_handler ; 
 int /*<<< orphan*/  max8907_rtc_ops ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,struct max8907_rtc*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct max8907 *max8907 = FUNC3(pdev->dev.parent);
	struct max8907_rtc *rtc;
	int ret;

	rtc = FUNC4(&pdev->dev, sizeof(*rtc), GFP_KERNEL);
	if (!rtc)
		return -ENOMEM;
	FUNC7(pdev, rtc);

	rtc->max8907 = max8907;
	rtc->regmap = max8907->regmap_rtc;

	rtc->rtc_dev = FUNC6(&pdev->dev, "max8907-rtc",
					&max8907_rtc_ops, THIS_MODULE);
	if (FUNC0(rtc->rtc_dev)) {
		ret = FUNC1(rtc->rtc_dev);
		FUNC2(&pdev->dev, "Failed to register RTC device: %d\n", ret);
		return ret;
	}

	rtc->irq = FUNC8(max8907->irqc_rtc,
				       MAX8907_IRQ_RTC_ALARM0);
	if (rtc->irq < 0)
		return rtc->irq;

	ret = FUNC5(&pdev->dev, rtc->irq, NULL,
				max8907_irq_handler,
				IRQF_ONESHOT, "max8907-alarm0", rtc);
	if (ret < 0)
		FUNC2(&pdev->dev, "Failed to request IRQ%d: %d\n",
			rtc->irq, ret);

	return ret;
}