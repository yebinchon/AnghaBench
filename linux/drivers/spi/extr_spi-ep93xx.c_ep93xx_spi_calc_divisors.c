
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef unsigned long u32 ;
struct spi_master {int max_speed_hz; int min_speed_hz; } ;
struct ep93xx_spi {int clk; } ;


 int EINVAL ;
 unsigned long clamp (unsigned long,int ,int ) ;
 unsigned long clk_get_rate (int ) ;
 struct ep93xx_spi* spi_master_get_devdata (struct spi_master*) ;

__attribute__((used)) static int ep93xx_spi_calc_divisors(struct spi_master *master,
        u32 rate, u8 *div_cpsr, u8 *div_scr)
{
 struct ep93xx_spi *espi = spi_master_get_devdata(master);
 unsigned long spi_clk_rate = clk_get_rate(espi->clk);
 int cpsr, scr;





 rate = clamp(rate, master->min_speed_hz, master->max_speed_hz);
 for (cpsr = 2; cpsr <= 254; cpsr += 2) {
  for (scr = 0; scr <= 255; scr++) {
   if ((spi_clk_rate / (cpsr * (scr + 1))) <= rate) {
    *div_scr = (u8)scr;
    *div_cpsr = (u8)cpsr;
    return 0;
   }
  }
 }

 return -EINVAL;
}
