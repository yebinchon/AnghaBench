
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lantiq_ssc_spi {int dummy; } ;


 int LTQ_SPI_TXFCON ;
 int LTQ_SPI_TXFCON_TXFLU ;
 int lantiq_ssc_maskl (struct lantiq_ssc_spi const*,int ,int ,int ) ;

__attribute__((used)) static void tx_fifo_flush(const struct lantiq_ssc_spi *spi)
{
 lantiq_ssc_maskl(spi, 0, LTQ_SPI_TXFCON_TXFLU, LTQ_SPI_TXFCON);
}
