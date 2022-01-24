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
struct dw_pcie {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dw_pcie*) ; 
 int FUNC1 (struct dw_pcie*) ; 
 struct uniphier_pcie_priv* FUNC2 (struct dw_pcie*) ; 
 int /*<<< orphan*/  FUNC3 (struct uniphier_pcie_priv*,int) ; 

__attribute__((used)) static int FUNC4(struct dw_pcie *pci)
{
	struct uniphier_pcie_priv *priv = FUNC2(pci);

	if (FUNC0(pci))
		return 0;

	FUNC3(priv, true);

	return FUNC1(pci);
}