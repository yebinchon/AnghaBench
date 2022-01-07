
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xlp_spi_priv {int done; int cs; int rxerrors; scalar_t__ rx_len; int txerrors; scalar_t__ tx_len; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int XLP_SPI_RX_INT ;
 int XLP_SPI_RX_OF ;
 int XLP_SPI_STATUS ;
 int XLP_SPI_STAT_MASK ;
 int XLP_SPI_TX_INT ;
 int XLP_SPI_TX_UF ;
 int XLP_SPI_XFR_DONE ;
 int complete (int *) ;
 int xlp_spi_fill_txfifo (struct xlp_spi_priv*) ;
 int xlp_spi_read_rxfifo (struct xlp_spi_priv*) ;
 int xlp_spi_reg_read (struct xlp_spi_priv*,int ,int ) ;
 int xlp_spi_reg_write (struct xlp_spi_priv*,int ,int ,int) ;

__attribute__((used)) static irqreturn_t xlp_spi_interrupt(int irq, void *dev_id)
{
 struct xlp_spi_priv *xspi = dev_id;
 u32 stat;

 stat = xlp_spi_reg_read(xspi, xspi->cs, XLP_SPI_STATUS) &
  XLP_SPI_STAT_MASK;
 if (!stat)
  return IRQ_NONE;

 if (stat & XLP_SPI_TX_INT) {
  if (xspi->tx_len)
   xlp_spi_fill_txfifo(xspi);
  if (stat & XLP_SPI_TX_UF)
   xspi->txerrors++;
 }

 if (stat & XLP_SPI_RX_INT) {
  if (xspi->rx_len)
   xlp_spi_read_rxfifo(xspi);
  if (stat & XLP_SPI_RX_OF)
   xspi->rxerrors++;
 }


 xlp_spi_reg_write(xspi, xspi->cs, XLP_SPI_STATUS, stat);
 if (stat & XLP_SPI_XFR_DONE)
  complete(&xspi->done);

 return IRQ_HANDLED;
}
