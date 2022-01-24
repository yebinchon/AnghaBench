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
struct pci_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ PCI_VC_PORT_CTRL ; 
 int PCI_VC_PORT_CTRL_LOAD_TABLE ; 
 scalar_t__ PCI_VC_PORT_STATUS ; 
 int /*<<< orphan*/  PCI_VC_PORT_STATUS_TABLE ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,scalar_t__,int*) ; 
 scalar_t__ FUNC2 (struct pci_dev*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,scalar_t__,int) ; 

__attribute__((used)) static void FUNC4(struct pci_dev *dev, int pos)
{
	u16 ctrl;

	FUNC1(dev, pos + PCI_VC_PORT_CTRL, &ctrl);
	FUNC3(dev, pos + PCI_VC_PORT_CTRL,
			      ctrl | PCI_VC_PORT_CTRL_LOAD_TABLE);
	if (FUNC2(dev, pos + PCI_VC_PORT_STATUS,
				 PCI_VC_PORT_STATUS_TABLE))
		return;

	FUNC0(dev, "VC arbitration table failed to load\n");
}