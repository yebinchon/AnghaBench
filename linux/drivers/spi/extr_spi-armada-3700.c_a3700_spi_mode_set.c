
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct a3700_spi {int dummy; } ;


 int A3700_SPI_CLK_PHA ;
 int A3700_SPI_CLK_POL ;
 int A3700_SPI_IF_CFG_REG ;
 unsigned int SPI_CPHA ;
 unsigned int SPI_CPOL ;
 int spireg_read (struct a3700_spi*,int ) ;
 int spireg_write (struct a3700_spi*,int ,int ) ;

__attribute__((used)) static void a3700_spi_mode_set(struct a3700_spi *a3700_spi,
          unsigned int mode_bits)
{
 u32 val;

 val = spireg_read(a3700_spi, A3700_SPI_IF_CFG_REG);

 if (mode_bits & SPI_CPOL)
  val |= A3700_SPI_CLK_POL;
 else
  val &= ~A3700_SPI_CLK_POL;

 if (mode_bits & SPI_CPHA)
  val |= A3700_SPI_CLK_PHA;
 else
  val &= ~A3700_SPI_CLK_PHA;

 spireg_write(a3700_spi, A3700_SPI_IF_CFG_REG, val);
}
