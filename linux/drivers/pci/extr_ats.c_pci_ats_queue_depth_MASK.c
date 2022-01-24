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
typedef  int /*<<< orphan*/  u16 ;
struct pci_dev {scalar_t__ ats_cap; scalar_t__ is_virtfn; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ PCI_ATS_CAP ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int PCI_ATS_MAX_QDEP ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,scalar_t__,int /*<<< orphan*/ *) ; 

int FUNC2(struct pci_dev *dev)
{
	u16 cap;

	if (!dev->ats_cap)
		return -EINVAL;

	if (dev->is_virtfn)
		return 0;

	FUNC1(dev, dev->ats_cap + PCI_ATS_CAP, &cap);
	return FUNC0(cap) ? FUNC0(cap) : PCI_ATS_MAX_QDEP;
}