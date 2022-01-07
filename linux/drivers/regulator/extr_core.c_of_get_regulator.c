
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;
struct device {int of_node; } ;


 int dev_dbg (struct device*,char*,char const*,...) ;
 struct device_node* of_get_child_regulator (int ,char*) ;
 struct device_node* of_parse_phandle (int ,char*,int ) ;
 int snprintf (char*,int,char*,char const*) ;

__attribute__((used)) static struct device_node *of_get_regulator(struct device *dev, const char *supply)
{
 struct device_node *regnode = ((void*)0);
 char prop_name[32];

 dev_dbg(dev, "Looking up %s-supply from device tree\n", supply);

 snprintf(prop_name, 32, "%s-supply", supply);
 regnode = of_parse_phandle(dev->of_node, prop_name, 0);

 if (!regnode) {
  regnode = of_get_child_regulator(dev->of_node, prop_name);
  if (regnode)
   return regnode;

  dev_dbg(dev, "Looking up %s property in node %pOF failed\n",
    prop_name, dev->of_node);
  return ((void*)0);
 }
 return regnode;
}
