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
typedef  int u32 ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int PCI_CAP_VC_PER_VC_SIZEOF ; 
 int PCI_VC_RES_CTRL ; 
 int PCI_VC_RES_CTRL_LOAD_TABLE ; 
 int PCI_VC_RES_STATUS ; 
 int /*<<< orphan*/  PCI_VC_RES_STATUS_TABLE ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int,int*) ; 
 scalar_t__ FUNC2 (struct pci_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int,int) ; 

__attribute__((used)) static void FUNC4(struct pci_dev *dev, int pos, int res)
{
	int ctrl_pos, status_pos;
	u32 ctrl;

	ctrl_pos = pos + PCI_VC_RES_CTRL + (res * PCI_CAP_VC_PER_VC_SIZEOF);
	status_pos = pos + PCI_VC_RES_STATUS + (res * PCI_CAP_VC_PER_VC_SIZEOF);

	FUNC1(dev, ctrl_pos, &ctrl);
	FUNC3(dev, ctrl_pos,
			       ctrl | PCI_VC_RES_CTRL_LOAD_TABLE);

	if (FUNC2(dev, status_pos, PCI_VC_RES_STATUS_TABLE))
		return;

	FUNC0(dev, "VC%d port arbitration table failed to load\n", res);
}