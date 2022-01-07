
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct spi_device {int dev; } ;


 int EINVAL ;
 int FDEVMASB_MASK ;
 int F_OSC ;
 int REG_FDEV_LSB ;
 int REG_FDEV_MSB ;
 int dev_dbg (int *,char*) ;
 int do_div (int,int) ;
 int rf69_write_reg (struct spi_device*,int ,int) ;

int rf69_set_deviation(struct spi_device *spi, u32 deviation)
{
 int retval;
 u64 f_reg;
 u64 f_step;
 u8 msb;
 u8 lsb;
 u64 factor = 1000000;


 if (deviation < 600 || deviation > 500000) {
  dev_dbg(&spi->dev, "set_deviation: illegal input param");
  return -EINVAL;
 }


 f_step = F_OSC * factor;
 do_div(f_step, 524288);


 f_reg = deviation * factor;
 do_div(f_reg, f_step);

 msb = (f_reg & 0xff00) >> 8;
 lsb = (f_reg & 0xff);


 if (msb & ~FDEVMASB_MASK) {
  dev_dbg(&spi->dev, "set_deviation: err in calc of msb");
  return -EINVAL;
 }


 retval = rf69_write_reg(spi, REG_FDEV_MSB, msb);
 if (retval)
  return retval;
 retval = rf69_write_reg(spi, REG_FDEV_LSB, lsb);
 if (retval)
  return retval;

 return 0;
}
