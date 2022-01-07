
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_sh_data {int dummy; } ;


 unsigned long spi_sh_read (struct spi_sh_data*,unsigned long) ;
 int spi_sh_write (struct spi_sh_data*,unsigned long,unsigned long) ;

__attribute__((used)) static void spi_sh_set_bit(struct spi_sh_data *ss, unsigned long val,
    unsigned long offset)
{
 unsigned long tmp;

 tmp = spi_sh_read(ss, offset);
 tmp |= val;
 spi_sh_write(ss, tmp, offset);
}
