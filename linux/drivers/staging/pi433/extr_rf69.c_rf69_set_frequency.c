
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef scalar_t__ u32 ;
struct spi_device {int dev; } ;


 int EINVAL ;
 int F_OSC ;
 int REG_FRF_LSB ;
 int REG_FRF_MID ;
 int REG_FRF_MSB ;
 int dev_dbg (int *,char*) ;
 scalar_t__ div_u64 (int,int) ;
 int do_div (int,int) ;
 int rf69_write_reg (struct spi_device*,int ,int) ;

int rf69_set_frequency(struct spi_device *spi, u32 frequency)
{
 int retval;
 u32 f_max;
 u64 f_reg;
 u64 f_step;
 u8 msb;
 u8 mid;
 u8 lsb;
 u64 factor = 1000000;


 f_step = F_OSC * factor;
 do_div(f_step, 524288);


 f_max = div_u64(f_step * 8388608, factor);
 if (frequency > f_max) {
  dev_dbg(&spi->dev, "setFrequency: illegal input param");
  return -EINVAL;
 }


 f_reg = frequency * factor;
 do_div(f_reg, f_step);

 msb = (f_reg & 0xff0000) >> 16;
 mid = (f_reg & 0xff00) >> 8;
 lsb = (f_reg & 0xff);


 retval = rf69_write_reg(spi, REG_FRF_MSB, msb);
 if (retval)
  return retval;
 retval = rf69_write_reg(spi, REG_FRF_MID, mid);
 if (retval)
  return retval;
 retval = rf69_write_reg(spi, REG_FRF_LSB, lsb);
 if (retval)
  return retval;

 return 0;
}
