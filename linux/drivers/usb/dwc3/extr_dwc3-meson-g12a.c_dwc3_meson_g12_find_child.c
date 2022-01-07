
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;


 struct platform_device* of_find_device_by_node (struct device_node*) ;
 struct device_node* of_get_compatible_child (int ,char const*) ;
 int of_node_put (struct device_node*) ;

__attribute__((used)) static struct device *dwc3_meson_g12_find_child(struct device *dev,
      const char *compatible)
{
 struct platform_device *pdev;
 struct device_node *np;

 np = of_get_compatible_child(dev->of_node, compatible);
 if (!np)
  return ((void*)0);

 pdev = of_find_device_by_node(np);
 of_node_put(np);
 if (!pdev)
  return ((void*)0);

 return &pdev->dev;
}
