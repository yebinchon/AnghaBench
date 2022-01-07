
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_message {int dummy; } ;
struct spi_master {int dummy; } ;
struct lantiq_ssc_spi {int dummy; } ;


 int rx_fifo_flush (struct lantiq_ssc_spi*) ;
 struct lantiq_ssc_spi* spi_master_get_devdata (struct spi_master*) ;
 int tx_fifo_flush (struct lantiq_ssc_spi*) ;

__attribute__((used)) static void lantiq_ssc_handle_err(struct spi_master *master,
      struct spi_message *message)
{
 struct lantiq_ssc_spi *spi = spi_master_get_devdata(master);


 rx_fifo_flush(spi);
 tx_fifo_flush(spi);
}
