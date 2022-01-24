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
struct pcie_port {int dummy; } ;
struct dw_pcie {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_PCI_MSI ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pcie_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct pcie_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct dw_pcie*) ; 
 struct dw_pcie* FUNC4 (struct pcie_port*) ; 

__attribute__((used)) static int FUNC5(struct pcie_port *pp)
{
	struct dw_pcie *pci = FUNC4(pp);

	FUNC2(pp);
	FUNC3(pci);

	if (FUNC0(CONFIG_PCI_MSI))
		FUNC1(pp);

	return 0;
}