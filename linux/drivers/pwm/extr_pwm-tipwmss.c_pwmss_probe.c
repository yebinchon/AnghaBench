
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;


 int dev_err (TYPE_1__*,char*) ;
 int of_platform_populate (struct device_node*,int *,int *,TYPE_1__*) ;
 int pm_runtime_enable (TYPE_1__*) ;

__attribute__((used)) static int pwmss_probe(struct platform_device *pdev)
{
 int ret;
 struct device_node *node = pdev->dev.of_node;

 pm_runtime_enable(&pdev->dev);


 ret = of_platform_populate(node, ((void*)0), ((void*)0), &pdev->dev);
 if (ret)
  dev_err(&pdev->dev, "no child node found\n");

 return ret;
}
