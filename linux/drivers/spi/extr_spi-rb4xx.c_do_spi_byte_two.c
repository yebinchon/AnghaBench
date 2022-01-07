
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct rb4xx_spi {int dummy; } ;


 int do_spi_clk_two (struct rb4xx_spi*,int ,int) ;

__attribute__((used)) static void do_spi_byte_two(struct rb4xx_spi *rbspi, u32 spi_ioc, u8 byte)
{
 do_spi_clk_two(rbspi, spi_ioc, byte >> 6);
 do_spi_clk_two(rbspi, spi_ioc, byte >> 4);
 do_spi_clk_two(rbspi, spi_ioc, byte >> 2);
 do_spi_clk_two(rbspi, spi_ioc, byte >> 0);
}
