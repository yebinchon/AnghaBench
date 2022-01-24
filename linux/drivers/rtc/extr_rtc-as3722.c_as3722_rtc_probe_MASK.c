#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct as3722_rtc {int /*<<< orphan*/  alarm_irq; int /*<<< orphan*/  rtc; TYPE_1__* dev; struct as3722* as3722; } ;
struct as3722 {int dummy; } ;

/* Variables and functions */
 int AS3722_RTC_ALARM_WAKEUP_EN ; 
 int /*<<< orphan*/  AS3722_RTC_CONTROL_REG ; 
 int AS3722_RTC_ON ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  as3722_alarm_irq ; 
 int /*<<< orphan*/  as3722_rtc_ops ; 
 int FUNC2 (struct as3722*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int,...) ; 
 struct as3722* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 struct as3722_rtc* FUNC7 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct as3722_rtc*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct as3722_rtc*) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct as3722 *as3722 = FUNC4(pdev->dev.parent);
	struct as3722_rtc *as3722_rtc;
	int ret;

	as3722_rtc = FUNC7(&pdev->dev, sizeof(*as3722_rtc), GFP_KERNEL);
	if (!as3722_rtc)
		return -ENOMEM;

	as3722_rtc->as3722 = as3722;
	as3722_rtc->dev = &pdev->dev;
	FUNC12(pdev, as3722_rtc);

	/* Enable the RTC to make sure it is running. */
	ret = FUNC2(as3722, AS3722_RTC_CONTROL_REG,
			AS3722_RTC_ON | AS3722_RTC_ALARM_WAKEUP_EN,
			AS3722_RTC_ON | AS3722_RTC_ALARM_WAKEUP_EN);
	if (ret < 0) {
		FUNC3(&pdev->dev, "RTC_CONTROL reg write failed: %d\n", ret);
		return ret;
	}

	FUNC6(&pdev->dev, 1);

	as3722_rtc->rtc = FUNC9(&pdev->dev, "as3722-rtc",
				&as3722_rtc_ops, THIS_MODULE);
	if (FUNC0(as3722_rtc->rtc)) {
		ret = FUNC1(as3722_rtc->rtc);
		FUNC3(&pdev->dev, "RTC register failed: %d\n", ret);
		return ret;
	}

	as3722_rtc->alarm_irq = FUNC11(pdev, 0);
	FUNC5(&pdev->dev, "RTC interrupt %d\n", as3722_rtc->alarm_irq);

	ret = FUNC8(&pdev->dev, as3722_rtc->alarm_irq, NULL,
			as3722_alarm_irq, IRQF_ONESHOT,
			"rtc-alarm", as3722_rtc);
	if (ret < 0) {
		FUNC3(&pdev->dev, "Failed to request alarm IRQ %d: %d\n",
				as3722_rtc->alarm_irq, ret);
		return ret;
	}
	FUNC10(as3722_rtc->alarm_irq);
	return 0;
}