
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7316_chip_info {int config3; scalar_t__ id; } ;
typedef int ssize_t ;


 int ADT7316_DA_HIGH_RESOLUTION ;
 scalar_t__ ID_ADT7318 ;
 scalar_t__ ID_ADT7519 ;
 struct iio_dev* dev_to_iio_dev (struct device*) ;
 struct adt7316_chip_info* iio_priv (struct iio_dev*) ;
 int sprintf (char*,char*) ;

__attribute__((used)) static ssize_t adt7316_show_da_high_resolution(struct device *dev,
            struct device_attribute *attr,
            char *buf)
{
 struct iio_dev *dev_info = dev_to_iio_dev(dev);
 struct adt7316_chip_info *chip = iio_priv(dev_info);

 if (chip->config3 & ADT7316_DA_HIGH_RESOLUTION) {
  if (chip->id != ID_ADT7318 && chip->id != ID_ADT7519)
   return sprintf(buf, "1 (10 bits)\n");
 }

 return sprintf(buf, "0 (8 bits)\n");
}
