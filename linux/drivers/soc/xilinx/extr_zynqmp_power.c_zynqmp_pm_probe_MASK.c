#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_11__ {int /*<<< orphan*/  kobj; } ;
struct platform_device {TYPE_3__ dev; } ;
struct TYPE_12__ {int /*<<< orphan*/  attr; } ;
struct TYPE_10__ {int /*<<< orphan*/  (* get_api_version ) (scalar_t__*) ;int /*<<< orphan*/  (* init_finalize ) () ;} ;

/* Variables and functions */
 int ENODEV ; 
 int ENXIO ; 
 int IRQF_NO_SUSPEND ; 
 int IRQF_ONESHOT ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 scalar_t__ ZYNQMP_PM_VERSION ; 
 TYPE_7__ dev_attr_suspend_mode ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int FUNC4 (TYPE_3__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,TYPE_3__*) ; 
 TYPE_1__* eemi_ops ; 
 int FUNC5 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC9 () ; 
 int /*<<< orphan*/  zynqmp_pm_isr ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	int ret, irq;
	u32 pm_api_version;

	eemi_ops = FUNC9();
	if (FUNC0(eemi_ops))
		return FUNC1(eemi_ops);

	if (!eemi_ops->get_api_version || !eemi_ops->init_finalize)
		return -ENXIO;

	eemi_ops->init_finalize();
	eemi_ops->get_api_version(&pm_api_version);

	/* Check PM API version number */
	if (pm_api_version < ZYNQMP_PM_VERSION)
		return -ENODEV;

	irq = FUNC5(pdev, 0);
	if (irq <= 0)
		return -ENXIO;

	ret = FUNC4(&pdev->dev, irq, NULL, zynqmp_pm_isr,
					IRQF_NO_SUSPEND | IRQF_ONESHOT,
					FUNC3(&pdev->dev), &pdev->dev);
	if (ret) {
		FUNC2(&pdev->dev, "devm_request_threaded_irq '%d' failed "
			"with %d\n", irq, ret);
		return ret;
	}

	ret = FUNC8(&pdev->dev.kobj, &dev_attr_suspend_mode.attr);
	if (ret) {
		FUNC2(&pdev->dev, "unable to create sysfs interface\n");
		return ret;
	}

	return 0;
}