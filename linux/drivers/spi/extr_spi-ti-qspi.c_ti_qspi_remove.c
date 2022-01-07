
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_qspi {scalar_t__ rx_chan; int rx_bb_dma_addr; scalar_t__ rx_bb_addr; int dev; int master; } ;
struct platform_device {int dev; } ;


 int QSPI_DMA_BUFFER_SIZE ;
 int dma_free_coherent (int ,int ,scalar_t__,int ) ;
 int dma_release_channel (scalar_t__) ;
 struct ti_qspi* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_put_sync (int *) ;
 int spi_master_suspend (int ) ;

__attribute__((used)) static int ti_qspi_remove(struct platform_device *pdev)
{
 struct ti_qspi *qspi = platform_get_drvdata(pdev);
 int rc;

 rc = spi_master_suspend(qspi->master);
 if (rc)
  return rc;

 pm_runtime_put_sync(&pdev->dev);
 pm_runtime_disable(&pdev->dev);

 if (qspi->rx_bb_addr)
  dma_free_coherent(qspi->dev, QSPI_DMA_BUFFER_SIZE,
      qspi->rx_bb_addr,
      qspi->rx_bb_dma_addr);
 if (qspi->rx_chan)
  dma_release_channel(qspi->rx_chan);

 return 0;
}
