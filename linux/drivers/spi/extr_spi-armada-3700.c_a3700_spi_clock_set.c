
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct a3700_spi {int clk; } ;


 int A3700_SPI_CLK_CAPT_EDGE ;
 int A3700_SPI_CLK_EVEN_OFFS ;
 int A3700_SPI_CLK_PRESCALE_MASK ;
 int A3700_SPI_IF_CFG_REG ;
 int A3700_SPI_IF_TIME_REG ;
 int DIV_ROUND_UP (int,int) ;
 int clk_get_rate (int ) ;
 int spireg_read (struct a3700_spi*,int ) ;
 int spireg_write (struct a3700_spi*,int ,int) ;

__attribute__((used)) static void a3700_spi_clock_set(struct a3700_spi *a3700_spi,
    unsigned int speed_hz)
{
 u32 val;
 u32 prescale;

 prescale = DIV_ROUND_UP(clk_get_rate(a3700_spi->clk), speed_hz);





 if (prescale > 15)
  prescale = A3700_SPI_CLK_EVEN_OFFS + DIV_ROUND_UP(prescale, 2);

 val = spireg_read(a3700_spi, A3700_SPI_IF_CFG_REG);
 val = val & ~A3700_SPI_CLK_PRESCALE_MASK;

 val = val | (prescale & A3700_SPI_CLK_PRESCALE_MASK);
 spireg_write(a3700_spi, A3700_SPI_IF_CFG_REG, val);

 if (prescale <= 2) {
  val = spireg_read(a3700_spi, A3700_SPI_IF_TIME_REG);
  val |= A3700_SPI_CLK_CAPT_EDGE;
  spireg_write(a3700_spi, A3700_SPI_IF_TIME_REG, val);
 }
}
