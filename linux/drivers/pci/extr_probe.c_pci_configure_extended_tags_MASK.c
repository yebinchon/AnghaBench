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
typedef  int u16 ;
struct pci_host_bridge {scalar_t__ no_ext_tags; } ;
struct pci_dev {int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_EXP_DEVCAP ; 
 int PCI_EXP_DEVCAP_EXT_TAG ; 
 int /*<<< orphan*/  PCI_EXP_DEVCTL ; 
 int PCI_EXP_DEVCTL_EXT_TAG ; 
 struct pci_host_bridge* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int FUNC5 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 

int FUNC7(struct pci_dev *dev, void *ign)
{
	struct pci_host_bridge *host;
	u32 cap;
	u16 ctl;
	int ret;

	if (!FUNC2(dev))
		return 0;

	ret = FUNC4(dev, PCI_EXP_DEVCAP, &cap);
	if (ret)
		return 0;

	if (!(cap & PCI_EXP_DEVCAP_EXT_TAG))
		return 0;

	ret = FUNC5(dev, PCI_EXP_DEVCTL, &ctl);
	if (ret)
		return 0;

	host = FUNC0(dev->bus);
	if (!host)
		return 0;

	/*
	 * If some device in the hierarchy doesn't handle Extended Tags
	 * correctly, make sure they're disabled.
	 */
	if (host->no_ext_tags) {
		if (ctl & PCI_EXP_DEVCTL_EXT_TAG) {
			FUNC1(dev, "disabling Extended Tags\n");
			FUNC3(dev, PCI_EXP_DEVCTL,
						   PCI_EXP_DEVCTL_EXT_TAG);
		}
		return 0;
	}

	if (!(ctl & PCI_EXP_DEVCTL_EXT_TAG)) {
		FUNC1(dev, "enabling Extended Tags\n");
		FUNC6(dev, PCI_EXP_DEVCTL,
					 PCI_EXP_DEVCTL_EXT_TAG);
	}
	return 0;
}