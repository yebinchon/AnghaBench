#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  irq_set_wake; int /*<<< orphan*/  irq_set_type; int /*<<< orphan*/  irq_set_affinity; int /*<<< orphan*/  irq_eoi; int /*<<< orphan*/  irq_unmask; int /*<<< orphan*/  irq_mask; int /*<<< orphan*/  name; } ;
struct tegra_pmc {TYPE_2__* dev; int /*<<< orphan*/  domain; TYPE_1__ irq; } ;
struct irq_domain {int dummy; } ;
struct device_node {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  irq_chip_eoi_parent ; 
 int /*<<< orphan*/  irq_chip_mask_parent ; 
 int /*<<< orphan*/  irq_chip_set_affinity_parent ; 
 int /*<<< orphan*/  irq_chip_unmask_parent ; 
 int /*<<< orphan*/  FUNC2 (struct irq_domain*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct tegra_pmc*) ; 
 struct irq_domain* FUNC3 (struct device_node*) ; 
 struct device_node* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*) ; 
 int /*<<< orphan*/  tegra_pmc_irq_domain_ops ; 
 int /*<<< orphan*/  tegra_pmc_irq_set_type ; 
 int /*<<< orphan*/  tegra_pmc_irq_set_wake ; 

__attribute__((used)) static int FUNC6(struct tegra_pmc *pmc)
{
	struct irq_domain *parent = NULL;
	struct device_node *np;

	np = FUNC4(pmc->dev->of_node);
	if (np) {
		parent = FUNC3(np);
		FUNC5(np);
	}

	if (!parent)
		return 0;

	pmc->irq.name = FUNC1(pmc->dev);
	pmc->irq.irq_mask = irq_chip_mask_parent;
	pmc->irq.irq_unmask = irq_chip_unmask_parent;
	pmc->irq.irq_eoi = irq_chip_eoi_parent;
	pmc->irq.irq_set_affinity = irq_chip_set_affinity_parent;
	pmc->irq.irq_set_type = tegra_pmc_irq_set_type;
	pmc->irq.irq_set_wake = tegra_pmc_irq_set_wake;

	pmc->domain = FUNC2(parent, 0, 96, pmc->dev->of_node,
					       &tegra_pmc_irq_domain_ops, pmc);
	if (!pmc->domain) {
		FUNC0(pmc->dev, "failed to allocate domain\n");
		return -ENOMEM;
	}

	return 0;
}