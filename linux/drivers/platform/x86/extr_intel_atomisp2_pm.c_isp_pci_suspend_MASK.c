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
typedef  int /*<<< orphan*/  u32 ;
struct pci_dev {int /*<<< orphan*/  current_state; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_CSI_CONTROL ; 
 int /*<<< orphan*/  PCI_CSI_CONTROL_PORTS_OFF_MASK ; 
 int /*<<< orphan*/  PCI_D3cold ; 
 int /*<<< orphan*/  PCI_INTERRUPT_CTRL ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct pci_dev* FUNC4 (struct device*) ; 

__attribute__((used)) static int FUNC5(struct device *dev)
{
	struct pci_dev *pdev = FUNC4(dev);
	u32 val;

	FUNC3(pdev, PCI_INTERRUPT_CTRL, 0);

	/*
	 * MRFLD IUNIT DPHY is located in an always-power-on island
	 * MRFLD HW design need all CSI ports are disabled before
	 * powering down the IUNIT.
	 */
	FUNC1(pdev, PCI_CSI_CONTROL, &val);
	val |= PCI_CSI_CONTROL_PORTS_OFF_MASK;
	FUNC3(pdev, PCI_CSI_CONTROL, val);

	/*
	 * We lose config space access when punit power gates
	 * the ISP. Can't use pci_set_power_state() because
	 * pmcsr won't actually change when we write to it.
	 */
	FUNC2(pdev);
	pdev->current_state = PCI_D3cold;
	FUNC0(pdev, false);

	return 0;
}