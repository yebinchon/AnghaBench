
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 scalar_t__ of_find_property (struct device_node*,char*,int *) ;

__attribute__((used)) static bool sunxi_pctrl_has_bias_prop(struct device_node *node)
{
 return of_find_property(node, "bias-pull-up", ((void*)0)) ||
  of_find_property(node, "bias-pull-down", ((void*)0)) ||
  of_find_property(node, "bias-disable", ((void*)0)) ||
  of_find_property(node, "allwinner,pull", ((void*)0));
}
