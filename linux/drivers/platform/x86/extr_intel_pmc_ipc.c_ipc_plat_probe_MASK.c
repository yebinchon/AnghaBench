#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  kobj; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_7__ {scalar_t__ irq; int has_gcr_regs; int /*<<< orphan*/  telemetry_dev; int /*<<< orphan*/  punit_dev; int /*<<< orphan*/  tco_dev; int /*<<< orphan*/  gcr_lock; int /*<<< orphan*/  cmd_complete; int /*<<< orphan*/  irq_mode; TYPE_2__* dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  IPC_TRIGGER_MODE_IRQ ; 
 int /*<<< orphan*/  IRQF_NO_SUSPEND ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,scalar_t__,TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  intel_ipc_group ; 
 int /*<<< orphan*/  ioc ; 
 int FUNC4 () ; 
 int FUNC5 (struct platform_device*) ; 
 TYPE_1__ ipcdev ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	int ret;

	ipcdev.dev = &pdev->dev;
	ipcdev.irq_mode = IPC_TRIGGER_MODE_IRQ;
	FUNC3(&ipcdev.cmd_complete);
	FUNC8(&ipcdev.gcr_lock);

	ipcdev.irq = FUNC7(pdev, 0);
	if (ipcdev.irq < 0)
		return -EINVAL;

	ret = FUNC5(pdev);
	if (ret) {
		FUNC0(&pdev->dev, "Failed to request resource\n");
		return ret;
	}

	ret = FUNC4();
	if (ret) {
		FUNC0(&pdev->dev, "Failed to create pmc devices\n");
		return ret;
	}

	if (FUNC2(&pdev->dev, ipcdev.irq, ioc, IRQF_NO_SUSPEND,
			     "intel_pmc_ipc", &ipcdev)) {
		FUNC0(&pdev->dev, "Failed to request irq\n");
		ret = -EBUSY;
		goto err_irq;
	}

	ret = FUNC9(&pdev->dev.kobj, &intel_ipc_group);
	if (ret) {
		FUNC0(&pdev->dev, "Failed to create sysfs group %d\n",
			ret);
		goto err_sys;
	}

	ipcdev.has_gcr_regs = true;

	return 0;
err_sys:
	FUNC1(&pdev->dev, ipcdev.irq, &ipcdev);
err_irq:
	FUNC6(ipcdev.tco_dev);
	FUNC6(ipcdev.punit_dev);
	FUNC6(ipcdev.telemetry_dev);

	return ret;
}