#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_3__ dev; } ;
struct ac100_rtc_dev {scalar_t__ irq; TYPE_1__* rtc; int /*<<< orphan*/  regmap; TYPE_3__* dev; } ;
struct ac100_dev {int /*<<< orphan*/  regmap; } ;
struct TYPE_10__ {int /*<<< orphan*/ * ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC100_ALM_INT_ENA ; 
 int /*<<< orphan*/  AC100_ALM_INT_ENABLE ; 
 int /*<<< orphan*/  AC100_ALM_INT_STA ; 
 int /*<<< orphan*/  AC100_RTC_CTRL ; 
 int /*<<< orphan*/  AC100_RTC_CTRL_24HOUR ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IRQF_ONESHOT ; 
 int IRQF_SHARED ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  ac100_rtc_irq ; 
 int /*<<< orphan*/  ac100_rtc_ops ; 
 int FUNC2 (struct ac100_rtc_dev*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*) ; 
 struct ac100_dev* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 struct ac100_rtc_dev* FUNC6 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_3__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct ac100_rtc_dev*) ; 
 TYPE_1__* FUNC8 (TYPE_3__*) ; 
 scalar_t__ FUNC9 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct ac100_rtc_dev*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct ac100_dev *ac100 = FUNC4(pdev->dev.parent);
	struct ac100_rtc_dev *chip;
	int ret;

	chip = FUNC6(&pdev->dev, sizeof(*chip), GFP_KERNEL);
	if (!chip)
		return -ENOMEM;

	FUNC10(pdev, chip);
	chip->dev = &pdev->dev;
	chip->regmap = ac100->regmap;

	chip->irq = FUNC9(pdev, 0);
	if (chip->irq < 0)
		return chip->irq;

	chip->rtc = FUNC8(&pdev->dev);
	if (FUNC0(chip->rtc))
		return FUNC1(chip->rtc);

	chip->rtc->ops = &ac100_rtc_ops;

	ret = FUNC7(&pdev->dev, chip->irq, NULL,
					ac100_rtc_irq,
					IRQF_SHARED | IRQF_ONESHOT,
					FUNC5(&pdev->dev), chip);
	if (ret) {
		FUNC3(&pdev->dev, "Could not request IRQ\n");
		return ret;
	}

	/* always use 24 hour mode */
	FUNC12(chip->regmap, AC100_RTC_CTRL, AC100_RTC_CTRL_24HOUR,
			  AC100_RTC_CTRL_24HOUR);

	/* disable counter alarm interrupt */
	FUNC11(chip->regmap, AC100_ALM_INT_ENA, 0);

	/* clear counter alarm pending interrupts */
	FUNC11(chip->regmap, AC100_ALM_INT_STA, AC100_ALM_INT_ENABLE);

	ret = FUNC2(chip);
	if (ret)
		return ret;

	return FUNC13(chip->rtc);
}