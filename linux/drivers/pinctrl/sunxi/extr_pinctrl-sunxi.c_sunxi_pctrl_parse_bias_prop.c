
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device_node {int dummy; } ;


 int EINVAL ;
 int PIN_CONFIG_BIAS_DISABLE ;
 int PIN_CONFIG_BIAS_PULL_DOWN ;
 int PIN_CONFIG_BIAS_PULL_UP ;



 scalar_t__ of_find_property (struct device_node*,char*,int *) ;
 scalar_t__ of_property_read_u32 (struct device_node*,char*,int*) ;

__attribute__((used)) static int sunxi_pctrl_parse_bias_prop(struct device_node *node)
{
 u32 val;


 if (of_find_property(node, "bias-pull-up", ((void*)0)))
  return PIN_CONFIG_BIAS_PULL_UP;

 if (of_find_property(node, "bias-pull-down", ((void*)0)))
  return PIN_CONFIG_BIAS_PULL_DOWN;

 if (of_find_property(node, "bias-disable", ((void*)0)))
  return PIN_CONFIG_BIAS_DISABLE;


 if (of_property_read_u32(node, "allwinner,pull", &val))
  return -EINVAL;

 switch (val) {
 case 130:
  return PIN_CONFIG_BIAS_DISABLE;
 case 128:
  return PIN_CONFIG_BIAS_PULL_UP;
 case 129:
  return PIN_CONFIG_BIAS_PULL_DOWN;
 }

 return -EINVAL;
}
