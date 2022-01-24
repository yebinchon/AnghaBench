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
struct uniphier_pcie_priv {int dummy; } ;
struct pcie_port {int dummy; } ;
struct dw_pcie {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_PCI_MSI ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pcie_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct pcie_port*) ; 
 struct dw_pcie* FUNC3 (struct pcie_port*) ; 
 struct uniphier_pcie_priv* FUNC4 (struct dw_pcie*) ; 
 int FUNC5 (struct pcie_port*) ; 
 int FUNC6 (struct dw_pcie*) ; 
 int /*<<< orphan*/  FUNC7 (struct uniphier_pcie_priv*) ; 

__attribute__((used)) static int FUNC8(struct pcie_port *pp)
{
	struct dw_pcie *pci = FUNC3(pp);
	struct uniphier_pcie_priv *priv = FUNC4(pci);
	int ret;

	ret = FUNC5(pp);
	if (ret)
		return ret;

	FUNC7(priv);

	FUNC2(pp);
	ret = FUNC6(pci);
	if (ret)
		return ret;

	if (FUNC0(CONFIG_PCI_MSI))
		FUNC1(pp);

	return 0;
}