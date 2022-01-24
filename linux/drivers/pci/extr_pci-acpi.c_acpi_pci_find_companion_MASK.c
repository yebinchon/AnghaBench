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
typedef  int u64 ;
struct pci_dev {int /*<<< orphan*/  devfn; } ;
struct device {int /*<<< orphan*/  parent; } ;
struct acpi_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct acpi_device* FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC4 (struct pci_dev*) ; 
 struct pci_dev* FUNC5 (struct device*) ; 

__attribute__((used)) static struct acpi_device *FUNC6(struct device *dev)
{
	struct pci_dev *pci_dev = FUNC5(dev);
	bool check_children;
	u64 addr;

	check_children = FUNC4(pci_dev);
	/* Please ref to ACPI spec for the syntax of _ADR */
	addr = (FUNC2(pci_dev->devfn) << 16) | FUNC1(pci_dev->devfn);
	return FUNC3(FUNC0(dev->parent), addr,
				      check_children);
}