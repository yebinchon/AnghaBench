
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xlp_spi_priv {int* tx_buf; scalar_t__ tx_len; int cs; } ;


 int XLP_SPI_FIFO_SIZE ;
 int XLP_SPI_FIFO_WCNT ;
 int XLP_SPI_TXDATA_FIFO ;
 int XLP_SPI_TXFIFO_WCNT_MASK ;
 int XLP_SPI_TXFIFO_WCNT_SHIFT ;
 int min (scalar_t__,int) ;
 int xlp_spi_reg_read (struct xlp_spi_priv*,int ,int ) ;
 int xlp_spi_reg_write (struct xlp_spi_priv*,int ,int ,int) ;

__attribute__((used)) static void xlp_spi_fill_txfifo(struct xlp_spi_priv *xspi)
{
 u32 tx_data, txfifo_cnt;
 int i, j, nbytes;

 txfifo_cnt = xlp_spi_reg_read(xspi, xspi->cs, XLP_SPI_FIFO_WCNT);
 txfifo_cnt &= XLP_SPI_TXFIFO_WCNT_MASK;
 txfifo_cnt >>= XLP_SPI_TXFIFO_WCNT_SHIFT;
 while (xspi->tx_len && (txfifo_cnt < XLP_SPI_FIFO_SIZE)) {
  j = 0;
  tx_data = 0;
  nbytes = min(xspi->tx_len, 4);
  for (i = nbytes - 1; i >= 0; i--, j++)
   tx_data |= xspi->tx_buf[i] << (j * 8);

  xlp_spi_reg_write(xspi, xspi->cs, XLP_SPI_TXDATA_FIFO, tx_data);
  xspi->tx_len -= nbytes;
  xspi->tx_buf += nbytes;
  txfifo_cnt++;
 }
}
