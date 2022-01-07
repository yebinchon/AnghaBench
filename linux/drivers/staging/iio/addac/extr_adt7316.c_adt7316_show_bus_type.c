
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int (* read ) (int ,int ,scalar_t__*) ;int client; } ;
struct adt7316_chip_info {TYPE_1__ bus; } ;
typedef int ssize_t ;


 int ADT7316_SPI_LOCK_STAT ;
 int EIO ;
 struct iio_dev* dev_to_iio_dev (struct device*) ;
 struct adt7316_chip_info* iio_priv (struct iio_dev*) ;
 int sprintf (char*,char*) ;
 int stub1 (int ,int ,scalar_t__*) ;

__attribute__((used)) static ssize_t adt7316_show_bus_type(struct device *dev,
         struct device_attribute *attr,
         char *buf)
{
 struct iio_dev *dev_info = dev_to_iio_dev(dev);
 struct adt7316_chip_info *chip = iio_priv(dev_info);
 u8 stat;
 int ret;

 ret = chip->bus.read(chip->bus.client, ADT7316_SPI_LOCK_STAT, &stat);
 if (ret)
  return -EIO;

 if (stat)
  return sprintf(buf, "spi\n");

 return sprintf(buf, "i2c\n");
}
