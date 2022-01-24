#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {int irq; int /*<<< orphan*/  cmd_complete; int /*<<< orphan*/  lock; int /*<<< orphan*/ * dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_NO_SUSPEND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct platform_device*) ; 
 int /*<<< orphan*/  intel_punit_ioc ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,TYPE_1__*) ; 
 TYPE_1__* punit_ipcdev ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	int irq, ret;

	punit_ipcdev = FUNC2(&pdev->dev,
				    sizeof(*punit_ipcdev), GFP_KERNEL);
	if (!punit_ipcdev)
		return -ENOMEM;

	FUNC8(pdev, punit_ipcdev);

	irq = FUNC7(pdev, 0);
	if (irq < 0) {
		FUNC1(&pdev->dev, "Invalid IRQ, using polling mode\n");
	} else {
		ret = FUNC3(&pdev->dev, irq, intel_punit_ioc,
				       IRQF_NO_SUSPEND, "intel_punit_ipc",
				       &punit_ipcdev);
		if (ret) {
			FUNC0(&pdev->dev, "Failed to request irq: %d\n", irq);
			return ret;
		}
		punit_ipcdev->irq = irq;
	}

	ret = FUNC5(pdev);
	if (ret)
		goto out;

	punit_ipcdev->dev = &pdev->dev;
	FUNC6(&punit_ipcdev->lock);
	FUNC4(&punit_ipcdev->cmd_complete);

out:
	return ret;
}