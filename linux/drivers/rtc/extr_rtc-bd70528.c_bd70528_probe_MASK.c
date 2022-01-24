#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct rtc_time {int dummy; } ;
struct rtc_device {int /*<<< orphan*/ * ops; int /*<<< orphan*/  range_max; int /*<<< orphan*/  range_min; } ;
struct rohm_regmap_dev {int /*<<< orphan*/  regmap; } ;
struct TYPE_9__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct bd70528_rtc {TYPE_1__* dev; struct rohm_regmap_dev* mfd; } ;

/* Variables and functions */
 int /*<<< orphan*/  BD70528_INT_RTC_MASK ; 
 unsigned int BD70528_MASK_RTC_HOUR_24H ; 
 int /*<<< orphan*/  BD70528_REG_INT_MAIN_MASK ; 
 int /*<<< orphan*/  BD70528_REG_RTC_HOUR ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 scalar_t__ FUNC0 (struct rtc_device*) ; 
 int FUNC1 (struct rtc_device*) ; 
 int /*<<< orphan*/  RTC_TIMESTAMP_BEGIN_2000 ; 
 int /*<<< orphan*/  RTC_TIMESTAMP_END_2099 ; 
 int /*<<< orphan*/  alm_hndlr ; 
 int FUNC2 (TYPE_1__*,struct rtc_time*) ; 
 int /*<<< orphan*/  bd70528_rtc_ops ; 
 int FUNC3 (TYPE_1__*,struct rtc_time*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 struct rohm_regmap_dev* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 struct bd70528_rtc* FUNC8 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_1__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,struct rtc_device*) ; 
 struct rtc_device* FUNC10 (TYPE_1__*) ; 
 int FUNC11 (struct platform_device*,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct bd70528_rtc*) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct rtc_device*) ; 

__attribute__((used)) static int FUNC16(struct platform_device *pdev)
{
	struct bd70528_rtc *bd_rtc;
	struct rohm_regmap_dev *mfd;
	int ret;
	struct rtc_device *rtc;
	int irq;
	unsigned int hr;

	mfd = FUNC5(pdev->dev.parent);
	if (!mfd) {
		FUNC4(&pdev->dev, "No MFD driver data\n");
		return -EINVAL;
	}
	bd_rtc = FUNC8(&pdev->dev, sizeof(*bd_rtc), GFP_KERNEL);
	if (!bd_rtc)
		return -ENOMEM;

	bd_rtc->mfd = mfd;
	bd_rtc->dev = &pdev->dev;

	irq = FUNC11(pdev, "bd70528-rtc-alm");
	if (irq < 0)
		return irq;

	FUNC12(pdev, bd_rtc);

	ret = FUNC13(mfd->regmap, BD70528_REG_RTC_HOUR, &hr);

	if (ret) {
		FUNC4(&pdev->dev, "Failed to reag RTC clock\n");
		return ret;
	}

	if (!(hr & BD70528_MASK_RTC_HOUR_24H)) {
		struct rtc_time t;

		ret = FUNC2(&pdev->dev, &t);

		if (!ret)
			ret = FUNC3(&pdev->dev, &t);

		if (ret) {
			FUNC4(&pdev->dev,
				"Setting 24H clock for RTC failed\n");
			return ret;
		}
	}

	FUNC6(&pdev->dev, true);
	FUNC7(&pdev->dev);

	rtc = FUNC10(&pdev->dev);
	if (FUNC0(rtc)) {
		FUNC4(&pdev->dev, "RTC device creation failed\n");
		return FUNC1(rtc);
	}

	rtc->range_min = RTC_TIMESTAMP_BEGIN_2000;
	rtc->range_max = RTC_TIMESTAMP_END_2099;
	rtc->ops = &bd70528_rtc_ops;

	/* Request alarm IRQ prior to registerig the RTC */
	ret = FUNC9(&pdev->dev, irq, NULL, &alm_hndlr,
					IRQF_ONESHOT, "bd70528-rtc", rtc);
	if (ret)
		return ret;

	/*
	 *  BD70528 irq controller is not touching the main mask register.
	 *  So enable the RTC block interrupts at main level. We can just
	 *  leave them enabled as irq-controller should disable irqs
	 *  from sub-registers when IRQ is disabled or freed.
	 */
	ret = FUNC14(mfd->regmap,
				 BD70528_REG_INT_MAIN_MASK,
				 BD70528_INT_RTC_MASK, 0);
	if (ret) {
		FUNC4(&pdev->dev, "Failed to enable RTC interrupts\n");
		return ret;
	}

	return FUNC15(rtc);
}