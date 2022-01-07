
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct zynqmp_qspi {scalar_t__ mode; scalar_t__ bytes_to_receive; scalar_t__ bytes_to_transfer; int * rxbuf; int * txbuf; } ;
struct spi_transfer {scalar_t__ len; int rx_nbits; int tx_nbits; } ;


 int GQSPI_CFG_MODE_EN_MASK ;
 int GQSPI_CONFIG_OFST ;
 int GQSPI_GENFIFO_DATA_XFER ;
 int GQSPI_GENFIFO_RX ;
 int GQSPI_GENFIFO_TX ;
 scalar_t__ GQSPI_MODE_DMA ;
 scalar_t__ GQSPI_MODE_IO ;
 int GQSPI_TXD_DEPTH ;
 int zynq_qspi_setuprxdma (struct zynqmp_qspi*) ;
 int zynqmp_gqspi_read (struct zynqmp_qspi*,int ) ;
 int zynqmp_gqspi_write (struct zynqmp_qspi*,int ,int ) ;
 int zynqmp_qspi_filltxfifo (struct zynqmp_qspi*,int ) ;
 int zynqmp_qspi_selectspimode (struct zynqmp_qspi*,int ) ;

__attribute__((used)) static void zynqmp_qspi_txrxsetup(struct zynqmp_qspi *xqspi,
      struct spi_transfer *transfer,
      u32 *genfifoentry)
{
 u32 config_reg;


 if ((xqspi->txbuf != ((void*)0)) && (xqspi->rxbuf == ((void*)0))) {

  *genfifoentry &= ~GQSPI_GENFIFO_RX;
  *genfifoentry |= GQSPI_GENFIFO_DATA_XFER;
  *genfifoentry |= GQSPI_GENFIFO_TX;
  *genfifoentry |=
   zynqmp_qspi_selectspimode(xqspi, transfer->tx_nbits);
  xqspi->bytes_to_transfer = transfer->len;
  if (xqspi->mode == GQSPI_MODE_DMA) {
   config_reg = zynqmp_gqspi_read(xqspi,
       GQSPI_CONFIG_OFST);
   config_reg &= ~GQSPI_CFG_MODE_EN_MASK;
   zynqmp_gqspi_write(xqspi, GQSPI_CONFIG_OFST,
        config_reg);
   xqspi->mode = GQSPI_MODE_IO;
  }
  zynqmp_qspi_filltxfifo(xqspi, GQSPI_TXD_DEPTH);

  xqspi->bytes_to_receive = 0;
 } else if ((xqspi->txbuf == ((void*)0)) && (xqspi->rxbuf != ((void*)0))) {



  *genfifoentry &= ~GQSPI_GENFIFO_TX;

  *genfifoentry |= GQSPI_GENFIFO_DATA_XFER;
  *genfifoentry |= GQSPI_GENFIFO_RX;
  *genfifoentry |=
   zynqmp_qspi_selectspimode(xqspi, transfer->rx_nbits);
  xqspi->bytes_to_transfer = 0;
  xqspi->bytes_to_receive = transfer->len;
  zynq_qspi_setuprxdma(xqspi);
 }
}
