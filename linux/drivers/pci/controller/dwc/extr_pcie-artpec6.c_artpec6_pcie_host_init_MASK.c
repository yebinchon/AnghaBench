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
struct artpec6_pcie {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct artpec6_pcie*) ; 
 int /*<<< orphan*/  FUNC1 (struct artpec6_pcie*) ; 
 int /*<<< orphan*/  FUNC2 (struct artpec6_pcie*) ; 
 int /*<<< orphan*/  FUNC3 (struct dw_pcie*) ; 
 int /*<<< orphan*/  FUNC4 (struct artpec6_pcie*) ; 
 int /*<<< orphan*/  FUNC5 (struct artpec6_pcie*) ; 
 int /*<<< orphan*/  FUNC6 (struct artpec6_pcie*) ; 
 int /*<<< orphan*/  FUNC7 (struct pcie_port*) ; 
 int /*<<< orphan*/  FUNC8 (struct dw_pcie*) ; 
 struct artpec6_pcie* FUNC9 (struct dw_pcie*) ; 
 struct dw_pcie* FUNC10 (struct pcie_port*) ; 

__attribute__((used)) static int FUNC11(struct pcie_port *pp)
{
	struct dw_pcie *pci = FUNC10(pp);
	struct artpec6_pcie *artpec6_pcie = FUNC9(pci);

	FUNC0(artpec6_pcie);
	FUNC4(artpec6_pcie);
	FUNC1(artpec6_pcie);
	FUNC6(artpec6_pcie);
	FUNC5(artpec6_pcie);
	FUNC7(pp);
	FUNC3(pci);
	FUNC8(pci);
	FUNC2(artpec6_pcie);

	return 0;
}