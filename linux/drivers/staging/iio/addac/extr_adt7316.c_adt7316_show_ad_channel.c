
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7316_chip_info {int config2; int id; int config1; } ;
typedef int ssize_t ;




 int ADT7316_AD_SINGLE_CH_MODE ;




 int ADT7516_AD_SINGLE_CH_MASK ;
 int ADT7516_SEL_AIN1_2_EX_TEMP_MASK ;
 int ADT7516_SEL_AIN3 ;
 int EPERM ;
 int ID_ADT75XX ;
 int ID_FAMILY_MASK ;
 struct iio_dev* dev_to_iio_dev (struct device*) ;
 struct adt7316_chip_info* iio_priv (struct iio_dev*) ;
 int sprintf (char*,char*) ;

__attribute__((used)) static ssize_t adt7316_show_ad_channel(struct device *dev,
           struct device_attribute *attr,
           char *buf)
{
 struct iio_dev *dev_info = dev_to_iio_dev(dev);
 struct adt7316_chip_info *chip = iio_priv(dev_info);

 if (!(chip->config2 & ADT7316_AD_SINGLE_CH_MODE))
  return -EPERM;

 switch (chip->config2 & ADT7516_AD_SINGLE_CH_MASK) {
 case 131:
  return sprintf(buf, "0 - VDD\n");
 case 132:
  return sprintf(buf, "1 - Internal Temperature\n");
 case 133:
  if (((chip->id & ID_FAMILY_MASK) == ID_ADT75XX) &&
      (chip->config1 & ADT7516_SEL_AIN1_2_EX_TEMP_MASK) == 0)
   return sprintf(buf, "2 - AIN1\n");

  return sprintf(buf, "2 - External Temperature\n");
 case 130:
  if ((chip->config1 & ADT7516_SEL_AIN1_2_EX_TEMP_MASK) == 0)
   return sprintf(buf, "3 - AIN2\n");

  return sprintf(buf, "N/A\n");
 case 129:
  if (chip->config1 & ADT7516_SEL_AIN3)
   return sprintf(buf, "4 - AIN3\n");

  return sprintf(buf, "N/A\n");
 case 128:
  return sprintf(buf, "5 - AIN4\n");
 default:
  return sprintf(buf, "N/A\n");
 }
}
