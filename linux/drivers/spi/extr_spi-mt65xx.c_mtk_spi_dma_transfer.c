
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * sgl; } ;
struct TYPE_3__ {int * sgl; } ;
struct spi_transfer {void* rx_dma; void* tx_dma; TYPE_2__ rx_sg; scalar_t__ rx_buf; TYPE_1__ tx_sg; scalar_t__ tx_buf; } ;
struct spi_master {int dummy; } ;
struct spi_device {int dummy; } ;
struct mtk_spi {int * rx_sgl; void* rx_sgl_len; int * tx_sgl; void* tx_sgl_len; scalar_t__ base; scalar_t__ num_xfered; struct spi_transfer* cur_transfer; } ;


 scalar_t__ SPI_CMD_REG ;
 int SPI_CMD_RX_DMA ;
 int SPI_CMD_TX_DMA ;
 int mtk_spi_enable_transfer (struct spi_master*) ;
 int mtk_spi_prepare_transfer (struct spi_master*,struct spi_transfer*) ;
 int mtk_spi_setup_dma_addr (struct spi_master*,struct spi_transfer*) ;
 int mtk_spi_setup_packet (struct spi_master*) ;
 int mtk_spi_update_mdata_len (struct spi_master*) ;
 int readl (scalar_t__) ;
 void* sg_dma_address (int *) ;
 void* sg_dma_len (int *) ;
 struct mtk_spi* spi_master_get_devdata (struct spi_master*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int mtk_spi_dma_transfer(struct spi_master *master,
    struct spi_device *spi,
    struct spi_transfer *xfer)
{
 int cmd;
 struct mtk_spi *mdata = spi_master_get_devdata(master);

 mdata->tx_sgl = ((void*)0);
 mdata->rx_sgl = ((void*)0);
 mdata->tx_sgl_len = 0;
 mdata->rx_sgl_len = 0;
 mdata->cur_transfer = xfer;
 mdata->num_xfered = 0;

 mtk_spi_prepare_transfer(master, xfer);

 cmd = readl(mdata->base + SPI_CMD_REG);
 if (xfer->tx_buf)
  cmd |= SPI_CMD_TX_DMA;
 if (xfer->rx_buf)
  cmd |= SPI_CMD_RX_DMA;
 writel(cmd, mdata->base + SPI_CMD_REG);

 if (xfer->tx_buf)
  mdata->tx_sgl = xfer->tx_sg.sgl;
 if (xfer->rx_buf)
  mdata->rx_sgl = xfer->rx_sg.sgl;

 if (mdata->tx_sgl) {
  xfer->tx_dma = sg_dma_address(mdata->tx_sgl);
  mdata->tx_sgl_len = sg_dma_len(mdata->tx_sgl);
 }
 if (mdata->rx_sgl) {
  xfer->rx_dma = sg_dma_address(mdata->rx_sgl);
  mdata->rx_sgl_len = sg_dma_len(mdata->rx_sgl);
 }

 mtk_spi_update_mdata_len(master);
 mtk_spi_setup_packet(master);
 mtk_spi_setup_dma_addr(master, xfer);
 mtk_spi_enable_transfer(master);

 return 1;
}
