
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_transfer {int len; int rx_buf; int tx_buf; } ;
struct rspi_data {int dummy; } ;


 int EAGAIN ;
 int qspi_receive_init (struct rspi_data*) ;
 int qspi_trigger_transfer_out_in (struct rspi_data*,int ,int ,int ) ;
 int rspi_dma_check_then_transfer (struct rspi_data*,struct spi_transfer*) ;

__attribute__((used)) static int qspi_transfer_out_in(struct rspi_data *rspi,
    struct spi_transfer *xfer)
{
 int ret;

 qspi_receive_init(rspi);

 ret = rspi_dma_check_then_transfer(rspi, xfer);
 if (ret != -EAGAIN)
  return ret;

 return qspi_trigger_transfer_out_in(rspi, xfer->tx_buf,
         xfer->rx_buf, xfer->len);
}
