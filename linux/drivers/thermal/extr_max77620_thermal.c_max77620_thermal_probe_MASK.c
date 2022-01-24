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
struct max77620_therm_info {scalar_t__ irq_tjalarm1; scalar_t__ irq_tjalarm2; int /*<<< orphan*/  tz_device; int /*<<< orphan*/  rmap; TYPE_1__* dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IRQF_ONESHOT ; 
 int IRQF_SHARED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 struct max77620_therm_info* FUNC6 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct max77620_therm_info*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,struct max77620_therm_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  max77620_thermal_irq ; 
 int /*<<< orphan*/  max77620_thermal_ops ; 
 void* FUNC9 (struct platform_device*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct max77620_therm_info*) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct max77620_therm_info *mtherm;
	int ret;

	mtherm = FUNC6(&pdev->dev, sizeof(*mtherm), GFP_KERNEL);
	if (!mtherm)
		return -ENOMEM;

	mtherm->irq_tjalarm1 = FUNC9(pdev, 0);
	mtherm->irq_tjalarm2 = FUNC9(pdev, 1);
	if ((mtherm->irq_tjalarm1 < 0) || (mtherm->irq_tjalarm2 < 0)) {
		FUNC2(&pdev->dev, "Alarm irq number not available\n");
		return -EINVAL;
	}

	mtherm->dev = &pdev->dev;
	mtherm->rmap = FUNC3(pdev->dev.parent, NULL);
	if (!mtherm->rmap) {
		FUNC2(&pdev->dev, "Failed to get parent regmap\n");
		return -ENODEV;
	}

	/*
	 * The reference taken to the parent's node which will be balanced on
	 * reprobe or on platform-device release.
	 */
	FUNC5(&pdev->dev, pdev->dev.parent);

	mtherm->tz_device = FUNC8(&pdev->dev, 0,
				mtherm, &max77620_thermal_ops);
	if (FUNC0(mtherm->tz_device)) {
		ret = FUNC1(mtherm->tz_device);
		FUNC2(&pdev->dev, "Failed to register thermal zone: %d\n",
			ret);
		return ret;
	}

	ret = FUNC7(&pdev->dev, mtherm->irq_tjalarm1, NULL,
					max77620_thermal_irq,
					IRQF_ONESHOT | IRQF_SHARED,
					FUNC4(&pdev->dev), mtherm);
	if (ret < 0) {
		FUNC2(&pdev->dev, "Failed to request irq1: %d\n", ret);
		return ret;
	}

	ret = FUNC7(&pdev->dev, mtherm->irq_tjalarm2, NULL,
					max77620_thermal_irq,
					IRQF_ONESHOT | IRQF_SHARED,
					FUNC4(&pdev->dev), mtherm);
	if (ret < 0) {
		FUNC2(&pdev->dev, "Failed to request irq2: %d\n", ret);
		return ret;
	}

	FUNC10(pdev, mtherm);

	return 0;
}