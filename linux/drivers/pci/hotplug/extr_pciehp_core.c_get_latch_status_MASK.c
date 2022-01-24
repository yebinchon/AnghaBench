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
typedef  int /*<<< orphan*/  u8 ;
struct pci_dev {int dummy; } ;
struct hotplug_slot {int dummy; } ;
struct controller {TYPE_1__* pcie; } ;
struct TYPE_2__ {struct pci_dev* port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct controller*,int /*<<< orphan*/ *) ; 
 struct controller* FUNC3 (struct hotplug_slot*) ; 

__attribute__((used)) static int FUNC4(struct hotplug_slot *hotplug_slot, u8 *value)
{
	struct controller *ctrl = FUNC3(hotplug_slot);
	struct pci_dev *pdev = ctrl->pcie->port;

	FUNC0(pdev);
	FUNC2(ctrl, value);
	FUNC1(pdev);
	return 0;
}