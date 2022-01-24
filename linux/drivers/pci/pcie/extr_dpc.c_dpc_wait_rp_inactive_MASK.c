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
typedef  int u16 ;
struct pci_dev {int dummy; } ;
struct dpc_dev {int cap_pos; TYPE_1__* dev; } ;
struct TYPE_2__ {struct pci_dev* port; } ;

/* Variables and functions */
 int EBUSY ; 
 unsigned long HZ ; 
 int PCI_EXP_DPC_RP_BUSY ; 
 int PCI_EXP_DPC_STATUS ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,char*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct dpc_dev *dpc)
{
	unsigned long timeout = jiffies + HZ;
	struct pci_dev *pdev = dpc->dev->port;
	u16 cap = dpc->cap_pos, status;

	FUNC1(pdev, cap + PCI_EXP_DPC_STATUS, &status);
	while (status & PCI_EXP_DPC_RP_BUSY &&
					!FUNC3(jiffies, timeout)) {
		FUNC0(10);
		FUNC1(pdev, cap + PCI_EXP_DPC_STATUS, &status);
	}
	if (status & PCI_EXP_DPC_RP_BUSY) {
		FUNC2(pdev, "root port still busy\n");
		return -EBUSY;
	}
	return 0;
}