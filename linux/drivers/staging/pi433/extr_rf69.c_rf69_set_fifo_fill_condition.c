
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dev; } ;
typedef enum fifo_fill_condition { ____Placeholder_fifo_fill_condition } fifo_fill_condition ;


 int EINVAL ;
 int MASK_SYNC_CONFIG_FIFO_FILL_CONDITION ;
 int REG_SYNC_CONFIG ;


 int dev_dbg (int *,char*) ;
 int rf69_clear_bit (struct spi_device*,int ,int ) ;
 int rf69_set_bit (struct spi_device*,int ,int ) ;

int rf69_set_fifo_fill_condition(struct spi_device *spi,
     enum fifo_fill_condition fifo_fill_condition)
{
 switch (fifo_fill_condition) {
 case 128:
  return rf69_set_bit(spi, REG_SYNC_CONFIG,
        MASK_SYNC_CONFIG_FIFO_FILL_CONDITION);
 case 129:
  return rf69_clear_bit(spi, REG_SYNC_CONFIG,
          MASK_SYNC_CONFIG_FIFO_FILL_CONDITION);
 default:
  dev_dbg(&spi->dev, "set: illegal input param");
  return -EINVAL;
 }
}
