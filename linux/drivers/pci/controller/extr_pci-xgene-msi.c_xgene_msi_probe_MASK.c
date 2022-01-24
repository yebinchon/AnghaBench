#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct xgene_msi {TYPE_1__* msi_groups; int /*<<< orphan*/  num_cpus; int /*<<< orphan*/  node; int /*<<< orphan*/  msi_addr; int /*<<< orphan*/  msi_regs; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_6__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_5__ {int gic_irq; int msi_grp; struct xgene_msi* msi; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPUHP_AP_ONLINE_DYN ; 
 int /*<<< orphan*/  CPUHP_PCI_XGENE_DEAD ; 
 int EINVAL ; 
 scalar_t__ IDX_PER_GROUP ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int NR_HW_IRQS ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,struct resource*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int pci_xgene_online ; 
 int FUNC7 (struct platform_device*,int) ; 
 struct resource* FUNC8 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct xgene_msi*) ; 
 int FUNC10 (struct xgene_msi*) ; 
 struct xgene_msi xgene_msi_ctrl ; 
 int /*<<< orphan*/ * xgene_msi_hwirq_alloc ; 
 int /*<<< orphan*/ * xgene_msi_hwirq_free ; 
 int FUNC11 (struct xgene_msi*) ; 
 scalar_t__ FUNC12 (struct xgene_msi*,int) ; 
 scalar_t__ FUNC13 (struct xgene_msi*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device*) ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct resource *res;
	int rc, irq_index;
	struct xgene_msi *xgene_msi;
	int virt_msir;
	u32 msi_val, msi_idx;

	xgene_msi = &xgene_msi_ctrl;

	FUNC9(pdev, xgene_msi);

	res = FUNC8(pdev, IORESOURCE_MEM, 0);
	xgene_msi->msi_regs = FUNC5(&pdev->dev, res);
	if (FUNC0(xgene_msi->msi_regs)) {
		FUNC3(&pdev->dev, "no reg space\n");
		rc = FUNC1(xgene_msi->msi_regs);
		goto error;
	}
	xgene_msi->msi_addr = res->start;
	xgene_msi->node = pdev->dev.of_node;
	xgene_msi->num_cpus = FUNC6();

	rc = FUNC11(xgene_msi);
	if (rc) {
		FUNC3(&pdev->dev, "Error allocating MSI bitmap\n");
		goto error;
	}

	rc = FUNC10(xgene_msi);
	if (rc) {
		FUNC3(&pdev->dev, "Failed to allocate MSI domain\n");
		goto error;
	}

	for (irq_index = 0; irq_index < NR_HW_IRQS; irq_index++) {
		virt_msir = FUNC7(pdev, irq_index);
		if (virt_msir < 0) {
			FUNC3(&pdev->dev, "Cannot translate IRQ index %d\n",
				irq_index);
			rc = virt_msir;
			goto error;
		}
		xgene_msi->msi_groups[irq_index].gic_irq = virt_msir;
		xgene_msi->msi_groups[irq_index].msi_grp = irq_index;
		xgene_msi->msi_groups[irq_index].msi = xgene_msi;
	}

	/*
	 * MSInIRx registers are read-to-clear; before registering
	 * interrupt handlers, read all of them to clear spurious
	 * interrupts that may occur before the driver is probed.
	 */
	for (irq_index = 0; irq_index < NR_HW_IRQS; irq_index++) {
		for (msi_idx = 0; msi_idx < IDX_PER_GROUP; msi_idx++)
			msi_val = FUNC13(xgene_msi, irq_index,
						    msi_idx);
		/* Read MSIINTn to confirm */
		msi_val = FUNC12(xgene_msi, irq_index);
		if (msi_val) {
			FUNC3(&pdev->dev, "Failed to clear spurious IRQ\n");
			rc = -EINVAL;
			goto error;
		}
	}

	rc = FUNC2(CPUHP_AP_ONLINE_DYN, "pci/xgene:online",
			       xgene_msi_hwirq_alloc, NULL);
	if (rc < 0)
		goto err_cpuhp;
	pci_xgene_online = rc;
	rc = FUNC2(CPUHP_PCI_XGENE_DEAD, "pci/xgene:dead", NULL,
			       xgene_msi_hwirq_free);
	if (rc)
		goto err_cpuhp;

	FUNC4(&pdev->dev, "APM X-Gene PCIe MSI driver loaded\n");

	return 0;

err_cpuhp:
	FUNC3(&pdev->dev, "failed to add CPU MSI notifier\n");
error:
	FUNC14(pdev);
	return rc;
}