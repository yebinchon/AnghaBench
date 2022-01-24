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
struct tegra_pcie_dw {scalar_t__ pcie_cap_base; } ;
struct dw_pcie {int dummy; } ;

/* Variables and functions */
 scalar_t__ PCI_EXP_LNKSTA ; 
 int PCI_EXP_LNKSTA_DLLLA ; 
 int FUNC0 (struct dw_pcie*,scalar_t__) ; 
 struct tegra_pcie_dw* FUNC1 (struct dw_pcie*) ; 

__attribute__((used)) static int FUNC2(struct dw_pcie *pci)
{
	struct tegra_pcie_dw *pcie = FUNC1(pci);
	u32 val = FUNC0(pci, pcie->pcie_cap_base + PCI_EXP_LNKSTA);

	return !!(val & PCI_EXP_LNKSTA_DLLLA);
}