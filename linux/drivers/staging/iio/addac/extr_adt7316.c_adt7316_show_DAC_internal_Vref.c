
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7316_chip_info {int id; int ldac_config; } ;
typedef int ssize_t ;


 int ADT7316_DAC_IN_VREF ;
 int ADT7516_DAC_IN_VREF_MASK ;
 int ADT7516_DAC_IN_VREF_OFFSET ;
 int ID_ADT75XX ;
 int ID_FAMILY_MASK ;
 struct iio_dev* dev_to_iio_dev (struct device*) ;
 struct adt7316_chip_info* iio_priv (struct iio_dev*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t adt7316_show_DAC_internal_Vref(struct device *dev,
           struct device_attribute *attr,
           char *buf)
{
 struct iio_dev *dev_info = dev_to_iio_dev(dev);
 struct adt7316_chip_info *chip = iio_priv(dev_info);

 if ((chip->id & ID_FAMILY_MASK) == ID_ADT75XX)
  return sprintf(buf, "0x%x\n",
   (chip->ldac_config & ADT7516_DAC_IN_VREF_MASK) >>
   ADT7516_DAC_IN_VREF_OFFSET);
 return sprintf(buf, "%d\n",
         !!(chip->ldac_config & ADT7316_DAC_IN_VREF));
}
