#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {struct pci_dev* pdev; } ;
struct idt_ntb_dev {TYPE_1__ ntb; } ;

/* Variables and functions */
 int IDT_NTINTMSK_ALL ; 
 int /*<<< orphan*/  IDT_NT_NTINTMSK ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 int /*<<< orphan*/  NTB_IRQNAME ; 
 int PCI_IRQ_LEGACY ; 
 int PCI_IRQ_MSI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct idt_ntb_dev*) ; 
 int FUNC3 (struct idt_ntb_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct idt_ntb_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  idt_thread_isr ; 
 int FUNC5 (struct pci_dev*,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int FUNC7 (struct pci_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct idt_ntb_dev *ndev)
{
	struct pci_dev *pdev = ndev->ntb.pdev;
	u32 ntint_mask;
	int ret;

	/* Allocate just one interrupt vector for the ISR */
	ret = FUNC5(pdev, 1, 1, PCI_IRQ_MSI | PCI_IRQ_LEGACY);
	if (ret != 1) {
		FUNC1(&pdev->dev, "Failed to allocate IRQ vector");
		return ret;
	}

	/* Retrieve the IRQ vector */
	ret = FUNC7(pdev, 0);
	if (ret < 0) {
		FUNC1(&pdev->dev, "Failed to get IRQ vector");
		goto err_free_vectors;
	}

	/* Set the IRQ handler */
	ret = FUNC2(&pdev->dev, ret, NULL, idt_thread_isr,
					IRQF_ONESHOT, NTB_IRQNAME, ndev);
	if (ret != 0) {
		FUNC1(&pdev->dev, "Failed to set MSI IRQ handler, %d", ret);
		goto err_free_vectors;
	}

	/* Unmask Message/Doorbell/SE interrupts */
	ntint_mask = FUNC3(ndev, IDT_NT_NTINTMSK) & ~IDT_NTINTMSK_ALL;
	FUNC4(ndev, IDT_NT_NTINTMSK, ntint_mask);

	/* From now on the interrupts are enabled */
	FUNC0(&pdev->dev, "NTB interrupts initialized");

	return 0;

err_free_vectors:
	FUNC6(pdev);

	return ret;
}