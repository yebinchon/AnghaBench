#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ of_node; int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; int /*<<< orphan*/  name; } ;
struct palmas_rtc {int /*<<< orphan*/  irq; int /*<<< orphan*/  rtc; TYPE_1__* dev; } ;
struct palmas {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_LOW ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PALMAS_BACKUP_BATTERY_CTRL ; 
 unsigned int PALMAS_BACKUP_BATTERY_CTRL_BBS_BBC_LOW_ICHRG ; 
 unsigned int PALMAS_BACKUP_BATTERY_CTRL_BB_CHG_EN ; 
 int /*<<< orphan*/  PALMAS_PMU_CONTROL_BASE ; 
 int /*<<< orphan*/  PALMAS_RTC_BASE ; 
 int /*<<< orphan*/  PALMAS_RTC_CTRL_REG ; 
 unsigned int PALMAS_RTC_CTRL_REG_STOP_RTC ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int) ; 
 struct palmas* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 struct palmas_rtc* FUNC6 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct palmas_rtc*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC9 (scalar_t__,char*) ; 
 int FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  palmas_rtc_interrupt ; 
 int /*<<< orphan*/  palmas_rtc_ops ; 
 int FUNC11 (struct palmas*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct palmas_rtc*) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct palmas *palmas = FUNC3(pdev->dev.parent);
	struct palmas_rtc *palmas_rtc = NULL;
	int ret;
	bool enable_bb_charging = false;
	bool high_bb_charging = false;

	if (pdev->dev.of_node) {
		enable_bb_charging = FUNC9(pdev->dev.of_node,
					"ti,backup-battery-chargeable");
		high_bb_charging = FUNC9(pdev->dev.of_node,
					"ti,backup-battery-charge-high-current");
	}

	palmas_rtc = FUNC6(&pdev->dev, sizeof(struct palmas_rtc),
			GFP_KERNEL);
	if (!palmas_rtc)
		return -ENOMEM;

	/* Clear pending interrupts */
	ret = FUNC10(&pdev->dev);
	if (ret < 0) {
		FUNC2(&pdev->dev, "clear RTC int failed, err = %d\n", ret);
		return ret;
	}

	palmas_rtc->dev = &pdev->dev;
	FUNC13(pdev, palmas_rtc);

	if (enable_bb_charging) {
		unsigned reg = PALMAS_BACKUP_BATTERY_CTRL_BBS_BBC_LOW_ICHRG;

		if (high_bb_charging)
			reg = 0;

		ret = FUNC11(palmas, PALMAS_PMU_CONTROL_BASE,
			PALMAS_BACKUP_BATTERY_CTRL,
			PALMAS_BACKUP_BATTERY_CTRL_BBS_BBC_LOW_ICHRG, reg);
		if (ret < 0) {
			FUNC2(&pdev->dev,
				"BACKUP_BATTERY_CTRL update failed, %d\n", ret);
			return ret;
		}

		ret = FUNC11(palmas, PALMAS_PMU_CONTROL_BASE,
			PALMAS_BACKUP_BATTERY_CTRL,
			PALMAS_BACKUP_BATTERY_CTRL_BB_CHG_EN,
			PALMAS_BACKUP_BATTERY_CTRL_BB_CHG_EN);
		if (ret < 0) {
			FUNC2(&pdev->dev,
				"BACKUP_BATTERY_CTRL update failed, %d\n", ret);
			return ret;
		}
	}

	/* Start RTC */
	ret = FUNC11(palmas, PALMAS_RTC_BASE, PALMAS_RTC_CTRL_REG,
			PALMAS_RTC_CTRL_REG_STOP_RTC,
			PALMAS_RTC_CTRL_REG_STOP_RTC);
	if (ret < 0) {
		FUNC2(&pdev->dev, "RTC_CTRL write failed, err = %d\n", ret);
		return ret;
	}

	palmas_rtc->irq = FUNC12(pdev, 0);

	FUNC5(&pdev->dev, 1);
	palmas_rtc->rtc = FUNC8(&pdev->dev, pdev->name,
				&palmas_rtc_ops, THIS_MODULE);
	if (FUNC0(palmas_rtc->rtc)) {
		ret = FUNC1(palmas_rtc->rtc);
		FUNC2(&pdev->dev, "RTC register failed, err = %d\n", ret);
		return ret;
	}

	ret = FUNC7(&pdev->dev, palmas_rtc->irq, NULL,
			palmas_rtc_interrupt,
			IRQF_TRIGGER_LOW | IRQF_ONESHOT,
			FUNC4(&pdev->dev), palmas_rtc);
	if (ret < 0) {
		FUNC2(&pdev->dev, "IRQ request failed, err = %d\n", ret);
		return ret;
	}

	return 0;
}