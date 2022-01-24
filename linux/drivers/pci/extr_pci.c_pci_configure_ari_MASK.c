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
typedef  int u32 ;
struct pci_dev {int ari_enabled; TYPE_1__* bus; scalar_t__ devfn; } ;
struct TYPE_2__ {struct pci_dev* self; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_EXP_DEVCAP2 ; 
 int PCI_EXP_DEVCAP2_ARI ; 
 int /*<<< orphan*/  PCI_EXP_DEVCTL2 ; 
 int /*<<< orphan*/  PCI_EXP_DEVCTL2_ARI ; 
 int /*<<< orphan*/  PCI_EXT_CAP_ID_ARI ; 
 scalar_t__ FUNC0 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 scalar_t__ pcie_ari_disabled ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(struct pci_dev *dev)
{
	u32 cap;
	struct pci_dev *bridge;

	if (pcie_ari_disabled || !FUNC1(dev) || dev->devfn)
		return;

	bridge = dev->bus->self;
	if (!bridge)
		return;

	FUNC3(bridge, PCI_EXP_DEVCAP2, &cap);
	if (!(cap & PCI_EXP_DEVCAP2_ARI))
		return;

	if (FUNC0(dev, PCI_EXT_CAP_ID_ARI)) {
		FUNC4(bridge, PCI_EXP_DEVCTL2,
					 PCI_EXP_DEVCTL2_ARI);
		bridge->ari_enabled = 1;
	} else {
		FUNC2(bridge, PCI_EXP_DEVCTL2,
					   PCI_EXP_DEVCTL2_ARI);
		bridge->ari_enabled = 0;
	}
}