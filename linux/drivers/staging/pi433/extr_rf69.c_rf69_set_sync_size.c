
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_device {int dev; } ;


 int EINVAL ;
 int MASK_SYNC_CONFIG_SYNC_SIZE ;
 int REG_SYNC_CONFIG ;
 int dev_dbg (int *,char*) ;
 int rf69_read_mod_write (struct spi_device*,int ,int ,int) ;

int rf69_set_sync_size(struct spi_device *spi, u8 sync_size)
{

 if (sync_size > 0x07) {
  dev_dbg(&spi->dev, "set: illegal input param");
  return -EINVAL;
 }


 return rf69_read_mod_write(spi, REG_SYNC_CONFIG,
       MASK_SYNC_CONFIG_SYNC_SIZE,
       (sync_size << 3));
}
