
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7316_chip_info {int dac_config; } ;
typedef int ssize_t ;


 int ADT7316_DA_2VREF_CH_MASK ;
 struct iio_dev* dev_to_iio_dev (struct device*) ;
 struct adt7316_chip_info* iio_priv (struct iio_dev*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t adt7316_show_DAC_2Vref_ch_mask(struct device *dev,
           struct device_attribute *attr,
           char *buf)
{
 struct iio_dev *dev_info = dev_to_iio_dev(dev);
 struct adt7316_chip_info *chip = iio_priv(dev_info);

 return sprintf(buf, "0x%x\n",
  chip->dac_config & ADT7316_DA_2VREF_CH_MASK);
}
