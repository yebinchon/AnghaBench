#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct msi_domain_info {int flags; struct irq_chip* chip; } ;
struct irq_chip {char* name; int /*<<< orphan*/  irq_set_affinity; int /*<<< orphan*/  irq_compose_msi_msg; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct advk_pcie {int /*<<< orphan*/  msi_inner_domain; int /*<<< orphan*/  msi_domain; int /*<<< orphan*/  msi_msg; struct msi_domain_info msi_domain_info; struct irq_chip msi_irq_chip; struct irq_chip msi_bottom_irq_chip; int /*<<< orphan*/  msi_used_lock; TYPE_1__* pdev; } ;
typedef  int /*<<< orphan*/  phys_addr_t ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int MSI_FLAG_MULTI_PCI_MSI ; 
 int MSI_FLAG_USE_DEF_CHIP_OPS ; 
 int MSI_FLAG_USE_DEF_DOM_OPS ; 
 int /*<<< orphan*/  MSI_IRQ_NUM ; 
 int /*<<< orphan*/  PCIE_MSI_ADDR_HIGH_REG ; 
 int /*<<< orphan*/  PCIE_MSI_ADDR_LOW_REG ; 
 int /*<<< orphan*/  advk_msi_domain_ops ; 
 int /*<<< orphan*/  advk_msi_irq_compose_msi_msg ; 
 int /*<<< orphan*/  advk_msi_set_affinity ; 
 int /*<<< orphan*/  FUNC0 (struct advk_pcie*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct advk_pcie*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct msi_domain_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct advk_pcie *pcie)
{
	struct device *dev = &pcie->pdev->dev;
	struct device_node *node = dev->of_node;
	struct irq_chip *bottom_ic, *msi_ic;
	struct msi_domain_info *msi_di;
	phys_addr_t msi_msg_phys;

	FUNC4(&pcie->msi_used_lock);

	bottom_ic = &pcie->msi_bottom_irq_chip;

	bottom_ic->name = "MSI";
	bottom_ic->irq_compose_msi_msg = advk_msi_irq_compose_msi_msg;
	bottom_ic->irq_set_affinity = advk_msi_set_affinity;

	msi_ic = &pcie->msi_irq_chip;
	msi_ic->name = "advk-MSI";

	msi_di = &pcie->msi_domain_info;
	msi_di->flags = MSI_FLAG_USE_DEF_DOM_OPS | MSI_FLAG_USE_DEF_CHIP_OPS |
		MSI_FLAG_MULTI_PCI_MSI;
	msi_di->chip = msi_ic;

	msi_msg_phys = FUNC8(&pcie->msi_msg);

	FUNC0(pcie, FUNC3(msi_msg_phys),
		    PCIE_MSI_ADDR_LOW_REG);
	FUNC0(pcie, FUNC7(msi_msg_phys),
		    PCIE_MSI_ADDR_HIGH_REG);

	pcie->msi_inner_domain =
		FUNC1(NULL, MSI_IRQ_NUM,
				      &advk_msi_domain_ops, pcie);
	if (!pcie->msi_inner_domain)
		return -ENOMEM;

	pcie->msi_domain =
		FUNC6(FUNC5(node),
					  msi_di, pcie->msi_inner_domain);
	if (!pcie->msi_domain) {
		FUNC2(pcie->msi_inner_domain);
		return -ENOMEM;
	}

	return 0;
}