
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int * bus; } ;


 int ccwgroup_bus_type ;

bool dev_is_ccwgroup(struct device *dev)
{
 return dev->bus == &ccwgroup_bus_type;
}
