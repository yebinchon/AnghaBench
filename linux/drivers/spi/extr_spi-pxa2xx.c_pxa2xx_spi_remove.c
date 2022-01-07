
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ssp_device {int irq; int clk; } ;
struct platform_device {int dev; } ;
struct driver_data {TYPE_1__* controller_info; struct ssp_device* ssp; } ;
struct TYPE_2__ {scalar_t__ enable_dma; } ;


 int SSCR0 ;
 int clk_disable_unprepare (int ) ;
 int free_irq (int ,struct driver_data*) ;
 struct driver_data* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_put_noidle (int *) ;
 int pxa2xx_spi_dma_release (struct driver_data*) ;
 int pxa2xx_spi_write (struct driver_data*,int ,int ) ;
 int pxa_ssp_free (struct ssp_device*) ;

__attribute__((used)) static int pxa2xx_spi_remove(struct platform_device *pdev)
{
 struct driver_data *drv_data = platform_get_drvdata(pdev);
 struct ssp_device *ssp;

 if (!drv_data)
  return 0;
 ssp = drv_data->ssp;

 pm_runtime_get_sync(&pdev->dev);


 pxa2xx_spi_write(drv_data, SSCR0, 0);
 clk_disable_unprepare(ssp->clk);


 if (drv_data->controller_info->enable_dma)
  pxa2xx_spi_dma_release(drv_data);

 pm_runtime_put_noidle(&pdev->dev);
 pm_runtime_disable(&pdev->dev);


 free_irq(ssp->irq, drv_data);


 pxa_ssp_free(ssp);

 return 0;
}
