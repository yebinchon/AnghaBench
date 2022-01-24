#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct platform_device {int /*<<< orphan*/  name; TYPE_1__ dev; } ;
struct da9052_rtc {int /*<<< orphan*/  da9052; int /*<<< orphan*/  rtc; } ;

/* Variables and functions */
 int /*<<< orphan*/  DA9052_ALARM_Y_REG ; 
 int /*<<< orphan*/  DA9052_ALARM_Y_TICK_ON ; 
 int /*<<< orphan*/  DA9052_BBAT_CONT_REG ; 
 int /*<<< orphan*/  DA9052_IRQ_ALARM ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,struct da9052_rtc*) ; 
 int /*<<< orphan*/  da9052_rtc_irq ; 
 int /*<<< orphan*/  da9052_rtc_ops ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 struct da9052_rtc* FUNC7 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct da9052_rtc*) ; 
 int /*<<< orphan*/  FUNC10 (struct da9052_rtc*,char*,int) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct da9052_rtc *rtc;
	int ret;

	rtc = FUNC7(&pdev->dev, sizeof(struct da9052_rtc), GFP_KERNEL);
	if (!rtc)
		return -ENOMEM;

	rtc->da9052 = FUNC5(pdev->dev.parent);
	FUNC9(pdev, rtc);

	ret = FUNC3(rtc->da9052, DA9052_BBAT_CONT_REG, 0xFE);
	if (ret < 0) {
		FUNC10(rtc,
			"Failed to setup RTC battery charging: %d\n", ret);
		return ret;
	}

	ret = FUNC2(rtc->da9052, DA9052_ALARM_Y_REG,
				DA9052_ALARM_Y_TICK_ON, 0);
	if (ret != 0)
		FUNC10(rtc, "Failed to disable TICKS: %d\n", ret);

	FUNC6(&pdev->dev, true);
	rtc->rtc = FUNC8(&pdev->dev, pdev->name,
				       &da9052_rtc_ops, THIS_MODULE);

	if (FUNC0(rtc->rtc))
		return FUNC1(rtc->rtc);

	ret = FUNC4(rtc->da9052, DA9052_IRQ_ALARM, "ALM",
				da9052_rtc_irq, rtc);
	if (ret != 0) {
		FUNC10(rtc, "irq registration failed: %d\n", ret);
		return ret;
	}

	return 0;
}