
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct zynqmp_qspi {int bytes_to_receive; int genfifoentry; scalar_t__ dma_rx_bytes; int rxbuf; int dma_addr; int dev; } ;


 int DMA_FROM_DEVICE ;
 int GQSPI_CFG_MODE_EN_MASK ;
 int GQSPI_CFG_START_GEN_FIFO_MASK ;
 int GQSPI_CONFIG_OFST ;
 int GQSPI_GEN_FIFO_OFST ;
 int GQSPI_IER_GENFIFOEMPTY_MASK ;
 int GQSPI_IER_OFST ;
 int GQSPI_IER_RXEMPTY_MASK ;
 int GQSPI_IER_RXNEMPTY_MASK ;
 int GQSPI_QSPIDMA_DST_I_DIS_OFST ;
 int GQSPI_QSPIDMA_DST_I_EN_DONE_MASK ;
 int dma_unmap_single (int ,int ,scalar_t__,int ) ;
 int zynqmp_gqspi_read (struct zynqmp_qspi*,int ) ;
 int zynqmp_gqspi_write (struct zynqmp_qspi*,int ,int) ;

__attribute__((used)) static void zynqmp_process_dma_irq(struct zynqmp_qspi *xqspi)
{
 u32 config_reg, genfifoentry;

 dma_unmap_single(xqspi->dev, xqspi->dma_addr,
    xqspi->dma_rx_bytes, DMA_FROM_DEVICE);
 xqspi->rxbuf += xqspi->dma_rx_bytes;
 xqspi->bytes_to_receive -= xqspi->dma_rx_bytes;
 xqspi->dma_rx_bytes = 0;


 zynqmp_gqspi_write(xqspi, GQSPI_QSPIDMA_DST_I_DIS_OFST,
     GQSPI_QSPIDMA_DST_I_EN_DONE_MASK);

 if (xqspi->bytes_to_receive > 0) {

  config_reg = zynqmp_gqspi_read(xqspi, GQSPI_CONFIG_OFST);
  config_reg &= ~GQSPI_CFG_MODE_EN_MASK;
  zynqmp_gqspi_write(xqspi, GQSPI_CONFIG_OFST, config_reg);


  genfifoentry = xqspi->genfifoentry;
  genfifoentry |= xqspi->bytes_to_receive;
  zynqmp_gqspi_write(xqspi, GQSPI_GEN_FIFO_OFST, genfifoentry);


  zynqmp_gqspi_write(xqspi, GQSPI_GEN_FIFO_OFST, 0x0);


  zynqmp_gqspi_write(xqspi, GQSPI_CONFIG_OFST,
   (zynqmp_gqspi_read(xqspi, GQSPI_CONFIG_OFST) |
   GQSPI_CFG_START_GEN_FIFO_MASK));


  zynqmp_gqspi_write(xqspi, GQSPI_IER_OFST,
    GQSPI_IER_GENFIFOEMPTY_MASK |
    GQSPI_IER_RXNEMPTY_MASK |
    GQSPI_IER_RXEMPTY_MASK);
 }
}
