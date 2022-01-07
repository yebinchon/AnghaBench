
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_master {scalar_t__ dma_rx; scalar_t__ dma_tx; } ;
struct rockchip_spi {int apb_pclk; int spiclk; } ;
struct platform_device {int dev; } ;


 int clk_disable_unprepare (int ) ;
 int dma_release_channel (scalar_t__) ;
 int platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_put_noidle (int *) ;
 int pm_runtime_set_suspended (int *) ;
 struct spi_master* spi_master_get (int ) ;
 struct rockchip_spi* spi_master_get_devdata (struct spi_master*) ;
 int spi_master_put (struct spi_master*) ;

__attribute__((used)) static int rockchip_spi_remove(struct platform_device *pdev)
{
 struct spi_master *master = spi_master_get(platform_get_drvdata(pdev));
 struct rockchip_spi *rs = spi_master_get_devdata(master);

 pm_runtime_get_sync(&pdev->dev);

 clk_disable_unprepare(rs->spiclk);
 clk_disable_unprepare(rs->apb_pclk);

 pm_runtime_put_noidle(&pdev->dev);
 pm_runtime_disable(&pdev->dev);
 pm_runtime_set_suspended(&pdev->dev);

 if (master->dma_tx)
  dma_release_channel(master->dma_tx);
 if (master->dma_rx)
  dma_release_channel(master->dma_rx);

 spi_master_put(master);

 return 0;
}
