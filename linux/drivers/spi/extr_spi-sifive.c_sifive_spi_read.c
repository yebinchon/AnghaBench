
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sifive_spi {scalar_t__ regs; } ;


 int ioread32 (scalar_t__) ;

__attribute__((used)) static u32 sifive_spi_read(struct sifive_spi *spi, int offset)
{
 return ioread32(spi->regs + offset);
}
