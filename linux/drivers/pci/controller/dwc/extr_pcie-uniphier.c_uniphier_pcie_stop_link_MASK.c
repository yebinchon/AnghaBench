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
 struct uniphier_pcie_priv* FUNC0 (struct dw_pcie*) ; 
 int /*<<< orphan*/  FUNC1 (struct uniphier_pcie_priv*,int) ; 

__attribute__((used)) static void FUNC2(struct dw_pcie *pci)
{
	struct uniphier_pcie_priv *priv = FUNC0(pci);

	FUNC1(priv, false);
}