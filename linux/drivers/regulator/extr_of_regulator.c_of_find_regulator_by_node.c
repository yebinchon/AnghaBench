
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;


 struct device* class_find_device_by_of_node (int *,struct device_node*) ;
 struct regulator_dev* dev_to_rdev (struct device*) ;
 int regulator_class ;

struct regulator_dev *of_find_regulator_by_node(struct device_node *np)
{
 struct device *dev;

 dev = class_find_device_by_of_node(&regulator_class, np);

 return dev ? dev_to_rdev(dev) : ((void*)0);
}
