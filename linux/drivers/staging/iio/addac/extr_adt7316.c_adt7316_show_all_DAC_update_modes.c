
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7316_chip_info {int config3; } ;
typedef int ssize_t ;


 int ADT7316_DA_EN_VIA_DAC_LDAC ;
 struct iio_dev* dev_to_iio_dev (struct device*) ;
 struct adt7316_chip_info* iio_priv (struct iio_dev*) ;
 int sprintf (char*,char*) ;

__attribute__((used)) static ssize_t adt7316_show_all_DAC_update_modes(struct device *dev,
       struct device_attribute *attr,
       char *buf)
{
 struct iio_dev *dev_info = dev_to_iio_dev(dev);
 struct adt7316_chip_info *chip = iio_priv(dev_info);

 if (chip->config3 & ADT7316_DA_EN_VIA_DAC_LDAC)
  return sprintf(buf, "0 - auto at any MSB DAC writing\n"
    "1 - auto at MSB DAC AB and CD writing\n"
    "2 - auto at MSB DAC ABCD writing\n"
    "3 - manual\n");
 return sprintf(buf, "manual\n");
}
