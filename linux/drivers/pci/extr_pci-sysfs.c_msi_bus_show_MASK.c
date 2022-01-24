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
struct pci_dev {int /*<<< orphan*/  no_msi; struct pci_bus* subordinate; } ;
struct pci_bus {int bus_flags; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int PCI_BUS_FLAGS_NO_MSI ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 struct pci_dev* FUNC1 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC2(struct device *dev, struct device_attribute *attr,
			    char *buf)
{
	struct pci_dev *pdev = FUNC1(dev);
	struct pci_bus *subordinate = pdev->subordinate;

	return FUNC0(buf, "%u\n", subordinate ?
		       !(subordinate->bus_flags & PCI_BUS_FLAGS_NO_MSI)
			   : !pdev->no_msi);
}