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
 int /*<<< orphan*/  PCI_EXP_LNKCTL ; 
 int PCI_EXP_LNKCTL_RCB ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 struct pci_dev* FUNC1 (struct pci_dev*) ; 

__attribute__((used)) static bool FUNC2(struct pci_dev *dev)
{
	struct pci_dev *rp = FUNC1(dev);
	u16 lnkctl;

	if (!rp)
		return false;

	FUNC0(rp, PCI_EXP_LNKCTL, &lnkctl);
	if (lnkctl & PCI_EXP_LNKCTL_RCB)
		return true;

	return false;
}