
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct a3700_spi {int dummy; } ;


 int A3700_SPI_IF_CTRL_REG ;
 int A3700_SPI_RFIFO_EMPTY ;
 int spireg_read (struct a3700_spi*,int ) ;

__attribute__((used)) static int a3700_is_rfifo_empty(struct a3700_spi *a3700_spi)
{
 u32 val = spireg_read(a3700_spi, A3700_SPI_IF_CTRL_REG);

 return (val & A3700_SPI_RFIFO_EMPTY);
}
