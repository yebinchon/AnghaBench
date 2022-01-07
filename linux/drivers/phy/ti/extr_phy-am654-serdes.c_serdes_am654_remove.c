
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serdes_am654 {struct device_node* of_node; } ;
struct platform_device {int dev; } ;
struct device_node {int dummy; } ;


 int of_clk_del_provider (struct device_node*) ;
 struct serdes_am654* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;

__attribute__((used)) static int serdes_am654_remove(struct platform_device *pdev)
{
 struct serdes_am654 *am654_phy = platform_get_drvdata(pdev);
 struct device_node *node = am654_phy->of_node;

 pm_runtime_disable(&pdev->dev);
 of_clk_del_provider(node);

 return 0;
}
