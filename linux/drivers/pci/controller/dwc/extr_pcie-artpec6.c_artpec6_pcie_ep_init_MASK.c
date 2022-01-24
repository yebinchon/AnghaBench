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
struct dw_pcie_ep {int dummy; } ;
struct dw_pcie {int dummy; } ;
struct artpec6_pcie {int dummy; } ;
typedef  enum pci_barno { ____Placeholder_pci_barno } pci_barno ;

/* Variables and functions */
 int BAR_0 ; 
 int BAR_5 ; 
 int /*<<< orphan*/  FUNC0 (struct artpec6_pcie*) ; 
 int /*<<< orphan*/  FUNC1 (struct artpec6_pcie*) ; 
 int /*<<< orphan*/  FUNC2 (struct artpec6_pcie*) ; 
 int /*<<< orphan*/  FUNC3 (struct artpec6_pcie*) ; 
 int /*<<< orphan*/  FUNC4 (struct artpec6_pcie*) ; 
 int /*<<< orphan*/  FUNC5 (struct dw_pcie*,int) ; 
 struct artpec6_pcie* FUNC6 (struct dw_pcie*) ; 
 struct dw_pcie* FUNC7 (struct dw_pcie_ep*) ; 

__attribute__((used)) static void FUNC8(struct dw_pcie_ep *ep)
{
	struct dw_pcie *pci = FUNC7(ep);
	struct artpec6_pcie *artpec6_pcie = FUNC6(pci);
	enum pci_barno bar;

	FUNC0(artpec6_pcie);
	FUNC2(artpec6_pcie);
	FUNC1(artpec6_pcie);
	FUNC4(artpec6_pcie);
	FUNC3(artpec6_pcie);

	for (bar = BAR_0; bar <= BAR_5; bar++)
		FUNC5(pci, bar);
}