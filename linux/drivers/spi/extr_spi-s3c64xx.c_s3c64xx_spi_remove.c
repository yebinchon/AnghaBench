
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct spi_master {int dummy; } ;
struct TYPE_4__ {int ch; } ;
struct TYPE_3__ {int ch; } ;
struct s3c64xx_spi_driver_data {int clk; int src_clk; int ioclk; TYPE_2__ tx_dma; TYPE_1__ rx_dma; scalar_t__ regs; } ;
struct platform_device {int dev; } ;


 scalar_t__ S3C64XX_SPI_INT_EN ;
 int clk_disable_unprepare (int ) ;
 int dma_release_channel (int ) ;
 int is_polling (struct s3c64xx_spi_driver_data*) ;
 struct spi_master* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_put_noidle (int *) ;
 int pm_runtime_set_suspended (int *) ;
 struct s3c64xx_spi_driver_data* spi_master_get_devdata (struct spi_master*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int s3c64xx_spi_remove(struct platform_device *pdev)
{
 struct spi_master *master = platform_get_drvdata(pdev);
 struct s3c64xx_spi_driver_data *sdd = spi_master_get_devdata(master);

 pm_runtime_get_sync(&pdev->dev);

 writel(0, sdd->regs + S3C64XX_SPI_INT_EN);

 if (!is_polling(sdd)) {
  dma_release_channel(sdd->rx_dma.ch);
  dma_release_channel(sdd->tx_dma.ch);
 }

 clk_disable_unprepare(sdd->ioclk);

 clk_disable_unprepare(sdd->src_clk);

 clk_disable_unprepare(sdd->clk);

 pm_runtime_put_noidle(&pdev->dev);
 pm_runtime_disable(&pdev->dev);
 pm_runtime_set_suspended(&pdev->dev);

 return 0;
}
