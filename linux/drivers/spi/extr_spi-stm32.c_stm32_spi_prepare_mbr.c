
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm32_spi {int clk_rate; int cur_speed; } ;


 int DIV_ROUND_UP (int,int) ;
 int EINVAL ;
 int fls (int) ;

__attribute__((used)) static int stm32_spi_prepare_mbr(struct stm32_spi *spi, u32 speed_hz,
     u32 min_div, u32 max_div)
{
 u32 div, mbrdiv;

 div = DIV_ROUND_UP(spi->clk_rate, speed_hz);
 if ((div < min_div) || (div > max_div))
  return -EINVAL;


 if (div & (div - 1))
  mbrdiv = fls(div);
 else
  mbrdiv = fls(div) - 1;

 spi->cur_speed = spi->clk_rate / (1 << mbrdiv);

 return mbrdiv - 1;
}
