
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_sh_data {int width; scalar_t__ addr; } ;


 int iowrite32 (unsigned long,scalar_t__) ;
 int iowrite8 (unsigned long,scalar_t__) ;

__attribute__((used)) static void spi_sh_write(struct spi_sh_data *ss, unsigned long data,
        unsigned long offset)
{
 if (ss->width == 8)
  iowrite8(data, ss->addr + (offset >> 2));
 else if (ss->width == 32)
  iowrite32(data, ss->addr + offset);
}
