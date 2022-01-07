
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;


 int of_platform_populate (int ,int *,int *,TYPE_1__*) ;
 int pm_runtime_disable (TYPE_1__*) ;
 int pm_runtime_enable (TYPE_1__*) ;

__attribute__((used)) static int am335x_child_probe(struct platform_device *pdev)
{
 int ret;

 pm_runtime_enable(&pdev->dev);

 ret = of_platform_populate(pdev->dev.of_node, ((void*)0), ((void*)0), &pdev->dev);
 if (ret)
  goto err;

 return 0;
err:
 pm_runtime_disable(&pdev->dev);
 return ret;
}
