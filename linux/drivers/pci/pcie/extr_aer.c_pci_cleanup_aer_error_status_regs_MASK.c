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
typedef  int /*<<< orphan*/  u32 ;
struct pci_dev {int aer_cap; } ;

/* Variables and functions */
 int EIO ; 
 int ENODEV ; 
 scalar_t__ PCI_ERR_COR_STATUS ; 
 scalar_t__ PCI_ERR_ROOT_STATUS ; 
 scalar_t__ PCI_ERR_UNCOR_STATUS ; 
 int PCI_EXP_TYPE_ROOT_PORT ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*) ; 
 int FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct pci_dev*) ; 

int FUNC5(struct pci_dev *dev)
{
	int pos;
	u32 status;
	int port_type;

	if (!FUNC0(dev))
		return -ENODEV;

	pos = dev->aer_cap;
	if (!pos)
		return -EIO;

	if (FUNC4(dev))
		return -EIO;

	port_type = FUNC1(dev);
	if (port_type == PCI_EXP_TYPE_ROOT_PORT) {
		FUNC2(dev, pos + PCI_ERR_ROOT_STATUS, &status);
		FUNC3(dev, pos + PCI_ERR_ROOT_STATUS, status);
	}

	FUNC2(dev, pos + PCI_ERR_COR_STATUS, &status);
	FUNC3(dev, pos + PCI_ERR_COR_STATUS, status);

	FUNC2(dev, pos + PCI_ERR_UNCOR_STATUS, &status);
	FUNC3(dev, pos + PCI_ERR_UNCOR_STATUS, status);

	return 0;
}