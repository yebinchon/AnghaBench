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
struct pci_dev {scalar_t__ device; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__*) ; 
 scalar_t__ PCI_EXP_TYPE_ROOT_PORT ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 scalar_t__ FUNC2 (struct pci_dev*) ; 
 scalar_t__* pci_quirk_intel_pch_acs_ids ; 

__attribute__((used)) static bool FUNC3(struct pci_dev *dev)
{
	int i;

	/* Filter out a few obvious non-matches first */
	if (!FUNC1(dev) || FUNC2(dev) != PCI_EXP_TYPE_ROOT_PORT)
		return false;

	for (i = 0; i < FUNC0(pci_quirk_intel_pch_acs_ids); i++)
		if (pci_quirk_intel_pch_acs_ids[i] == dev->device)
			return true;

	return false;
}