
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_phandle_args {int dummy; } ;
struct device_node {int dummy; } ;


 unsigned int irq_create_of_mapping (struct of_phandle_args*) ;
 scalar_t__ of_irq_parse_one (struct device_node*,int,struct of_phandle_args*) ;

unsigned int irq_of_parse_and_map(struct device_node *dev, int index)
{
 struct of_phandle_args oirq;

 if (of_irq_parse_one(dev, index, &oirq))
  return 0;

 return irq_create_of_mapping(&oirq);
}
