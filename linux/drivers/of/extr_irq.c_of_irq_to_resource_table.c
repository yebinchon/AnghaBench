
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct device_node {int dummy; } ;


 scalar_t__ of_irq_to_resource (struct device_node*,int,struct resource*) ;

int of_irq_to_resource_table(struct device_node *dev, struct resource *res,
  int nr_irqs)
{
 int i;

 for (i = 0; i < nr_irqs; i++, res++)
  if (of_irq_to_resource(dev, i, res) <= 0)
   break;

 return i;
}
