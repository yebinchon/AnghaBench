
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dev; } ;
typedef enum tx_start_condition { ____Placeholder_tx_start_condition } tx_start_condition ;


 int EINVAL ;
 int MASK_FIFO_THRESH_TXSTART ;
 int REG_FIFO_THRESH ;
 int dev_dbg (int *,char*) ;


 int rf69_clear_bit (struct spi_device*,int ,int ) ;
 int rf69_set_bit (struct spi_device*,int ,int ) ;

int rf69_set_tx_start_condition(struct spi_device *spi,
    enum tx_start_condition tx_start_condition)
{
 switch (tx_start_condition) {
 case 129:
  return rf69_clear_bit(spi, REG_FIFO_THRESH,
          MASK_FIFO_THRESH_TXSTART);
 case 128:
  return rf69_set_bit(spi, REG_FIFO_THRESH,
        MASK_FIFO_THRESH_TXSTART);
 default:
  dev_dbg(&spi->dev, "set: illegal input param");
  return -EINVAL;
 }
}
