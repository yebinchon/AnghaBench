
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_transfer {int len; int rx_buf; int tx_buf; } ;
struct rspi_data {int dummy; } ;


 int EAGAIN ;
 int rspi_dma_check_then_transfer (struct rspi_data*,struct spi_transfer*) ;
 int rspi_pio_transfer (struct rspi_data*,int ,int ,int ) ;
 int rspi_wait_for_tx_empty (struct rspi_data*) ;

__attribute__((used)) static int rspi_common_transfer(struct rspi_data *rspi,
    struct spi_transfer *xfer)
{
 int ret;

 ret = rspi_dma_check_then_transfer(rspi, xfer);
 if (ret != -EAGAIN)
  return ret;

 ret = rspi_pio_transfer(rspi, xfer->tx_buf, xfer->rx_buf, xfer->len);
 if (ret < 0)
  return ret;


 rspi_wait_for_tx_empty(rspi);

 return 0;
}
