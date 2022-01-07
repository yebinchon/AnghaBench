
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_message {int dummy; } ;
struct spi_master {int dummy; } ;
struct lantiq_ssc_spi {int wq; } ;


 int LTQ_SPI_CON ;
 int LTQ_SPI_CON_RXOFF ;
 int LTQ_SPI_CON_TXOFF ;
 int flush_workqueue (int ) ;
 int lantiq_ssc_maskl (struct lantiq_ssc_spi*,int ,int,int ) ;
 struct lantiq_ssc_spi* spi_master_get_devdata (struct spi_master*) ;

__attribute__((used)) static int lantiq_ssc_unprepare_message(struct spi_master *master,
     struct spi_message *message)
{
 struct lantiq_ssc_spi *spi = spi_master_get_devdata(master);

 flush_workqueue(spi->wq);


 lantiq_ssc_maskl(spi, 0, LTQ_SPI_CON_TXOFF | LTQ_SPI_CON_RXOFF,
    LTQ_SPI_CON);

 return 0;
}
