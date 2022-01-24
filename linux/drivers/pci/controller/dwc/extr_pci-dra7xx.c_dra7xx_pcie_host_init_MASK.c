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
struct dra7xx_pcie {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dra7xx_pcie*) ; 
 int /*<<< orphan*/  FUNC1 (struct dw_pcie*) ; 
 int /*<<< orphan*/  FUNC2 (struct pcie_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct pcie_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct dw_pcie*) ; 
 struct dra7xx_pcie* FUNC5 (struct dw_pcie*) ; 
 struct dw_pcie* FUNC6 (struct pcie_port*) ; 

__attribute__((used)) static int FUNC7(struct pcie_port *pp)
{
	struct dw_pcie *pci = FUNC6(pp);
	struct dra7xx_pcie *dra7xx = FUNC5(pci);

	FUNC3(pp);

	FUNC1(pci);
	FUNC4(pci);
	FUNC2(pp);
	FUNC0(dra7xx);

	return 0;
}