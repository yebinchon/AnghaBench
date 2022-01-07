
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct device_node* of_node; } ;
struct regulator_dev {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;


 int of_count_phandle_with_args (struct device_node*,char*,int *) ;

int of_get_n_coupled(struct regulator_dev *rdev)
{
 struct device_node *node = rdev->dev.of_node;
 int n_phandles;

 n_phandles = of_count_phandle_with_args(node,
      "regulator-coupled-with",
      ((void*)0));

 return (n_phandles > 0) ? n_phandles : 0;
}
