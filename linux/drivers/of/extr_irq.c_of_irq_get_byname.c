
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 int EINVAL ;
 int of_irq_get (struct device_node*,int) ;
 int of_property_match_string (struct device_node*,char*,char const*) ;
 scalar_t__ unlikely (int) ;

int of_irq_get_byname(struct device_node *dev, const char *name)
{
 int index;

 if (unlikely(!name))
  return -EINVAL;

 index = of_property_match_string(dev, "interrupt-names", name);
 if (index < 0)
  return index;

 return of_irq_get(dev, index);
}
