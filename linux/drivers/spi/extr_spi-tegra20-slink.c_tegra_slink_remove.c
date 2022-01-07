
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_slink_data {scalar_t__ rx_dma_chan; scalar_t__ tx_dma_chan; int clk; int irq; } ;
struct spi_master {int dummy; } ;
struct platform_device {int dev; } ;


 int clk_disable (int ) ;
 int free_irq (int ,struct tegra_slink_data*) ;
 struct spi_master* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_status_suspended (int *) ;
 struct tegra_slink_data* spi_master_get_devdata (struct spi_master*) ;
 int tegra_slink_deinit_dma_param (struct tegra_slink_data*,int) ;
 int tegra_slink_runtime_suspend (int *) ;

__attribute__((used)) static int tegra_slink_remove(struct platform_device *pdev)
{
 struct spi_master *master = platform_get_drvdata(pdev);
 struct tegra_slink_data *tspi = spi_master_get_devdata(master);

 free_irq(tspi->irq, tspi);

 clk_disable(tspi->clk);

 if (tspi->tx_dma_chan)
  tegra_slink_deinit_dma_param(tspi, 0);

 if (tspi->rx_dma_chan)
  tegra_slink_deinit_dma_param(tspi, 1);

 pm_runtime_disable(&pdev->dev);
 if (!pm_runtime_status_suspended(&pdev->dev))
  tegra_slink_runtime_suspend(&pdev->dev);

 return 0;
}
