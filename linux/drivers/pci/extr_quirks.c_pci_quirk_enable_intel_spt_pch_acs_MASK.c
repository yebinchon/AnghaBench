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
 int ENOTTY ; 
 scalar_t__ INTEL_SPT_ACS_CTRL ; 
 scalar_t__ PCI_ACS_CAP ; 
 int PCI_ACS_CR ; 
 int PCI_ACS_RR ; 
 int PCI_ACS_SV ; 
 int PCI_ACS_UF ; 
 int /*<<< orphan*/  PCI_EXT_CAP_ID_ACS ; 
 int FUNC0 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,scalar_t__,int) ; 

__attribute__((used)) static int FUNC5(struct pci_dev *dev)
{
	int pos;
	u32 cap, ctrl;

	if (!FUNC2(dev))
		return -ENOTTY;

	pos = FUNC0(dev, PCI_EXT_CAP_ID_ACS);
	if (!pos)
		return -ENOTTY;

	FUNC3(dev, pos + PCI_ACS_CAP, &cap);
	FUNC3(dev, pos + INTEL_SPT_ACS_CTRL, &ctrl);

	ctrl |= (cap & PCI_ACS_SV);
	ctrl |= (cap & PCI_ACS_RR);
	ctrl |= (cap & PCI_ACS_CR);
	ctrl |= (cap & PCI_ACS_UF);

	FUNC4(dev, pos + INTEL_SPT_ACS_CTRL, ctrl);

	FUNC1(dev, "Intel SPT PCH root port ACS workaround enabled\n");

	return 0;
}