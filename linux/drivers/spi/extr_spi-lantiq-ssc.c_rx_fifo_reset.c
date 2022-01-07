
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lantiq_ssc_spi {int rx_fifo_size; } ;


 int LTQ_SPI_RXFCON ;
 int LTQ_SPI_RXFCON_RXFEN ;
 int LTQ_SPI_RXFCON_RXFITL_S ;
 int LTQ_SPI_RXFCON_RXFLU ;
 int lantiq_ssc_writel (struct lantiq_ssc_spi const*,int,int ) ;

__attribute__((used)) static void rx_fifo_reset(const struct lantiq_ssc_spi *spi)
{
 u32 val = spi->rx_fifo_size << LTQ_SPI_RXFCON_RXFITL_S;

 val |= LTQ_SPI_RXFCON_RXFEN | LTQ_SPI_RXFCON_RXFLU;
 lantiq_ssc_writel(spi, val, LTQ_SPI_RXFCON);
}
