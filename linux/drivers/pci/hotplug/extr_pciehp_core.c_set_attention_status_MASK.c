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
typedef  int u8 ;
struct pci_dev {int dummy; } ;
struct hotplug_slot {int dummy; } ;
struct controller {TYPE_1__* pcie; } ;
struct TYPE_2__ {struct pci_dev* port; } ;

/* Variables and functions */
 int /*<<< orphan*/  INDICATOR_NOOP ; 
 int PCI_EXP_SLTCTL_ATTN_IND_OFF ; 
 int PCI_EXP_SLTCTL_ATTN_IND_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct controller*,int /*<<< orphan*/ ,int) ; 
 struct controller* FUNC3 (struct hotplug_slot*) ; 

__attribute__((used)) static int FUNC4(struct hotplug_slot *hotplug_slot, u8 status)
{
	struct controller *ctrl = FUNC3(hotplug_slot);
	struct pci_dev *pdev = ctrl->pcie->port;

	if (status)
		status <<= PCI_EXP_SLTCTL_ATTN_IND_SHIFT;
	else
		status = PCI_EXP_SLTCTL_ATTN_IND_OFF;

	FUNC0(pdev);
	FUNC2(ctrl, INDICATOR_NOOP, status);
	FUNC1(pdev);
	return 0;
}