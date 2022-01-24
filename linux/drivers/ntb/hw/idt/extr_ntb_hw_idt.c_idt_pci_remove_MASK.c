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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct idt_ntb_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct idt_ntb_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct idt_ntb_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct idt_ntb_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct idt_ntb_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct idt_ntb_dev*) ; 
 struct idt_ntb_dev* FUNC6 (struct pci_dev*) ; 

__attribute__((used)) static void FUNC7(struct pci_dev *pdev)
{
	struct idt_ntb_dev *ndev = FUNC6(pdev);

	/* Deinit the DebugFS node */
	FUNC1(ndev);

	/* Unregister NTB device */
	FUNC5(ndev);

	/* Stop the interrupts handling */
	FUNC2(ndev);

	/* Deinitialize link event subsystem */
	FUNC3(ndev);

	/* Deinit basic PCI subsystem */
	FUNC4(ndev);

	/* IDT PCIe-switch NTB driver is finally initialized */
	FUNC0(&pdev->dev, "IDT NTB device is removed");

	/* Sayonara... */
}