
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct a3700_spi {int dummy; } ;


 int A3700_SPI_AUTO_CS ;
 int A3700_SPI_IF_CFG_REG ;
 int spireg_read (struct a3700_spi*,int ) ;
 int spireg_write (struct a3700_spi*,int ,int ) ;

__attribute__((used)) static void a3700_spi_auto_cs_unset(struct a3700_spi *a3700_spi)
{
 u32 val;

 val = spireg_read(a3700_spi, A3700_SPI_IF_CFG_REG);
 val &= ~A3700_SPI_AUTO_CS;
 spireg_write(a3700_spi, A3700_SPI_IF_CFG_REG, val);
}
