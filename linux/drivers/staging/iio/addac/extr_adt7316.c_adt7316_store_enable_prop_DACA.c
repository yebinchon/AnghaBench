
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int (* write ) (int ,int ,int) ;int client; } ;
struct adt7316_chip_info {int config3; TYPE_1__ bus; } ;
typedef size_t ssize_t ;


 int ADT7316_CONFIG3 ;
 int ADT7316_EN_IN_TEMP_PROP_DACA ;
 size_t EIO ;
 struct iio_dev* dev_to_iio_dev (struct device*) ;
 struct adt7316_chip_info* iio_priv (struct iio_dev*) ;
 int stub1 (int ,int ,int) ;

__attribute__((used)) static ssize_t adt7316_store_enable_prop_DACA(struct device *dev,
           struct device_attribute *attr,
           const char *buf,
           size_t len)
{
 struct iio_dev *dev_info = dev_to_iio_dev(dev);
 struct adt7316_chip_info *chip = iio_priv(dev_info);
 u8 config3;
 int ret;

 config3 = chip->config3 & (~ADT7316_EN_IN_TEMP_PROP_DACA);
 if (buf[0] == '1')
  config3 |= ADT7316_EN_IN_TEMP_PROP_DACA;

 ret = chip->bus.write(chip->bus.client, ADT7316_CONFIG3, config3);
 if (ret)
  return -EIO;

 chip->config3 = config3;

 return len;
}
