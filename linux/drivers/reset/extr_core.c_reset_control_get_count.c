
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {scalar_t__ of_node; } ;


 int of_reset_control_get_count (scalar_t__) ;
 int reset_control_get_count_from_lookup (struct device*) ;

int reset_control_get_count(struct device *dev)
{
 if (dev->of_node)
  return of_reset_control_get_count(dev->of_node);

 return reset_control_get_count_from_lookup(dev);
}
