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
typedef  enum pcie_link_width { ____Placeholder_pcie_link_width } pcie_link_width ;
typedef  enum pci_bus_speed { ____Placeholder_pci_bus_speed } pci_bus_speed ;

/* Variables and functions */
 int PCIE_LNK_WIDTH_UNKNOWN ; 
 int FUNC0 (int) ; 
 int PCI_SPEED_UNKNOWN ; 
 int FUNC1 (struct pci_dev*) ; 
 int FUNC2 (struct pci_dev*) ; 

u32 FUNC3(struct pci_dev *dev, enum pci_bus_speed *speed,
			   enum pcie_link_width *width)
{
	*speed = FUNC1(dev);
	*width = FUNC2(dev);

	if (*speed == PCI_SPEED_UNKNOWN || *width == PCIE_LNK_WIDTH_UNKNOWN)
		return 0;

	return *width * FUNC0(*speed);
}