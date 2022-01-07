
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct component_match {int dummy; } ;


 int component_master_add_with_match (int *,int *,struct component_match*) ;
 int device_for_each_child (int *,struct component_match**,int ) ;
 int dss_add_child_component ;
 int dss_component_ops ;

__attribute__((used)) static int dss_probe(struct platform_device *pdev)
{
 struct component_match *match = ((void*)0);
 int r;


 device_for_each_child(&pdev->dev, &match, dss_add_child_component);

 r = component_master_add_with_match(&pdev->dev, &dss_component_ops, match);
 if (r)
  return r;

 return 0;
}
