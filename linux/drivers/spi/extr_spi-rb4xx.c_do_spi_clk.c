
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rb4xx_spi {int dummy; } ;


 int AR71XX_SPI_IOC_CLK ;
 int AR71XX_SPI_IOC_DO ;
 int AR71XX_SPI_REG_IOC ;
 int BIT (int ) ;
 int rb4xx_write (struct rb4xx_spi*,int ,int) ;

__attribute__((used)) static inline void do_spi_clk(struct rb4xx_spi *rbspi, u32 spi_ioc, int value)
{
 u32 regval;

 regval = spi_ioc;
 if (value & BIT(0))
  regval |= AR71XX_SPI_IOC_DO;

 rb4xx_write(rbspi, AR71XX_SPI_REG_IOC, regval);
 rb4xx_write(rbspi, AR71XX_SPI_REG_IOC, regval | AR71XX_SPI_IOC_CLK);
}
