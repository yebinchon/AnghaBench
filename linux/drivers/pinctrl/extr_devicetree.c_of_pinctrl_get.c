
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dummy; } ;
struct device_node {int dummy; } ;


 struct pinctrl_dev* get_pinctrl_dev_from_of_node (struct device_node*) ;

struct pinctrl_dev *of_pinctrl_get(struct device_node *np)
{
 return get_pinctrl_dev_from_of_node(np);
}
