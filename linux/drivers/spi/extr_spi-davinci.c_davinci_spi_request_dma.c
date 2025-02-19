
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_6__ {TYPE_2__* master; } ;
struct davinci_spi {void* dma_tx; void* dma_rx; TYPE_3__ bitbang; } ;
struct TYPE_4__ {struct device* parent; } ;
struct TYPE_5__ {TYPE_1__ dev; } ;


 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int dma_release_channel (void*) ;
 void* dma_request_chan (struct device*,char*) ;

__attribute__((used)) static int davinci_spi_request_dma(struct davinci_spi *dspi)
{
 struct device *sdev = dspi->bitbang.master->dev.parent;

 dspi->dma_rx = dma_request_chan(sdev, "rx");
 if (IS_ERR(dspi->dma_rx))
  return PTR_ERR(dspi->dma_rx);

 dspi->dma_tx = dma_request_chan(sdev, "tx");
 if (IS_ERR(dspi->dma_tx)) {
  dma_release_channel(dspi->dma_rx);
  return PTR_ERR(dspi->dma_tx);
 }

 return 0;
}
