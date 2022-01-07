
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7316_chip_info {int dummy; } ;
typedef int ssize_t ;


 int adt7316_store_DAC (struct adt7316_chip_info*,int,char const*,size_t) ;
 struct iio_dev* dev_to_iio_dev (struct device*) ;
 struct adt7316_chip_info* iio_priv (struct iio_dev*) ;

__attribute__((used)) static ssize_t adt7316_store_DAC_C(struct device *dev,
       struct device_attribute *attr,
       const char *buf,
       size_t len)
{
 struct iio_dev *dev_info = dev_to_iio_dev(dev);
 struct adt7316_chip_info *chip = iio_priv(dev_info);

 return adt7316_store_DAC(chip, 2, buf, len);
}
