
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int component_add (int *,int *) ;
 int hdmi4_component_ops ;

__attribute__((used)) static int hdmi4_probe(struct platform_device *pdev)
{
 return component_add(&pdev->dev, &hdmi4_component_ops);
}
