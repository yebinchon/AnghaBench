
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7316_chip_info {int config2; int id; } ;
typedef int ssize_t ;


 int ADT7316_AD_SINGLE_CH_MODE ;
 int EPERM ;
 int ID_ADT75XX ;
 int ID_FAMILY_MASK ;
 struct iio_dev* dev_to_iio_dev (struct device*) ;
 struct adt7316_chip_info* iio_priv (struct iio_dev*) ;
 int sprintf (char*,char*) ;

__attribute__((used)) static ssize_t adt7316_show_all_ad_channels(struct device *dev,
         struct device_attribute *attr,
         char *buf)
{
 struct iio_dev *dev_info = dev_to_iio_dev(dev);
 struct adt7316_chip_info *chip = iio_priv(dev_info);

 if (!(chip->config2 & ADT7316_AD_SINGLE_CH_MODE))
  return -EPERM;

 if ((chip->id & ID_FAMILY_MASK) == ID_ADT75XX)
  return sprintf(buf, "0 - VDD\n1 - Internal Temperature\n"
    "2 - External Temperature or AIN1\n"
    "3 - AIN2\n4 - AIN3\n5 - AIN4\n");
 return sprintf(buf, "0 - VDD\n1 - Internal Temperature\n"
   "2 - External Temperature\n");
}
