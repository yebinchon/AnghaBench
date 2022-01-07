
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;


 int MASK_SYNC_CONFIG_SYNC_ON ;
 int REG_SYNC_CONFIG ;
 int rf69_set_bit (struct spi_device*,int ,int ) ;

int rf69_enable_sync(struct spi_device *spi)
{
 return rf69_set_bit(spi, REG_SYNC_CONFIG, MASK_SYNC_CONFIG_SYNC_ON);
}
