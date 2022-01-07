
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct rspi_data {TYPE_1__* ctlr; } ;
struct TYPE_2__ {int dev; } ;


 int dev_err (int *,char*) ;
 int qspi_set_receive_trigger (struct rspi_data*,unsigned int) ;
 unsigned int qspi_set_send_trigger (struct rspi_data*,unsigned int) ;
 int rspi_read_data (struct rspi_data*) ;
 int rspi_wait_for_rx_full (struct rspi_data*) ;
 int rspi_wait_for_tx_empty (struct rspi_data*) ;
 int rspi_write_data (struct rspi_data*,int ) ;

__attribute__((used)) static int qspi_trigger_transfer_out_in(struct rspi_data *rspi, const u8 *tx,
     u8 *rx, unsigned int len)
{
 unsigned int i, n;
 int ret;

 while (len > 0) {
  n = qspi_set_send_trigger(rspi, len);
  qspi_set_receive_trigger(rspi, len);
  ret = rspi_wait_for_tx_empty(rspi);
  if (ret < 0) {
   dev_err(&rspi->ctlr->dev, "transmit timeout\n");
   return ret;
  }
  for (i = 0; i < n; i++)
   rspi_write_data(rspi, *tx++);

  ret = rspi_wait_for_rx_full(rspi);
  if (ret < 0) {
   dev_err(&rspi->ctlr->dev, "receive timeout\n");
   return ret;
  }
  for (i = 0; i < n; i++)
   *rx++ = rspi_read_data(rspi);

  len -= n;
 }

 return 0;
}
