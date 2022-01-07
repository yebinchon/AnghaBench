
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct property {int dummy; } ;
struct pinctrl_dev {TYPE_1__* dev; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {struct device_node* of_node; } ;


 struct property* of_find_property (struct device_node*,char*,int*) ;

bool pinctrl_dt_has_hogs(struct pinctrl_dev *pctldev)
{
 struct device_node *np;
 struct property *prop;
 int size;

 np = pctldev->dev->of_node;
 if (!np)
  return 0;

 prop = of_find_property(np, "pinctrl-0", &size);

 return prop ? 1 : 0;
}
