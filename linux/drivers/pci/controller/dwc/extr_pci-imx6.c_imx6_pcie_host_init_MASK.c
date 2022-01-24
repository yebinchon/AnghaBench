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
struct imx6_pcie {int dummy; } ;
struct dw_pcie {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_PCI_MSI ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pcie_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct pcie_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct imx6_pcie*) ; 
 int /*<<< orphan*/  FUNC4 (struct imx6_pcie*) ; 
 int /*<<< orphan*/  FUNC5 (struct imx6_pcie*) ; 
 int /*<<< orphan*/  FUNC6 (struct imx6_pcie*) ; 
 int /*<<< orphan*/  FUNC7 (struct imx6_pcie*) ; 
 struct dw_pcie* FUNC8 (struct pcie_port*) ; 
 struct imx6_pcie* FUNC9 (struct dw_pcie*) ; 

__attribute__((used)) static int FUNC10(struct pcie_port *pp)
{
	struct dw_pcie *pci = FUNC8(pp);
	struct imx6_pcie *imx6_pcie = FUNC9(pci);

	FUNC3(imx6_pcie);
	FUNC6(imx6_pcie);
	FUNC4(imx6_pcie);
	FUNC7(imx6_pcie);
	FUNC2(pp);
	FUNC5(imx6_pcie);

	if (FUNC0(CONFIG_PCI_MSI))
		FUNC1(pp);

	return 0;
}