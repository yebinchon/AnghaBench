
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_device {int dev; } ;


 int EINVAL ;
 int MASK_FIFO_THRESH_VALUE ;
 int REG_FIFO_THRESH ;
 int dev_dbg (int *,char*) ;
 int rf69_read_fifo (struct spi_device*,int*,int) ;
 int rf69_read_mod_write (struct spi_device*,int ,int ,int) ;

int rf69_set_fifo_threshold(struct spi_device *spi, u8 threshold)
{
 int retval;


 if (threshold & 0x80) {
  dev_dbg(&spi->dev, "set: illegal input param");
  return -EINVAL;
 }


 retval = rf69_read_mod_write(spi, REG_FIFO_THRESH,
         MASK_FIFO_THRESH_VALUE,
         threshold);
 if (retval)
  return retval;





 return rf69_read_fifo(spi, (u8 *)&retval, 1);
}
