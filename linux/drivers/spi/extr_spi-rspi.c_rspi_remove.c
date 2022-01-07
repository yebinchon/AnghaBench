
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rspi_data {int ctlr; } ;
struct platform_device {int dev; } ;


 struct rspi_data* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int rspi_release_dma (int ) ;

__attribute__((used)) static int rspi_remove(struct platform_device *pdev)
{
 struct rspi_data *rspi = platform_get_drvdata(pdev);

 rspi_release_dma(rspi->ctlr);
 pm_runtime_disable(&pdev->dev);

 return 0;
}
