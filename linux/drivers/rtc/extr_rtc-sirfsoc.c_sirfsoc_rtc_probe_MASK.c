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
struct sirfsoc_rtc_drv {int /*<<< orphan*/  irq; int /*<<< orphan*/  rtc; int /*<<< orphan*/  overflow_rtc; int /*<<< orphan*/  regmap; int /*<<< orphan*/  rtc_base; int /*<<< orphan*/  lock; } ;
struct TYPE_7__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; int /*<<< orphan*/  name; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RTC_ALARM0 ; 
 int /*<<< orphan*/  RTC_ALARM1 ; 
 int /*<<< orphan*/  RTC_CLOCK_SWITCH ; 
 int /*<<< orphan*/  RTC_DIV ; 
 int RTC_HZ ; 
 int /*<<< orphan*/  RTC_SW_VALUE ; 
 int SIRFSOC_RTC_CLK ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 struct sirfsoc_rtc_drv* FUNC4 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sirfsoc_rtc_drv*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct sirfsoc_rtc_drv*) ; 
 int /*<<< orphan*/  sirfsoc_rtc_irq_handler ; 
 int /*<<< orphan*/  sirfsoc_rtc_ops ; 
 int /*<<< orphan*/  FUNC11 (struct sirfsoc_rtc_drv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct sirfsoc_rtc_drv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sysrtc_regmap_config ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	int err;
	unsigned long rtc_div;
	struct sirfsoc_rtc_drv *rtcdrv;
	struct device_node *np = pdev->dev.of_node;

	rtcdrv = FUNC4(&pdev->dev,
		sizeof(struct sirfsoc_rtc_drv), GFP_KERNEL);
	if (rtcdrv == NULL)
		return -ENOMEM;

	FUNC13(&rtcdrv->lock);

	err = FUNC8(np, "reg", &rtcdrv->rtc_base);
	if (err) {
		FUNC2(&pdev->dev, "unable to find base address of rtc node in dtb\n");
		return err;
	}

	FUNC10(pdev, rtcdrv);

	/* Register rtc alarm as a wakeup source */
	FUNC3(&pdev->dev, 1);

	rtcdrv->regmap = FUNC5(&pdev->dev,
			&sysrtc_regmap_config);
	if (FUNC0(rtcdrv->regmap)) {
		err = FUNC1(rtcdrv->regmap);
		FUNC2(&pdev->dev, "Failed to allocate register map: %d\n",
			err);
		return err;
	}

	/*
	 * Set SYS_RTC counter in RTC_HZ HZ Units
	 * We are using 32K RTC crystal (32768 / RTC_HZ / 2) -1
	 * If 16HZ, therefore RTC_DIV = 1023;
	 */
	rtc_div = ((32768 / RTC_HZ) / 2) - 1;
	FUNC12(rtcdrv, RTC_DIV, rtc_div);

	/* 0x3 -> RTC_CLK */
	FUNC12(rtcdrv, RTC_CLOCK_SWITCH, SIRFSOC_RTC_CLK);

	/* reset SYS RTC ALARM0 */
	FUNC12(rtcdrv, RTC_ALARM0, 0x0);

	/* reset SYS RTC ALARM1 */
	FUNC12(rtcdrv, RTC_ALARM1, 0x0);

	/* Restore RTC Overflow From Register After Command Reboot */
	rtcdrv->overflow_rtc =
		FUNC11(rtcdrv, RTC_SW_VALUE);

	rtcdrv->rtc = FUNC7(&pdev->dev, pdev->name,
			&sirfsoc_rtc_ops, THIS_MODULE);
	if (FUNC0(rtcdrv->rtc)) {
		err = FUNC1(rtcdrv->rtc);
		FUNC2(&pdev->dev, "can't register RTC device\n");
		return err;
	}

	rtcdrv->irq = FUNC9(pdev, 0);
	err = FUNC6(
			&pdev->dev,
			rtcdrv->irq,
			sirfsoc_rtc_irq_handler,
			IRQF_SHARED,
			pdev->name,
			rtcdrv);
	if (err) {
		FUNC2(&pdev->dev, "Unable to register for the SiRF SOC RTC IRQ\n");
		return err;
	}

	return 0;
}