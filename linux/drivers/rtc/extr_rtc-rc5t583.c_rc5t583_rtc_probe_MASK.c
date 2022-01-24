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
struct rc5t583_rtc {int /*<<< orphan*/  rtc; } ;
struct rc5t583_platform_data {int irq_base; } ;
struct rc5t583 {int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; } ;
struct TYPE_8__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_TRIGGER_LOW ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ RC5T583_IRQ_YALE ; 
 int /*<<< orphan*/  RC5T583_RTC_ADJ ; 
 int /*<<< orphan*/  RC5T583_RTC_CTL2 ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,...) ; 
 struct rc5t583* FUNC3 (int /*<<< orphan*/ ) ; 
 struct rc5t583_platform_data* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 struct rc5t583_rtc* FUNC7 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_1__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct rc5t583_rtc*) ; 
 int /*<<< orphan*/  rc5t583_rtc_interrupt ; 
 int /*<<< orphan*/  rc5t583_rtc_ops ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct rc5t583 *rc5t583 = FUNC3(pdev->dev.parent);
	struct rc5t583_rtc *ricoh_rtc;
	struct rc5t583_platform_data *pmic_plat_data;
	int ret;
	int irq;

	ricoh_rtc = FUNC7(&pdev->dev, sizeof(struct rc5t583_rtc),
			GFP_KERNEL);
	if (!ricoh_rtc)
		return -ENOMEM;

	FUNC10(pdev, ricoh_rtc);

	/* Clear pending interrupts */
	ret = FUNC11(rc5t583->regmap, RC5T583_RTC_CTL2, 0);
	if (ret < 0)
		return ret;

	/* clear RTC Adjust register */
	ret = FUNC11(rc5t583->regmap, RC5T583_RTC_ADJ, 0);
	if (ret < 0) {
		FUNC2(&pdev->dev, "unable to program rtc_adjust reg\n");
		return -EBUSY;
	}

	pmic_plat_data = FUNC4(rc5t583->dev);
	irq = pmic_plat_data->irq_base;
	if (irq <= 0) {
		FUNC5(&pdev->dev, "Wake up is not possible as irq = %d\n",
			irq);
		return ret;
	}

	irq += RC5T583_IRQ_YALE;
	ret = FUNC8(&pdev->dev, irq, NULL,
		rc5t583_rtc_interrupt, IRQF_TRIGGER_LOW,
		"rtc-rc5t583", &pdev->dev);
	if (ret < 0) {
		FUNC2(&pdev->dev, "IRQ is not free.\n");
		return ret;
	}
	FUNC6(&pdev->dev, 1);

	ricoh_rtc->rtc = FUNC9(&pdev->dev, pdev->name,
		&rc5t583_rtc_ops, THIS_MODULE);
	if (FUNC0(ricoh_rtc->rtc)) {
		ret = FUNC1(ricoh_rtc->rtc);
		FUNC2(&pdev->dev, "RTC device register: err %d\n", ret);
		return ret;
	}

	return 0;
}