
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm32_spi {int fifo_size; int cur_bpw; } ;



__attribute__((used)) static u32 stm32h7_spi_prepare_fthlv(struct stm32_spi *spi)
{
 u32 fthlv, half_fifo;


 half_fifo = (spi->fifo_size / 2);

 if (spi->cur_bpw <= 8)
  fthlv = half_fifo;
 else if (spi->cur_bpw <= 16)
  fthlv = half_fifo / 2;
 else
  fthlv = half_fifo / 4;


 if (spi->cur_bpw > 8)
  fthlv -= (fthlv % 2);
 else
  fthlv -= (fthlv % 4);

 return fthlv;
}
