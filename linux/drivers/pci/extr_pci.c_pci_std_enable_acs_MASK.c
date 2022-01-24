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
 scalar_t__ PCI_ACS_CAP ; 
 int PCI_ACS_CR ; 
 scalar_t__ PCI_ACS_CTRL ; 
 int PCI_ACS_RR ; 
 int PCI_ACS_SV ; 
 int PCI_ACS_UF ; 
 int /*<<< orphan*/  PCI_EXT_CAP_ID_ACS ; 
 int FUNC0 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,scalar_t__,int) ; 

__attribute__((used)) static void FUNC3(struct pci_dev *dev)
{
	int pos;
	u16 cap;
	u16 ctrl;

	pos = FUNC0(dev, PCI_EXT_CAP_ID_ACS);
	if (!pos)
		return;

	FUNC1(dev, pos + PCI_ACS_CAP, &cap);
	FUNC1(dev, pos + PCI_ACS_CTRL, &ctrl);

	/* Source Validation */
	ctrl |= (cap & PCI_ACS_SV);

	/* P2P Request Redirect */
	ctrl |= (cap & PCI_ACS_RR);

	/* P2P Completion Redirect */
	ctrl |= (cap & PCI_ACS_CR);

	/* Upstream Forwarding */
	ctrl |= (cap & PCI_ACS_UF);

	FUNC2(dev, pos + PCI_ACS_CTRL, ctrl);
}