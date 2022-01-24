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
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int ENOTTY ; 
 scalar_t__ INTEL_SPT_ACS_CTRL ; 
 scalar_t__ PCI_ACS_CAP ; 
 int PCI_ACS_EC ; 
 int /*<<< orphan*/  PCI_EXT_CAP_ID_ACS ; 
 int FUNC0 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,scalar_t__,int*) ; 

__attribute__((used)) static int FUNC3(struct pci_dev *dev, u16 acs_flags)
{
	int pos;
	u32 cap, ctrl;

	if (!FUNC1(dev))
		return -ENOTTY;

	pos = FUNC0(dev, PCI_EXT_CAP_ID_ACS);
	if (!pos)
		return -ENOTTY;

	/* see pci_acs_flags_enabled() */
	FUNC2(dev, pos + PCI_ACS_CAP, &cap);
	acs_flags &= (cap | PCI_ACS_EC);

	FUNC2(dev, pos + INTEL_SPT_ACS_CTRL, &ctrl);

	return acs_flags & ~ctrl ? 0 : 1;
}