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
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct db8500_thermal_zone {int /*<<< orphan*/  tz; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IRQF_NO_SUSPEND ; 
 int IRQF_ONESHOT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PRCMU_DEFAULT_LOW_TEMP ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THERMAL_TREND_STABLE ; 
 int /*<<< orphan*/ * db8500_thermal_points ; 
 int /*<<< orphan*/  FUNC2 (struct db8500_thermal_zone*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 struct db8500_thermal_zone* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct device*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct db8500_thermal_zone*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,int /*<<< orphan*/ ,struct db8500_thermal_zone*,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct platform_device*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct db8500_thermal_zone*) ; 
 int /*<<< orphan*/  prcmu_high_irq_handler ; 
 int /*<<< orphan*/  prcmu_low_irq_handler ; 
 int /*<<< orphan*/  thdev_ops ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct db8500_thermal_zone *th = NULL;
	struct device *dev = &pdev->dev;
	int low_irq, high_irq, ret = 0;

	th = FUNC5(dev, sizeof(*th), GFP_KERNEL);
	if (!th)
		return -ENOMEM;

	low_irq = FUNC8(pdev, "IRQ_HOTMON_LOW");
	if (low_irq < 0) {
		FUNC3(dev, "Get IRQ_HOTMON_LOW failed\n");
		return low_irq;
	}

	ret = FUNC6(dev, low_irq, NULL,
		prcmu_low_irq_handler, IRQF_NO_SUSPEND | IRQF_ONESHOT,
		"dbx500_temp_low", th);
	if (ret < 0) {
		FUNC3(dev, "failed to allocate temp low irq\n");
		return ret;
	}

	high_irq = FUNC8(pdev, "IRQ_HOTMON_HIGH");
	if (high_irq < 0) {
		FUNC3(dev, "Get IRQ_HOTMON_HIGH failed\n");
		return high_irq;
	}

	ret = FUNC6(dev, high_irq, NULL,
		prcmu_high_irq_handler, IRQF_NO_SUSPEND | IRQF_ONESHOT,
		"dbx500_temp_high", th);
	if (ret < 0) {
		FUNC3(dev, "failed to allocate temp high irq\n");
		return ret;
	}

	/* register of thermal sensor and get info from DT */
	th->tz = FUNC7(dev, 0, th, &thdev_ops);
	if (FUNC0(th->tz)) {
		FUNC3(dev, "register thermal zone sensor failed\n");
		return FUNC1(th->tz);
	}
	FUNC4(dev, "thermal zone sensor registered\n");

	/* Start measuring at the lowest point */
	FUNC2(th, 0, THERMAL_TREND_STABLE,
				     PRCMU_DEFAULT_LOW_TEMP,
				     db8500_thermal_points[0]);

	FUNC9(pdev, th);

	return 0;
}