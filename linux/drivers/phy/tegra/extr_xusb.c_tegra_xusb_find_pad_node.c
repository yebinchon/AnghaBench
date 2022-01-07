
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_xusb_padctl {TYPE_1__* dev; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {struct device_node* of_node; } ;


 struct device_node* of_get_child_by_name (struct device_node*,char const*) ;
 int of_node_put (struct device_node*) ;

__attribute__((used)) static struct device_node *
tegra_xusb_find_pad_node(struct tegra_xusb_padctl *padctl, const char *name)
{
 struct device_node *pads, *np;

 pads = of_get_child_by_name(padctl->dev->of_node, "pads");
 if (!pads)
  return ((void*)0);

 np = of_get_child_by_name(pads, name);
 of_node_put(pads);

 return np;
}
