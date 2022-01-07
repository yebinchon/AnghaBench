
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct spi_device {int dummy; } ;


 int REG_PREAMBLE_LSB ;
 int REG_PREAMBLE_MSB ;
 int rf69_write_reg (struct spi_device*,int ,int) ;

int rf69_set_preamble_length(struct spi_device *spi, u16 preamble_length)
{
 int retval;
 u8 msb, lsb;




 msb = (preamble_length & 0xff00) >> 8;
 lsb = (preamble_length & 0xff);


 retval = rf69_write_reg(spi, REG_PREAMBLE_MSB, msb);
 if (retval)
  return retval;
 return rf69_write_reg(spi, REG_PREAMBLE_LSB, lsb);
}
