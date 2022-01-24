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
typedef  int u8 ;
typedef  int u32 ;
struct pci_dev {int ptm_enabled; int ptm_granularity; int ptm_root; } ;

/* Variables and functions */
 scalar_t__ PCI_EXP_TYPE_ENDPOINT ; 
 scalar_t__ PCI_EXP_TYPE_RC_END ; 
 int /*<<< orphan*/  PCI_EXT_CAP_ID_PTM ; 
 scalar_t__ PCI_PTM_CAP ; 
 int PCI_PTM_CAP_ROOT ; 
 scalar_t__ PCI_PTM_CTRL ; 
 int PCI_PTM_CTRL_ENABLE ; 
 int PCI_PTM_CTRL_ROOT ; 
 int PCI_PTM_GRANULARITY_MASK ; 
 int FUNC0 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 scalar_t__ FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,scalar_t__,int*) ; 
 struct pci_dev* FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,scalar_t__,int) ; 

void FUNC7(struct pci_dev *dev)
{
	int pos;
	u32 cap, ctrl;
	u8 local_clock;
	struct pci_dev *ups;

	if (!FUNC1(dev))
		return;

	pos = FUNC0(dev, PCI_EXT_CAP_ID_PTM);
	if (!pos)
		return;

	/*
	 * Enable PTM only on interior devices (root ports, switch ports,
	 * etc.) on the assumption that it causes no link traffic until an
	 * endpoint enables it.
	 */
	if ((FUNC2(dev) == PCI_EXP_TYPE_ENDPOINT ||
	     FUNC2(dev) == PCI_EXP_TYPE_RC_END))
		return;

	FUNC4(dev, pos + PCI_PTM_CAP, &cap);
	local_clock = (cap & PCI_PTM_GRANULARITY_MASK) >> 8;

	/*
	 * There's no point in enabling PTM unless it's enabled in the
	 * upstream device or this device can be a PTM Root itself.  Per
	 * the spec recommendation (PCIe r3.1, sec 7.32.3), select the
	 * furthest upstream Time Source as the PTM Root.
	 */
	ups = FUNC5(dev);
	if (ups && ups->ptm_enabled) {
		ctrl = PCI_PTM_CTRL_ENABLE;
		if (ups->ptm_granularity == 0)
			dev->ptm_granularity = 0;
		else if (ups->ptm_granularity > local_clock)
			dev->ptm_granularity = ups->ptm_granularity;
	} else {
		if (cap & PCI_PTM_CAP_ROOT) {
			ctrl = PCI_PTM_CTRL_ENABLE | PCI_PTM_CTRL_ROOT;
			dev->ptm_root = 1;
			dev->ptm_granularity = local_clock;
		} else
			return;
	}

	ctrl |= dev->ptm_granularity << 8;
	FUNC6(dev, pos + PCI_PTM_CTRL, ctrl);
	dev->ptm_enabled = 1;

	FUNC3(dev);
}