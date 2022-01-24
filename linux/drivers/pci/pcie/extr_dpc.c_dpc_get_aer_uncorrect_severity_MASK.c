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
struct pci_dev {int aer_cap; } ;
struct aer_err_info {int /*<<< orphan*/  severity; } ;

/* Variables and functions */
 int /*<<< orphan*/  AER_FATAL ; 
 int /*<<< orphan*/  AER_NONFATAL ; 
 scalar_t__ PCI_ERR_UNCOR_MASK ; 
 scalar_t__ PCI_ERR_UNCOR_SEVER ; 
 scalar_t__ PCI_ERR_UNCOR_STATUS ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,scalar_t__,int*) ; 

__attribute__((used)) static int FUNC1(struct pci_dev *dev,
					  struct aer_err_info *info)
{
	int pos = dev->aer_cap;
	u32 status, mask, sev;

	FUNC0(dev, pos + PCI_ERR_UNCOR_STATUS, &status);
	FUNC0(dev, pos + PCI_ERR_UNCOR_MASK, &mask);
	status &= ~mask;
	if (!status)
		return 0;

	FUNC0(dev, pos + PCI_ERR_UNCOR_SEVER, &sev);
	status &= sev;
	if (status)
		info->severity = AER_FATAL;
	else
		info->severity = AER_NONFATAL;

	return 1;
}