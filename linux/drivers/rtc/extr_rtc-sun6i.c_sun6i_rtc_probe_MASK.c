#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sun6i_rtc_dev {scalar_t__ irq; int /*<<< orphan*/  rtc; int /*<<< orphan*/  losc; scalar_t__ base; int /*<<< orphan*/ * dev; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ SUN6I_ALARM_CONFIG ; 
 scalar_t__ SUN6I_ALRM1_EN ; 
 scalar_t__ SUN6I_ALRM1_IRQ_EN ; 
 scalar_t__ SUN6I_ALRM1_IRQ_STA ; 
 int /*<<< orphan*/  SUN6I_ALRM1_IRQ_STA_WEEK_IRQ_PEND ; 
 scalar_t__ SUN6I_ALRM_COUNTER ; 
 scalar_t__ SUN6I_ALRM_EN ; 
 scalar_t__ SUN6I_ALRM_IRQ_EN ; 
 scalar_t__ SUN6I_ALRM_IRQ_STA ; 
 int /*<<< orphan*/  SUN6I_ALRM_IRQ_STA_CNT_IRQ_PEND ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sun6i_rtc_dev*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct sun6i_rtc_dev*) ; 
 struct sun6i_rtc_dev* sun6i_rtc ; 
 int /*<<< orphan*/  sun6i_rtc_alarmirq ; 
 int /*<<< orphan*/  sun6i_rtc_ops ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct sun6i_rtc_dev *chip = sun6i_rtc;
	int ret;

	if (!chip)
		return -ENODEV;

	FUNC10(pdev, chip);
	chip->dev = &pdev->dev;

	chip->irq = FUNC9(pdev, 0);
	if (chip->irq < 0)
		return chip->irq;

	ret = FUNC7(&pdev->dev, chip->irq, sun6i_rtc_alarmirq,
			       0, FUNC5(&pdev->dev), chip);
	if (ret) {
		FUNC3(&pdev->dev, "Could not request IRQ\n");
		return ret;
	}

	/* clear the alarm counter value */
	FUNC11(0, chip->base + SUN6I_ALRM_COUNTER);

	/* disable counter alarm */
	FUNC11(0, chip->base + SUN6I_ALRM_EN);

	/* disable counter alarm interrupt */
	FUNC11(0, chip->base + SUN6I_ALRM_IRQ_EN);

	/* disable week alarm */
	FUNC11(0, chip->base + SUN6I_ALRM1_EN);

	/* disable week alarm interrupt */
	FUNC11(0, chip->base + SUN6I_ALRM1_IRQ_EN);

	/* clear counter alarm pending interrupts */
	FUNC11(SUN6I_ALRM_IRQ_STA_CNT_IRQ_PEND,
	       chip->base + SUN6I_ALRM_IRQ_STA);

	/* clear week alarm pending interrupts */
	FUNC11(SUN6I_ALRM1_IRQ_STA_WEEK_IRQ_PEND,
	       chip->base + SUN6I_ALRM1_IRQ_STA);

	/* disable alarm wakeup */
	FUNC11(0, chip->base + SUN6I_ALARM_CONFIG);

	FUNC2(chip->losc);

	FUNC6(&pdev->dev, 1);

	chip->rtc = FUNC8(&pdev->dev, "rtc-sun6i",
					     &sun6i_rtc_ops, THIS_MODULE);
	if (FUNC0(chip->rtc)) {
		FUNC3(&pdev->dev, "unable to register device\n");
		return FUNC1(chip->rtc);
	}

	FUNC4(&pdev->dev, "RTC enabled\n");

	return 0;
}