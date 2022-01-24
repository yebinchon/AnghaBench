#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pcie_port {int dummy; } ;
struct TYPE_2__ {int start; } ;
struct keystone_pcie {TYPE_1__ app; } ;
struct dw_pcie {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_BASE_ADDRESS_0 ; 
 int SZ_4K ; 
 int /*<<< orphan*/  FUNC0 (struct dw_pcie*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct keystone_pcie*) ; 
 int /*<<< orphan*/  FUNC2 (struct keystone_pcie*) ; 
 struct dw_pcie* FUNC3 (struct pcie_port*) ; 
 struct keystone_pcie* FUNC4 (struct dw_pcie*) ; 

__attribute__((used)) static void FUNC5(struct pcie_port *pp)
{
	struct dw_pcie *pci = FUNC3(pp);
	struct keystone_pcie *ks_pcie = FUNC4(pci);

	/* Configure and set up BAR0 */
	FUNC2(ks_pcie);

	/* Enable BAR0 */
	FUNC0(pci, PCI_BASE_ADDRESS_0, 1);
	FUNC0(pci, PCI_BASE_ADDRESS_0, SZ_4K - 1);

	FUNC1(ks_pcie);

	 /*
	  * For BAR0, just setting bus address for inbound writes (MSI) should
	  * be sufficient.  Use physical address to avoid any conflicts.
	  */
	FUNC0(pci, PCI_BASE_ADDRESS_0, ks_pcie->app.start);
}