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
typedef  int u16 ;
struct pcie_device {struct pci_dev* port; } ;
struct pci_dev {int dummy; } ;
struct dpc_dev {scalar_t__ cap_pos; } ;

/* Variables and functions */
 scalar_t__ PCI_EXP_DPC_CTL ; 
 int PCI_EXP_DPC_CTL_EN_FATAL ; 
 int PCI_EXP_DPC_CTL_INT_EN ; 
 struct dpc_dev* FUNC0 (struct pcie_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,scalar_t__,int) ; 

__attribute__((used)) static void FUNC3(struct pcie_device *dev)
{
	struct dpc_dev *dpc = FUNC0(dev);
	struct pci_dev *pdev = dev->port;
	u16 ctl;

	FUNC1(pdev, dpc->cap_pos + PCI_EXP_DPC_CTL, &ctl);
	ctl &= ~(PCI_EXP_DPC_CTL_EN_FATAL | PCI_EXP_DPC_CTL_INT_EN);
	FUNC2(pdev, dpc->cap_pos + PCI_EXP_DPC_CTL, ctl);
}