
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ enable; } ;
struct sprd_spi {int clk; TYPE_1__ dma; int dev; } ;
struct spi_controller {int dummy; } ;
struct platform_device {int dev; } ;


 int clk_disable_unprepare (int ) ;
 int dev_err (int ,char*) ;
 struct spi_controller* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put_noidle (int *) ;
 struct sprd_spi* spi_controller_get_devdata (struct spi_controller*) ;
 int spi_controller_suspend (struct spi_controller*) ;
 int sprd_spi_dma_release (struct sprd_spi*) ;

__attribute__((used)) static int sprd_spi_remove(struct platform_device *pdev)
{
 struct spi_controller *sctlr = platform_get_drvdata(pdev);
 struct sprd_spi *ss = spi_controller_get_devdata(sctlr);
 int ret;

 ret = pm_runtime_get_sync(ss->dev);
 if (ret < 0) {
  dev_err(ss->dev, "failed to resume SPI controller\n");
  return ret;
 }

 spi_controller_suspend(sctlr);

 if (ss->dma.enable)
  sprd_spi_dma_release(ss);
 clk_disable_unprepare(ss->clk);
 pm_runtime_put_noidle(&pdev->dev);
 pm_runtime_disable(&pdev->dev);

 return 0;
}
