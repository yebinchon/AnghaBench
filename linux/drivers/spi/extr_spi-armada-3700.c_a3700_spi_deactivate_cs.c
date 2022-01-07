
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct a3700_spi {int dummy; } ;


 unsigned int A3700_SPI_EN ;
 int A3700_SPI_IF_CTRL_REG ;
 unsigned int spireg_read (struct a3700_spi*,int ) ;
 int spireg_write (struct a3700_spi*,int ,unsigned int) ;

__attribute__((used)) static void a3700_spi_deactivate_cs(struct a3700_spi *a3700_spi,
        unsigned int cs)
{
 u32 val;

 val = spireg_read(a3700_spi, A3700_SPI_IF_CTRL_REG);
 val &= ~(A3700_SPI_EN << cs);
 spireg_write(a3700_spi, A3700_SPI_IF_CTRL_REG, val);
}
