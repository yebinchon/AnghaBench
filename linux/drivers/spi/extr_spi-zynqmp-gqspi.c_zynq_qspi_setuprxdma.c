
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct zynqmp_qspi {int bytes_to_receive; int dma_rx_bytes; int dma_addr; int mode; int dev; scalar_t__ rxbuf; } ;
typedef int dma_addr_t ;


 int DMA_FROM_DEVICE ;
 int GQSPI_CFG_MODE_EN_DMA_MASK ;
 int GQSPI_CFG_MODE_EN_MASK ;
 int GQSPI_CONFIG_OFST ;
 int GQSPI_DMA_UNALIGN ;
 int GQSPI_MODE_DMA ;
 int GQSPI_MODE_IO ;
 int GQSPI_QSPIDMA_DST_ADDR_MSB_OFST ;
 int GQSPI_QSPIDMA_DST_ADDR_OFST ;
 int GQSPI_QSPIDMA_DST_SIZE_OFST ;
 int dev_err (int ,char*) ;
 int dma_map_single (int ,void*,int,int ) ;
 scalar_t__ dma_mapping_error (int ,int) ;
 int zynqmp_gqspi_read (struct zynqmp_qspi*,int ) ;
 int zynqmp_gqspi_write (struct zynqmp_qspi*,int ,int) ;

__attribute__((used)) static void zynq_qspi_setuprxdma(struct zynqmp_qspi *xqspi)
{
 u32 rx_bytes, rx_rem, config_reg;
 dma_addr_t addr;
 u64 dma_align = (u64)(uintptr_t)xqspi->rxbuf;

 if ((xqspi->bytes_to_receive < 8) ||
  ((dma_align & GQSPI_DMA_UNALIGN) != 0x0)) {

  config_reg = zynqmp_gqspi_read(xqspi, GQSPI_CONFIG_OFST);
  config_reg &= ~GQSPI_CFG_MODE_EN_MASK;
  zynqmp_gqspi_write(xqspi, GQSPI_CONFIG_OFST, config_reg);
  xqspi->mode = GQSPI_MODE_IO;
  xqspi->dma_rx_bytes = 0;
  return;
 }

 rx_rem = xqspi->bytes_to_receive % 4;
 rx_bytes = (xqspi->bytes_to_receive - rx_rem);

 addr = dma_map_single(xqspi->dev, (void *)xqspi->rxbuf,
      rx_bytes, DMA_FROM_DEVICE);
 if (dma_mapping_error(xqspi->dev, addr))
  dev_err(xqspi->dev, "ERR:rxdma:memory not mapped\n");

 xqspi->dma_rx_bytes = rx_bytes;
 xqspi->dma_addr = addr;
 zynqmp_gqspi_write(xqspi, GQSPI_QSPIDMA_DST_ADDR_OFST,
    (u32)(addr & 0xffffffff));
 addr = ((addr >> 16) >> 16);
 zynqmp_gqspi_write(xqspi, GQSPI_QSPIDMA_DST_ADDR_MSB_OFST,
    ((u32)addr) & 0xfff);


 config_reg = zynqmp_gqspi_read(xqspi, GQSPI_CONFIG_OFST);
 config_reg &= ~GQSPI_CFG_MODE_EN_MASK;
 config_reg |= GQSPI_CFG_MODE_EN_DMA_MASK;
 zynqmp_gqspi_write(xqspi, GQSPI_CONFIG_OFST, config_reg);


 xqspi->mode = GQSPI_MODE_DMA;


 zynqmp_gqspi_write(xqspi, GQSPI_QSPIDMA_DST_SIZE_OFST, rx_bytes);
}
