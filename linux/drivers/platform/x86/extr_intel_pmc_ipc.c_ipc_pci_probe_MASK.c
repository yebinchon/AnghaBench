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
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;
struct intel_pmc_ipc_dev {int /*<<< orphan*/ * dev; int /*<<< orphan*/  ipc_base; int /*<<< orphan*/  cmd_complete; int /*<<< orphan*/  gcr_lock; int /*<<< orphan*/  irq_mode; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  IPC_TRIGGER_MODE_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct intel_pmc_ipc_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ioc ; 
 struct intel_pmc_ipc_dev ipcdev ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,struct intel_pmc_ipc_dev*) ; 
 int FUNC5 (struct pci_dev*) ; 
 int FUNC6 (struct pci_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct pci_dev *pdev, const struct pci_device_id *id)
{
	struct intel_pmc_ipc_dev *pmc = &ipcdev;
	int ret;

	/* Only one PMC is supported */
	if (pmc->dev)
		return -EBUSY;

	pmc->irq_mode = IPC_TRIGGER_MODE_IRQ;

	FUNC8(&ipcdev.gcr_lock);

	ret = FUNC5(pdev);
	if (ret)
		return ret;

	ret = FUNC6(pdev, 1 << 0, FUNC3(pdev));
	if (ret)
		return ret;

	FUNC2(&pmc->cmd_complete);

	pmc->ipc_base = FUNC7(pdev)[0];

	ret = FUNC1(&pdev->dev, pdev->irq, ioc, 0, "intel_pmc_ipc",
				pmc);
	if (ret) {
		FUNC0(&pdev->dev, "Failed to request irq\n");
		return ret;
	}

	pmc->dev = &pdev->dev;

	FUNC4(pdev, pmc);

	return 0;
}