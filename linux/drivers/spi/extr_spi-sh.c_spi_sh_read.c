
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_sh_data {int width; scalar_t__ addr; } ;


 unsigned long ioread32 (scalar_t__) ;
 unsigned long ioread8 (scalar_t__) ;

__attribute__((used)) static unsigned long spi_sh_read(struct spi_sh_data *ss, unsigned long offset)
{
 if (ss->width == 8)
  return ioread8(ss->addr + (offset >> 2));
 else if (ss->width == 32)
  return ioread32(ss->addr + offset);
 else
  return 0;
}
