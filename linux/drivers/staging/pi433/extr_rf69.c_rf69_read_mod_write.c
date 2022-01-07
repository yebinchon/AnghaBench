
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_device {int dummy; } ;


 int rf69_read_reg (struct spi_device*,int) ;
 int rf69_write_reg (struct spi_device*,int,int) ;

__attribute__((used)) static inline int rf69_read_mod_write(struct spi_device *spi, u8 reg,
          u8 mask, u8 value)
{
 u8 tmp;

 tmp = rf69_read_reg(spi, reg);
 tmp = (tmp & ~mask) | value;
 return rf69_write_reg(spi, reg, tmp);
}
