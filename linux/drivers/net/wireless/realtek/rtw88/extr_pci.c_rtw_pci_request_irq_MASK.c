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
struct rtw_dev {int /*<<< orphan*/  dev; } ;
struct pci_dev {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  KBUILD_MODNAME ; 
 unsigned int PCI_IRQ_LEGACY ; 
 unsigned int PCI_IRQ_MSI ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rtw_dev*) ; 
 int FUNC1 (struct pci_dev*,int,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  rtw_disable_msi ; 
 int /*<<< orphan*/  FUNC3 (struct rtw_dev*,char*,...) ; 
 int /*<<< orphan*/  rtw_pci_interrupt_handler ; 
 int /*<<< orphan*/  rtw_pci_interrupt_threadfn ; 

__attribute__((used)) static int FUNC4(struct rtw_dev *rtwdev, struct pci_dev *pdev)
{
	unsigned int flags = PCI_IRQ_LEGACY;
	int ret;

	if (!rtw_disable_msi)
		flags |= PCI_IRQ_MSI;

	ret = FUNC1(pdev, 1, 1, flags);
	if (ret < 0) {
		FUNC3(rtwdev, "failed to alloc PCI irq vectors\n");
		return ret;
	}

	ret = FUNC0(rtwdev->dev, pdev->irq,
					rtw_pci_interrupt_handler,
					rtw_pci_interrupt_threadfn,
					IRQF_SHARED, KBUILD_MODNAME, rtwdev);
	if (ret) {
		FUNC3(rtwdev, "failed to request irq %d\n", ret);
		FUNC2(pdev);
	}

	return ret;
}