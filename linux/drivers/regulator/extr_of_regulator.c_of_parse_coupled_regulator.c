
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct device_node* of_node; } ;
struct regulator_dev {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;


 struct regulator_dev* of_find_regulator_by_node (struct device_node*) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (struct device_node*,char*,int) ;

struct regulator_dev *of_parse_coupled_regulator(struct regulator_dev *rdev,
       int index)
{
 struct device_node *node = rdev->dev.of_node;
 struct device_node *c_node;
 struct regulator_dev *c_rdev;

 c_node = of_parse_phandle(node, "regulator-coupled-with", index);
 if (!c_node)
  return ((void*)0);

 c_rdev = of_find_regulator_by_node(c_node);

 of_node_put(c_node);

 return c_rdev;
}
