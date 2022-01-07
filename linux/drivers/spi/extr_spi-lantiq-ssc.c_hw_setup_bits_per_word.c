
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct lantiq_ssc_spi {int dummy; } ;


 int LTQ_SPI_CON ;
 int LTQ_SPI_CON_BM_M ;
 unsigned int LTQ_SPI_CON_BM_S ;
 int lantiq_ssc_maskl (struct lantiq_ssc_spi const*,int ,unsigned int,int ) ;

__attribute__((used)) static void hw_setup_bits_per_word(const struct lantiq_ssc_spi *spi,
       unsigned int bits_per_word)
{
 u32 bm;


 bm = (bits_per_word - 1) << LTQ_SPI_CON_BM_S;

 lantiq_ssc_maskl(spi, LTQ_SPI_CON_BM_M, bm, LTQ_SPI_CON);
}
