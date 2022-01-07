
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_13__ {int in; } ;
struct TYPE_14__ {scalar_t__ dir; int nbytes; TYPE_6__ buf; } ;
struct spi_mem_op {TYPE_7__ data; } ;
struct TYPE_12__ {struct device* parent; } ;
struct spi_controller {TYPE_5__ dev; TYPE_4__* dma_rx; TYPE_2__* dma_tx; } ;
struct sg_table {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_11__ {TYPE_3__* device; } ;
struct TYPE_10__ {struct device* dev; } ;
struct TYPE_9__ {TYPE_1__* device; } ;
struct TYPE_8__ {struct device* dev; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int EINVAL ;
 scalar_t__ SPI_MEM_DATA_IN ;
 scalar_t__ SPI_MEM_DATA_OUT ;
 int spi_map_buf (struct spi_controller*,struct device*,struct sg_table*,int ,int ,int ) ;

int spi_controller_dma_map_mem_op_data(struct spi_controller *ctlr,
           const struct spi_mem_op *op,
           struct sg_table *sgt)
{
 struct device *dmadev;

 if (!op->data.nbytes)
  return -EINVAL;

 if (op->data.dir == SPI_MEM_DATA_OUT && ctlr->dma_tx)
  dmadev = ctlr->dma_tx->device->dev;
 else if (op->data.dir == SPI_MEM_DATA_IN && ctlr->dma_rx)
  dmadev = ctlr->dma_rx->device->dev;
 else
  dmadev = ctlr->dev.parent;

 if (!dmadev)
  return -EINVAL;

 return spi_map_buf(ctlr, dmadev, sgt, op->data.buf.in, op->data.nbytes,
      op->data.dir == SPI_MEM_DATA_IN ?
      DMA_FROM_DEVICE : DMA_TO_DEVICE);
}
