
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sifive_spi {scalar_t__ regs; } ;


 int iowrite32 (int ,scalar_t__) ;

__attribute__((used)) static void sifive_spi_write(struct sifive_spi *spi, int offset, u32 value)
{
 iowrite32(value, spi->regs + offset);
}
