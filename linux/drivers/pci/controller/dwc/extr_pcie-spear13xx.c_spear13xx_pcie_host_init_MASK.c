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
struct spear13xx_pcie {int dummy; } ;
struct pcie_port {int dummy; } ;
struct dw_pcie {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct spear13xx_pcie*) ; 
 int /*<<< orphan*/  FUNC1 (struct spear13xx_pcie*) ; 
 struct dw_pcie* FUNC2 (struct pcie_port*) ; 
 struct spear13xx_pcie* FUNC3 (struct dw_pcie*) ; 

__attribute__((used)) static int FUNC4(struct pcie_port *pp)
{
	struct dw_pcie *pci = FUNC2(pp);
	struct spear13xx_pcie *spear13xx_pcie = FUNC3(pci);

	FUNC1(spear13xx_pcie);
	FUNC0(spear13xx_pcie);

	return 0;
}