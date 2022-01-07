
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_qspi {int dev; } ;
struct spi_transfer {scalar_t__ rx_buf; scalar_t__ tx_buf; } ;


 int dev_dbg (int ,char*) ;
 int qspi_read_msg (struct ti_qspi*,struct spi_transfer*,int) ;
 int qspi_write_msg (struct ti_qspi*,struct spi_transfer*,int) ;

__attribute__((used)) static int qspi_transfer_msg(struct ti_qspi *qspi, struct spi_transfer *t,
        int count)
{
 int ret;

 if (t->tx_buf) {
  ret = qspi_write_msg(qspi, t, count);
  if (ret) {
   dev_dbg(qspi->dev, "Error while writing\n");
   return ret;
  }
 }

 if (t->rx_buf) {
  ret = qspi_read_msg(qspi, t, count);
  if (ret) {
   dev_dbg(qspi->dev, "Error while reading\n");
   return ret;
  }
 }

 return 0;
}
