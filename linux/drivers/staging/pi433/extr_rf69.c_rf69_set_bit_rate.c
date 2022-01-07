
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct spi_device {int dev; } ;


 int EINVAL ;
 int F_OSC ;
 int REG_BITRATE_LSB ;
 int REG_BITRATE_MSB ;
 int dev_dbg (int *,char*) ;
 int rf69_write_reg (struct spi_device*,int ,int) ;

int rf69_set_bit_rate(struct spi_device *spi, u16 bit_rate)
{
 int retval;
 u32 bit_rate_min;
 u32 bit_rate_reg;
 u8 msb;
 u8 lsb;


 bit_rate_min = F_OSC / 8388608;
 if (bit_rate < bit_rate_min) {
  dev_dbg(&spi->dev, "setBitRate: illegal input param");
  return -EINVAL;
 }


 bit_rate_reg = (F_OSC / bit_rate);

 msb = (bit_rate_reg & 0xff00) >> 8;
 lsb = (bit_rate_reg & 0xff);


 retval = rf69_write_reg(spi, REG_BITRATE_MSB, msb);
 if (retval)
  return retval;
 retval = rf69_write_reg(spi, REG_BITRATE_LSB, lsb);
 if (retval)
  return retval;

 return 0;
}
