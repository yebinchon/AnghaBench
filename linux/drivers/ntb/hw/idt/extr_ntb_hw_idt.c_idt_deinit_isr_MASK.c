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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct idt_ntb_dev*) ; 
 int FUNC2 (struct idt_ntb_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct idt_ntb_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct idt_ntb_dev *ndev)
{
	struct pci_dev *pdev = ndev->ntb.pdev;
	u32 ntint_mask;

	/* Mask interrupts back */
	ntint_mask = FUNC2(ndev, IDT_NT_NTINTMSK) | IDT_NTINTMSK_ALL;
	FUNC3(ndev, IDT_NT_NTINTMSK, ntint_mask);

	/* Manually free IRQ otherwise PCI free irq vectors will fail */
	FUNC1(&pdev->dev, FUNC5(pdev, 0), ndev);

	/* Free allocated IRQ vectors */
	FUNC4(pdev);

	FUNC0(&pdev->dev, "NTB interrupts deinitialized");
}