
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7316_chip_info {int config3; int dac_config; } ;
typedef int ssize_t ;




 int ADT7316_DA_EN_MODE_MASK ;

 int ADT7316_DA_EN_VIA_DAC_LDAC ;
 struct iio_dev* dev_to_iio_dev (struct device*) ;
 struct adt7316_chip_info* iio_priv (struct iio_dev*) ;
 int sprintf (char*,char*) ;

__attribute__((used)) static ssize_t adt7316_show_DAC_update_mode(struct device *dev,
         struct device_attribute *attr,
         char *buf)
{
 struct iio_dev *dev_info = dev_to_iio_dev(dev);
 struct adt7316_chip_info *chip = iio_priv(dev_info);

 if (!(chip->config3 & ADT7316_DA_EN_VIA_DAC_LDAC))
  return sprintf(buf, "manual\n");

 switch (chip->dac_config & ADT7316_DA_EN_MODE_MASK) {
 case 128:
  return sprintf(buf,
   "0 - auto at any MSB DAC writing\n");
 case 129:
  return sprintf(buf,
   "1 - auto at MSB DAC AB and CD writing\n");
 case 130:
  return sprintf(buf,
   "2 - auto at MSB DAC ABCD writing\n");
 default:
  return sprintf(buf, "3 - manual\n");
 }
}
