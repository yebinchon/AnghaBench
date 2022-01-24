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
struct pci_dev {scalar_t__ device; int /*<<< orphan*/  dev; } ;
struct dwc3_pci {int /*<<< orphan*/  dwc3; int /*<<< orphan*/  wakeup_work; struct pci_dev* pci; } ;

/* Variables and functions */
 scalar_t__ PCI_DEVICE_ID_INTEL_BYT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct dwc3_pci* FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  platform_bytcr_gpios ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct pci_dev *pci)
{
	struct dwc3_pci		*dwc = FUNC3(pci);
	struct pci_dev		*pdev = dwc->pci;

	if (pdev->device == PCI_DEVICE_ID_INTEL_BYT)
		FUNC2(&platform_bytcr_gpios);
#ifdef CONFIG_PM
	cancel_work_sync(&dwc->wakeup_work);
#endif
	FUNC1(&pci->dev, false);
	FUNC5(&pci->dev);
	FUNC4(dwc->dwc3);
}