
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lantiq_ssc_spi {int dummy; } ;


 int LTQ_SPI_TXFCON ;
 int LTQ_SPI_TXFCON_TXFEN ;
 int LTQ_SPI_TXFCON_TXFITL_S ;
 int LTQ_SPI_TXFCON_TXFLU ;
 int lantiq_ssc_writel (struct lantiq_ssc_spi const*,int,int ) ;

__attribute__((used)) static void tx_fifo_reset(const struct lantiq_ssc_spi *spi)
{
 u32 val = 1 << LTQ_SPI_TXFCON_TXFITL_S;

 val |= LTQ_SPI_TXFCON_TXFEN | LTQ_SPI_TXFCON_TXFLU;
 lantiq_ssc_writel(spi, val, LTQ_SPI_TXFCON);
}
