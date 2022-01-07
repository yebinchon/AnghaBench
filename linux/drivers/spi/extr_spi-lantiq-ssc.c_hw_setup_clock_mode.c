
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lantiq_ssc_spi {int dummy; } ;


 int LTQ_SPI_CON ;
 int LTQ_SPI_CON_HB ;
 int LTQ_SPI_CON_IDLE ;
 int LTQ_SPI_CON_LB ;
 int LTQ_SPI_CON_PH ;
 int LTQ_SPI_CON_PO ;
 unsigned int SPI_CPHA ;
 unsigned int SPI_CPOL ;
 unsigned int SPI_LOOP ;
 unsigned int SPI_LSB_FIRST ;
 int lantiq_ssc_maskl (struct lantiq_ssc_spi const*,int,int,int ) ;

__attribute__((used)) static void hw_setup_clock_mode(const struct lantiq_ssc_spi *spi,
    unsigned int mode)
{
 u32 con_set = 0, con_clr = 0;
 if (mode & SPI_CPHA)
  con_clr |= LTQ_SPI_CON_PH;
 else
  con_set |= LTQ_SPI_CON_PH;

 if (mode & SPI_CPOL)
  con_set |= LTQ_SPI_CON_PO | LTQ_SPI_CON_IDLE;
 else
  con_clr |= LTQ_SPI_CON_PO | LTQ_SPI_CON_IDLE;


 if (mode & SPI_LSB_FIRST)
  con_clr |= LTQ_SPI_CON_HB;
 else
  con_set |= LTQ_SPI_CON_HB;


 if (mode & SPI_LOOP)
  con_set |= LTQ_SPI_CON_LB;
 else
  con_clr |= LTQ_SPI_CON_LB;

 lantiq_ssc_maskl(spi, con_clr, con_set, LTQ_SPI_CON);
}
