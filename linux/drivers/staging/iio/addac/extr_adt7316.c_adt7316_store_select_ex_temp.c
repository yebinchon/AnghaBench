
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
struct adt7316_chip_info {int id; int config1; TYPE_1__ bus; } ;
typedef size_t ssize_t ;


 int ADT7316_CONFIG1 ;
 int ADT7516_SEL_EX_TEMP ;
 size_t EIO ;
 size_t EPERM ;
 int ID_ADT75XX ;
 int ID_FAMILY_MASK ;
 struct iio_dev* dev_to_iio_dev (struct device*) ;
 struct adt7316_chip_info* iio_priv (struct iio_dev*) ;
 int stub1 (int ,int ,int) ;

__attribute__((used)) static ssize_t adt7316_store_select_ex_temp(struct device *dev,
         struct device_attribute *attr,
         const char *buf,
         size_t len)
{
 struct iio_dev *dev_info = dev_to_iio_dev(dev);
 struct adt7316_chip_info *chip = iio_priv(dev_info);
 u8 config1;
 int ret;

 if ((chip->id & ID_FAMILY_MASK) != ID_ADT75XX)
  return -EPERM;

 config1 = chip->config1 & (~ADT7516_SEL_EX_TEMP);
 if (buf[0] == '1')
  config1 |= ADT7516_SEL_EX_TEMP;

 ret = chip->bus.write(chip->bus.client, ADT7316_CONFIG1, config1);
 if (ret)
  return -EIO;

 chip->config1 = config1;

 return len;
}
