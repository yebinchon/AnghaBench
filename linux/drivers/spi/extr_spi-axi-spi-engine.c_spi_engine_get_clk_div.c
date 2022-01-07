
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_transfer {int speed_hz; } ;
struct spi_engine {int ref_clk; } ;
struct spi_device {int dummy; } ;


 unsigned int DIV_ROUND_UP (int ,int) ;
 int clk_get_rate (int ) ;

__attribute__((used)) static unsigned int spi_engine_get_clk_div(struct spi_engine *spi_engine,
 struct spi_device *spi, struct spi_transfer *xfer)
{
 unsigned int clk_div;

 clk_div = DIV_ROUND_UP(clk_get_rate(spi_engine->ref_clk),
  xfer->speed_hz * 2);
 if (clk_div > 255)
  clk_div = 255;
 else if (clk_div > 0)
  clk_div -= 1;

 return clk_div;
}
