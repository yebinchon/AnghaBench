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
struct spear13xx_pcie {struct dw_pcie* pci; struct pcie_app_reg* app_base; } ;
struct pcie_port {int dummy; } ;
struct pcie_app_reg {int /*<<< orphan*/  int_clr; int /*<<< orphan*/  int_sts; } ;
struct dw_pcie {struct pcie_port pp; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CONFIG_PCI_MSI ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int MSI_CTRL_INT ; 
 int /*<<< orphan*/  FUNC2 (struct pcie_port*) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *arg)
{
	struct spear13xx_pcie *spear13xx_pcie = arg;
	struct pcie_app_reg *app_reg = spear13xx_pcie->app_base;
	struct dw_pcie *pci = spear13xx_pcie->pci;
	struct pcie_port *pp = &pci->pp;
	unsigned int status;

	status = FUNC3(&app_reg->int_sts);

	if (status & MSI_CTRL_INT) {
		FUNC0(!FUNC1(CONFIG_PCI_MSI));
		FUNC2(pp);
	}

	FUNC4(status, &app_reg->int_clr);

	return IRQ_HANDLED;
}