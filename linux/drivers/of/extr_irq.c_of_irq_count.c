
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_phandle_args {int dummy; } ;
struct device_node {int dummy; } ;


 scalar_t__ of_irq_parse_one (struct device_node*,int,struct of_phandle_args*) ;

int of_irq_count(struct device_node *dev)
{
 struct of_phandle_args irq;
 int nr = 0;

 while (of_irq_parse_one(dev, nr, &irq) == 0)
  nr++;

 return nr;
}
