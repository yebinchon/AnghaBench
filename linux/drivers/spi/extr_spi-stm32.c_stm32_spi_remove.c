
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stm32_spi {int clk; TYPE_1__* cfg; } ;
struct spi_master {scalar_t__ dma_rx; scalar_t__ dma_tx; } ;
struct platform_device {int dev; } ;
struct TYPE_2__ {int (* disable ) (struct stm32_spi*) ;} ;


 int clk_disable_unprepare (int ) ;
 int dma_release_channel (scalar_t__) ;
 struct spi_master* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 struct stm32_spi* spi_master_get_devdata (struct spi_master*) ;
 int stub1 (struct stm32_spi*) ;

__attribute__((used)) static int stm32_spi_remove(struct platform_device *pdev)
{
 struct spi_master *master = platform_get_drvdata(pdev);
 struct stm32_spi *spi = spi_master_get_devdata(master);

 spi->cfg->disable(spi);

 if (master->dma_tx)
  dma_release_channel(master->dma_tx);
 if (master->dma_rx)
  dma_release_channel(master->dma_rx);

 clk_disable_unprepare(spi->clk);

 pm_runtime_disable(&pdev->dev);

 return 0;
}
