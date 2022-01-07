
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct davinci_spi {int prescaler_limit; int clk; } ;


 int DIV_ROUND_UP (int ,int ) ;
 int EINVAL ;
 int clk_get_rate (int ) ;

__attribute__((used)) static inline int davinci_spi_get_prescale(struct davinci_spi *dspi,
       u32 max_speed_hz)
{
 int ret;


 ret = DIV_ROUND_UP(clk_get_rate(dspi->clk), max_speed_hz) - 1;

 if (ret < dspi->prescaler_limit || ret > 255)
  return -EINVAL;

 return ret;
}
