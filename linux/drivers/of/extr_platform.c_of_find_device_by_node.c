
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;


 struct device* bus_find_device_by_of_node (int *,struct device_node*) ;
 int platform_bus_type ;
 struct platform_device* to_platform_device (struct device*) ;

struct platform_device *of_find_device_by_node(struct device_node *np)
{
 struct device *dev;

 dev = bus_find_device_by_of_node(&platform_bus_type, np);
 return dev ? to_platform_device(dev) : ((void*)0);
}
