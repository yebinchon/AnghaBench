
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 int of_property_count_strings (struct device_node*,char*) ;

__attribute__((used)) static int ltq_pinctrl_dt_subnode_size(struct device_node *np)
{
 int ret;

 ret = of_property_count_strings(np, "lantiq,groups");
 if (ret < 0)
  ret = of_property_count_strings(np, "lantiq,pins");
 return ret;
}
