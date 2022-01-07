
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {int dummy; } ;
struct device_node {int dummy; } ;


 int ENXIO ;
 int EPROBE_DEFER ;
 struct irq_domain* ERR_PTR (int ) ;
 struct irq_domain* irq_find_host (struct device_node*) ;
 int of_find_property (struct device_node*,char*,int *) ;
 struct device_node* of_irq_find_parent (struct device_node*) ;

__attribute__((used)) static struct irq_domain *stm32_pctrl_get_irq_domain(struct device_node *np)
{
 struct device_node *parent;
 struct irq_domain *domain;

 if (!of_find_property(np, "interrupt-parent", ((void*)0)))
  return ((void*)0);

 parent = of_irq_find_parent(np);
 if (!parent)
  return ERR_PTR(-ENXIO);

 domain = irq_find_host(parent);
 if (!domain)

  return ERR_PTR(-EPROBE_DEFER);

 return domain;
}
