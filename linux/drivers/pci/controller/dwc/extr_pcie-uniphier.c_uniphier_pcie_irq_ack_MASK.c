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
typedef  int /*<<< orphan*/  u32 ;
struct uniphier_pcie_priv {scalar_t__ base; } ;
struct pcie_port {int dummy; } ;
struct irq_data {int dummy; } ;
struct dw_pcie {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ PCL_RCV_INTX ; 
 int /*<<< orphan*/  PCL_RCV_INTX_ALL_STATUS ; 
 scalar_t__ PCL_RCV_INTX_STATUS_SHIFT ; 
 struct pcie_port* FUNC1 (struct irq_data*) ; 
 scalar_t__ FUNC2 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 struct dw_pcie* FUNC4 (struct pcie_port*) ; 
 struct uniphier_pcie_priv* FUNC5 (struct dw_pcie*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct irq_data *d)
{
	struct pcie_port *pp = FUNC1(d);
	struct dw_pcie *pci = FUNC4(pp);
	struct uniphier_pcie_priv *priv = FUNC5(pci);
	u32 val;

	val = FUNC3(priv->base + PCL_RCV_INTX);
	val &= ~PCL_RCV_INTX_ALL_STATUS;
	val |= FUNC0(FUNC2(d) + PCL_RCV_INTX_STATUS_SHIFT);
	FUNC6(val, priv->base + PCL_RCV_INTX);
}