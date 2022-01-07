
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct hspi_priv {int clk; } ;


 int clk_put (int ) ;
 struct hspi_priv* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;

__attribute__((used)) static int hspi_remove(struct platform_device *pdev)
{
 struct hspi_priv *hspi = platform_get_drvdata(pdev);

 pm_runtime_disable(&pdev->dev);

 clk_put(hspi->clk);

 return 0;
}
