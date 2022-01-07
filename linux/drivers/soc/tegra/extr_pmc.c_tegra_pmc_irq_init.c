
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int irq_set_wake; int irq_set_type; int irq_set_affinity; int irq_eoi; int irq_unmask; int irq_mask; int name; } ;
struct tegra_pmc {TYPE_2__* dev; int domain; TYPE_1__ irq; } ;
struct irq_domain {int dummy; } ;
struct device_node {int dummy; } ;
struct TYPE_5__ {int of_node; } ;


 int ENOMEM ;
 int dev_err (TYPE_2__*,char*) ;
 int dev_name (TYPE_2__*) ;
 int irq_chip_eoi_parent ;
 int irq_chip_mask_parent ;
 int irq_chip_set_affinity_parent ;
 int irq_chip_unmask_parent ;
 int irq_domain_add_hierarchy (struct irq_domain*,int ,int,int ,int *,struct tegra_pmc*) ;
 struct irq_domain* irq_find_host (struct device_node*) ;
 struct device_node* of_irq_find_parent (int ) ;
 int of_node_put (struct device_node*) ;
 int tegra_pmc_irq_domain_ops ;
 int tegra_pmc_irq_set_type ;
 int tegra_pmc_irq_set_wake ;

__attribute__((used)) static int tegra_pmc_irq_init(struct tegra_pmc *pmc)
{
 struct irq_domain *parent = ((void*)0);
 struct device_node *np;

 np = of_irq_find_parent(pmc->dev->of_node);
 if (np) {
  parent = irq_find_host(np);
  of_node_put(np);
 }

 if (!parent)
  return 0;

 pmc->irq.name = dev_name(pmc->dev);
 pmc->irq.irq_mask = irq_chip_mask_parent;
 pmc->irq.irq_unmask = irq_chip_unmask_parent;
 pmc->irq.irq_eoi = irq_chip_eoi_parent;
 pmc->irq.irq_set_affinity = irq_chip_set_affinity_parent;
 pmc->irq.irq_set_type = tegra_pmc_irq_set_type;
 pmc->irq.irq_set_wake = tegra_pmc_irq_set_wake;

 pmc->domain = irq_domain_add_hierarchy(parent, 0, 96, pmc->dev->of_node,
            &tegra_pmc_irq_domain_ops, pmc);
 if (!pmc->domain) {
  dev_err(pmc->dev, "failed to allocate domain\n");
  return -ENOMEM;
 }

 return 0;
}
